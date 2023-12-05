# Movie Data Analysis Project

This repository contains Python code for performing data analysis on a movie dataset. The analysis includes visualizations and statistical insights derived from the data.

## Objective

The primary aim of this code is to explore relationships between various movie attributes and gross earnings. It includes the following steps:

1. **Importing Libraries:** Importing necessary Python libraries such as Pandas, Seaborn, Matplotlib for data manipulation, visualization, and analysis.
2. **Reading the Data:** Loading the movie dataset named "movies.csv" using Pandas and displaying the initial data entries.
3. **Handling Missing Data:** Identifying missing data in columns and calculating the percentage of missing values in each column.
4. **Data Cleaning:** Sorting data by gross earnings, removing duplicates, and making assumptions regarding correlations between budget, company, and gross earnings.
5. **Visualizations:**
   - Creating a scatter plot to depict the relationship between budget and gross earnings.
   - Using Seaborn's `regplot` to showcase a regression line for budget vs gross earnings.
   - Displaying correlation coefficients among different features using Pearson, Kendall, and Spearman methods via correlation matrices and heatmaps.
   - Numerizing categorical columns for deeper correlation analysis.
   - Unstacking correlation matrices to identify high correlation pairs.
6. **Conclusion:** Concluding insights derived from the analysis, highlighting the attributes that show the highest correlation with gross earnings.

## How to Use:

1. Ensure you have Python installed along with necessary libraries listed in the code.
2. Download or clone this repository to access the provided Python script.
3. Place your movie dataset (CSV file) in the same directory as the Python script or adjust the file path in the script accordingly.
   [Dataset](https://github.com/ManojGowda27/Data-Analyst-Portfolio-Projects/blob/main/Movies%20Correlation%20Using%20Python/movies.csv)
5. Run the Python script in your preferred environment to perform the analysis.

## Notes:

- The code assumes the existence of a movie dataset named "movies.csv" with columns such as 'budget', 'gross', 'company', 'votes', etc.
- Modify the code as needed to suit your dataset's structure or add additional analysis as required.

Feel free to adapt, expand, or enhance the analysis based on your specific requirements.

For any questions or improvements, feel free to open an issue or submit a pull request.
