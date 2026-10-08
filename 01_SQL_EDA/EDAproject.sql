-- =========================================================
-- Layoffs Exploratory Data Analysis
-- =========================================================


-- 1. Initial Data Exploration
-- =========================================================

SELECT *
FROM layoffs_staging2;

SELECT
    MAX(total_laid_off) AS max_total_laid_off,
    MAX(percentage_laid_off) AS max_percentage_laid_off
FROM layoffs_staging2;


-- 2. Companies with 100% Layoffs
-- =========================================================

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;


-- 3. Total Layoffs by Company
-- =========================================================

SELECT
    company,
    SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY company
ORDER BY total_laid_off DESC;


-- 4. Total Funds Raised by Company
-- =========================================================

SELECT
    company,
    SUM(funds_raised_millions) AS total_funds_raised_millions
FROM layoffs_staging2
GROUP BY company
ORDER BY total_funds_raised_millions DESC;


-- 5. Date Range
-- =========================================================

SELECT
    MIN(`date`) AS first_layoff_date,
    MAX(`date`) AS last_layoff_date
FROM layoffs_staging2;


-- 6. Company-Specific Analysis
-- =========================================================

SELECT *
FROM layoffs_staging2
WHERE company = 'Twitter';


-- 7. Total Layoffs by Country
-- =========================================================

SELECT
    country,
    SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY country
ORDER BY total_laid_off DESC;


-- 8. Total Layoffs by Year
-- =========================================================

SELECT
    YEAR(`date`) AS year,
    SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY year DESC;


-- 9. Total Layoffs by Month
-- =========================================================

SELECT
    SUBSTRING(`date`, 1, 7) AS month,
    SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
WHERE `date` IS NOT NULL
GROUP BY month
ORDER BY total_laid_off DESC;


-- 10. Rolling Total of Layoffs
-- =========================================================

WITH Rolling_Total AS (
    SELECT
        SUBSTRING(`date`, 1, 7) AS month,
        SUM(total_laid_off) AS total
    FROM layoffs_staging2
    WHERE `date` IS NOT NULL
    GROUP BY month
)
SELECT
    month,
    total,
    SUM(total) OVER (ORDER BY month) AS rolling_total
FROM Rolling_Total;


-- 11. Top 5 Companies by Layoffs per Year
-- =========================================================

WITH Company_Year AS (
    SELECT
        company,
        YEAR(`date`) AS year,
        SUM(total_laid_off) AS total_laid_off
    FROM layoffs_staging2
    GROUP BY company, YEAR(`date`)
),
Company_Year_Rank AS (
    SELECT
        *,
        DENSE_RANK() OVER (
            PARTITION BY year
            ORDER BY total_laid_off DESC
        ) AS ranking
    FROM Company_Year
    WHERE year IS NOT NULL
)
SELECT *
FROM Company_Year_Rank
WHERE ranking <= 5;