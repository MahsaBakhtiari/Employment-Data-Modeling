![](https://prd-rteditorial.s3.us-west-2.amazonaws.com/wp-content/uploads/2018/11/06114226/the-office-dwight.jpg)
# Employment Data Modeling Project
11111

This GitHub repository contains a data modeling project that focuses on analyzing the employment records of individuals employed in Pewlett Hackard during the 1980s and 1990s. The project consists of two main parts: designing a database for the company's employees and running queries to analyze the database.

## Table of Contents
- [Project Overview](#project-overview)
- [Data Modeling Choices](#data-modeling-choices)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [Resources](#resources)

## Project Overview

The goal of this project is to analyze the employment records of Pewlett Hackard during the 1980s and 1990s. By designing a suitable database and running queries. The project is divided into two main parts: database design and data analysis.

## Data Modeling Choices

When designing the database for this project, the following considerations were taken into account:

- The provided tables were already normalized, so they were used as they were.
- A single person can be a manager of multiple departments, and one department can have multiple managers.
- All entities, except for the employee's sex and birthday, are considered non-nullable.

## Project Structure

This repository is organized as follows:

- `schema.sql`: This file contains the SQL script for creating the database schema and tables.
- `queries.sql`: This file contains a set of predefined queries for analyzing the database.
- `ERD`: This directory contains the ERD and the code that generated it.
- `data/`: This directory contains the necessary data files used in the project.
- `README.md`: This file, which you are currently reading, provides an overview of the project and instructions for usage.

## Installation

To use this project, follow these steps:

1. Clone this repository to your local machine using the following command:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`git@github.com:MahsaBakhtiari/sql-challenge.git`

2. Make sure you have a compatible SQL database server (PostgreSQL) installed and running.

3. Execute the SQL script `schema.sql` to create the necessary database schema and tables.

4. Populate the tables with the provided data files located in the `data/` directory.

## Usage

To utilize this project for data analysis, follow these steps:

1. Ensure that the database has been created and populated with data as explained in the **Installation** section.

2. Open the `queries.sql` file and review the predefined queries available for analysis.

## Contributing

Contributions to this project are welcome. If you find any issues or have suggestions for improvement, please submit a pull  request or open an issue on the GitHub repository.

## Resources

- https://app.quickdatabasediagrams.com/
- https://www.postgresql.org/docs/8.1/functions-datetime.html

