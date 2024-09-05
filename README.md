# Housing Trends in Central Texas

## Overview
This repository contains a project aimed at identifying and analyzing the factors influencing the housing trends in Central Texas by focusing on data from 2018 to 2022. You will find visualizations that will help you understand our analysis, as well as user interactivity.

## Table of Contents

- [Overview](#overview)
- [Project Description](#project-description)
- [Key Aspects to Explore](#key-aspects-to-explore)
- [Databases to be Used](#databases-to-be-used)
- [Ethical  Considerations](#ethical-considerations)
- [Breakdown of Tasks](#breakdown-of-tasks)
- [Data Standardization and Analysis](#data-standardization-and-analysis)
- [Visualizations](#visualizations)
- [Repository structure](#repository-structure)
- [Installation](#installation)
- [User Interactivity](#user-interactivity)
- [Contributing](#contributing)
- [License](#license)
- [References](#references)




## Project Description
This project will analyze and visualize housing trends across Central Texas, focusing on homeownership rates, rental costs, and housing affordability. The goal is to understand how these factors vary across different regions and demographic groups over time.


## Key Aspects to Explore

1. **Analyze Demographic Influences:**

    - How different factors (e.g., income, population, total own and rent) correlate with housing choices, such as homeownership vs rental
    - Evaluate housing affordability in different regions by comparing median incomes with median housing costs.

2. **Visualize housing trends:**

    - Creating a line graph to show trends in homeownership and rental rates over time for selected regions. (Plotly, leaflet)
         * Dropdown menu for users to filter between different years
    - Creating a map to show where renter occupied and owner occupied houses are located at.
         * Be able to toggle between seeing all points that show rates of renter and owner occupied homes, just renter occupied, and just owner occupied.
    - Creating a choropleth map that shows:
         * The median contract rent
         * Median cost of home
         * Median selected monthly owner cost based on units with a mortgage and units without a mortgage


## Databases to be Used
* [US census bureau:](https://api.census.gov/data/2022/acs/acs5) A Dataset that will allow us to get valuable information on housing trends.
* [Central Texas Zip Codes](https://www.unitedstateszipcodes.org/tx/#zips-list) Excel file that will allow us to build our API call, which needs zip codes in its query to obtain the desired data (2018-2022).

## Ethical Considerations 
When conducting this project on housing trends in Central Texas, we made conscious efforts to adhere to ethical considerations, particularly in how we obtained and handled data. All data was sourced from publicly available and reputable sources, such as the U.S. Census Bureau. We ensured that no personal or sensitive information was collected. Additionally, we carefully followed data usage guidelines specified by the data providers to maintain integrity and trustworthiness in our analysis. By adhering to these ethical practices, we aimed to provide insights that are both accurate and responsible, while respecting the rights of individuals and communities represented in the data.

## Breakdown of Tasks

* **Michael Sanchez:** Data collection and preprocessing.
* **Griselda Rodriguez:** Data analysis and visualization (specifically creating the maps)
* **Adil Baksh:** Data visualization (specifically the line graphs)
* **Santiago Cardenas:** Create a SQLAlchemy database, a README.md file, and a PPT presentation.



## Data Standardization and Analysis

* **Data Standardization:** Multiple API calls were made in order to obtain the necessary data for this project 
* **Merged datasets:** Created a new data frame merging all the data for their respective years (2018-2022) 
* **Database:** Used sqlalchemy to create our database using the final csv files
* **Define Functions:** Created functions to read and populate the tables, as well as a function to create data frames for each year 


## Visualizations
### Visualization 1: Line plots analysis (2018-2022)
![image](https://github.com/user-attachments/assets/5b9f3a90-b351-494c-98d1-310fdbad05a6)

### Visualization 2: Median Contract Rent 2018-2022
<img width="928" alt="Screenshot 2024-09-05 at 5 50 51 PM" src="https://github.com/user-attachments/assets/4d68b264-79ce-4179-adc4-fa7c1ba360d5">

### Visualization 3: Median Monthly Cost 2018-2022
![Dataset Overview](images/median_monthly_cost_2018-2022.png)

### Visualization 4: Total Monthly Cost 2018-2022
![Dataset Overview](images/total_monthly_cost_2018-2022.png) 


## Repository Structure
```
PROJECT-3-DATA-VISUALIZATION/
│
├── images/
│ ├── MCRlineplot.png
| ├── median_contract_rent_2018-2022.png
| ├── median_montly_cost_2018-2022.png
│ └── total_monthly_cost_2018-2022.png
│ 
├── Maps/
│ ├── index.html
│ ├── logic.js
| ├── style.css
│ ├── Median_Contract_Rent_Map.ipynb
│ ├── Median_Monthly_Cost.ipynb
│ └── tx_texas_zip_codes_geo.min.json
|
├── data-Tables-with-Nan/
│ ├── 2018_tableN.csv
│ ├── 2019_tableN.csv
| ├── 2020_tableN.csv
| ├── 2021_tableN.csv
│ └── 2022_tableN.csv
│
├── notebooks/
│ ├── Yearly2.ipynb
│ └── analysis2.ipynb
│
└── README.md
```

## Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/Grisy-98/Project-3-Data-Visualization.git
    ```
2. Install the required packages:
    ```bash
    pip install pandas
    numpy
    adjustText
    scipy
    matplotlib
    plotly
    folium  
    sqlalchemy
    jupyter
    ```
3. Install Jupyter Notebook and Visual Studio Code:
    - Install [Visual Studio Code](https://code.visualstudio.com/).
    - Install the [Python extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-python.python).
    - Install Jupyter Notebook:
      ```bash
      pip install notebook
      ```
4. Open the project in Visual Studio Code and start Jupyter Notebook:
    - Open Visual Studio Code.
    - Open the project folder.
    - Open a new terminal in Visual Studio Code and run:
      ```bash
      jupyter notebook
      ```
    - This will open Jupyter Notebook in your default web browser.

## User Interactivity 
1. After successfully installing the repository, navigate to the "maps" folder where you will find all the interactive maps:
   - Median Contract Map (med_contract_map_2018-2022)
   - Median Monthly Cost Map (med_mo_cost_map_2018-2022)
   - Total Median Monthly Cost Map (total_med_mo_cost_map_2022)
2. Right-click on the desired HTML file and copy the file path.
3. Paste the link on you web browser of preference.
4. Each map allows you to:
   - Filter between years using the dropdown menu.
   - View detailed information about zip codes, including various data points from 2018 to 2022, by hovering over the map.  

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## License
This project is licensed under the MIT License.

## References

1. Debugging our csv files to be able to create the database. SQLAlchemy Documentation.
   https://docs.sqlalchemy.org/en/20/errors.html#error-7s2a
2. How to create a database using SQLAlchemy. SQLAlchemy Documentation. 
   https://blog.sqlitecloud.io/sqlite-python-sqlalchemy
3.  analysis.ipynb file. "rent_column" variable was created to read our csv files since they have a column with a number (e.g. 2018 Median Contract Rent ) and was causing problems to read that column into our database. 
4. For our base HTML file code, we used as a reference one from the UT Data Analysis and Visualization Bootcamp. The file can be found under Module 15, Day 2, Activity 1, named "index.html".
5. How to make choropleths with different data structures in Python. Towars Data Science. 
   https://towardsdatascience.com/creating-choropleth-maps-with-pythons-folium-library-cfacfb40f56a
6. Create code for Pop-ups. Stack Exchange. 
   https://gis.stackexchange.com/questions/392531/modify-geojson-tooltip-format-when-using-folium-to-produce-a-map
7. geoJSON files for Texas zip codes. GitHub. 
   https://github.com/OpenDataDE/State-zip-code-GeoJSON 
