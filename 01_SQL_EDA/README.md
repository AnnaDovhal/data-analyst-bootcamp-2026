# Exploratory Data Analysis of Global Layoffs — SQL

## Overview

This project contains an exploratory data analysis of a layoffs
dataset using SQL.

The analysis focuses on identifying patterns in layoffs across
companies, countries and time periods, as well as identifying
companies with the highest numbers of layoffs.

## Tools

- MySQL

## Dataset

The analysis is performed on the `layoffs_staging` table.

## Analysis

The project includes:

- Initial exploration of the dataset
- Maximum number and percentage of layoffs
- Companies with 100% workforce layoffs
- Total layoffs by company
- Total funds raised by company
- Dataset date range
- Company-specific analysis
- Total layoffs by country
- Total layoffs by year
- Total layoffs by month
- Rolling total of layoffs
- Top 5 companies by layoffs for each year

## SQL Techniques

The project demonstrates the use of:

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate functions
- CTEs
- Window functions
- DENSE_RANK()
- Rolling calculations
- Date and string functions

## Key Analytical Questions

1. What is the maximum number of layoffs recorded?
2. Which companies had 100% of their workforce laid off?
3. Which companies had the highest total number of layoffs?
4. Which countries experienced the highest number of layoffs?
5. How did layoffs change over time?
6. What is the cumulative number of layoffs over time?
7. Which companies had the highest layoffs in each year?

## Files

- `EDAproject.sql` — SQL queries used for the exploratory data analysis.
