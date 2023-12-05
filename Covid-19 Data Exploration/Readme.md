# COVID-19 Data Exploration Project

This repository contains SQL queries used to analyze COVID-19 data including total cases, deaths, vaccination rates, and more. These queries were developed to extract insights and provide a comprehensive understanding of the pandemic's impact across locations and time.

## Queries Overview

### Selecting Data:

- **Query 1:** Fetches basic COVID-19 data including location, date, total cases, new cases, total deaths, and population.
- **Query 2:** Compares total cases and total deaths, calculating the death percentage for each data entry.
- **Query 3:** Identifies locations with the highest infection rates in relation to their population.
- **Query 4:** Displays countries with the highest death toll per population.
- **Query 5:** Highlights continents with the highest death count.

### Vaccination Analysis:

- **Query 6:** Joins COVID-19 data with vaccination data to understand the correlation between cases and vaccination rates.
- **Query 7:** Utilizes Common Table Expression (CTE) to compute the population vs. vaccination percentage.

## Views Created

- **PercentPopulationVaccinated View:** A view storing cumulative data for each location regarding population, new vaccinations, and rolling vaccinated population over time.

## How to Use:

To utilize these SQL queries and views:

1. Ensure you have the necessary permissions to access the databases containing COVID-19 data and vaccination records.
2. Copy the queries to your SQL environment or editor.
3. Execute the queries in sequence for comprehensive data analysis.
4. Use the generated views for visualizations or further analysis.

## Notes:

- The queries assume the existence of tables named "CovidDeaths" and "CovidVaccinations" containing relevant data fields.
- Modify the queries as needed to suit your specific database schema and structure.

Please refer to the comments within the queries for detailed explanations of each step and consider adapting them to your database environment.

For any questions or improvements, feel free to open an issue or submit a pull request.
