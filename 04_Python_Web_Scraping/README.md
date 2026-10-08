# Web Scraping — Largest Companies in the United States

## Overview

This project demonstrates a basic web scraping workflow in Python.

The project collects data from the Wikipedia page **List of largest companies in the United States by revenue**, extracts the main company ranking table, and converts the scraped data into a pandas DataFrame.

The main goal of the project was to practice working with web pages, HTML parsing, and structured data extraction using Python.

## Dataset

The data is sourced directly from Wikipedia:

**List of largest companies in the United States by revenue**

The extracted table contains information about the largest companies, including:

* Rank
* Company Name
* Industry
* Revenue (USD millions)
* Revenue Growth
* Number of Employees
* Headquarters

The project extracts the table available on the source page at the time the notebook is run.

## Project Workflow

1. Imported the required Python libraries.
2. Defined the source Wikipedia URL.
3. Sent an HTTP request to download the page.
4. Parsed the HTML using BeautifulSoup.
5. Located the required HTML table.
6. Extracted the table headers.
7. Created a pandas DataFrame.
8. Extracted each table row from the HTML.
9. Added the scraped records to the DataFrame.
10. Verified the resulting dataset structure.

## Tools & Technologies

* Python
* Requests
* BeautifulSoup
* pandas
* Jupyter Notebook
* HTML Parsing
* Web Scraping

## Key Features

### Web Data Collection

The project retrieves data directly from a public web page using the `requests` library.

### HTML Parsing

BeautifulSoup is used to navigate the HTML structure and identify the target table.

### Data Extraction

Table headers and rows are extracted from HTML elements and converted into a structured pandas DataFrame.

## Project Files

* `web_scraping_project.ipynb` — Jupyter Notebook containing the complete web scraping workflow.
* `README.md` — project documentation.

## Skills Demonstrated

* Web Scraping
* HTTP Requests
* HTML Parsing
* Data Extraction
* DataFrame Creation
* Python Data Manipulation
* Basic Error Handling
* Jupyter Notebook Workflow

## What I Learned

This project provided practical experience with collecting data from a web page and converting semi-structured HTML content into a structured dataset.

It also helped reinforce the workflow of combining `requests`, `BeautifulSoup`, and `pandas` for basic data collection tasks in Python.

