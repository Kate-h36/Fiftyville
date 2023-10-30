# Fiftyville

This repository contains a mystery-solving program that uses SQL queries to identify the perpetrator involved in a mystery. The program is designed to keep a log of SQL queries in log.sql while solving the mystery and uses an answers.txt file to record the final findings.

### Note 

This was created as solution for Week 7 Problem Set CS50 Course by Harvard University: https://cs50.harvard.edu/x/2023/psets/7/fiftyville/

## Table of Contents

- [Overview](#overview)
- [Files Included](#filesincluded)
- [Usage](#usage)
- [Instructions](#instructions)

  ## Overview

The goal of the Mystery Solver Program is to aid in solving a mysterious case by using SQL queries on a provided database. The program maintains a log of SQL queries in the `log.sql `  file, tracking the investigative process step by step. Upon conclusion, the identified culprit, their escape city, and accomplice are recorded in the `answers.txt` file.

## Files Included

* `log.sql`: This file contains a log of all SQL queries executed during the investigation. Each query is preceded by comments detailing the purpose and the information sought.

* `answers.txt`: The answers file where, upon completion of the investigation, the name of the thief, the city they escaped to, and the name of their accomplice will be recorded.

## Usage

To use the Mystery Solver Program, follow these steps:

1. Clone the repository to your local environment.

2. Ensure you have access to a SQL database containing the necessary data for the investigation.

3. Use a SQL client or environment to execute the queries provided in the log.sql file.

4. Upon identifying the perpetrator, update the information in the answers.txt file as directed.

## Instructions

* `log.sql`: Use this file to log your SQL queries. Comment each query to explain its purpose and the information sought.
  
* `answers.txt`: Upon solving the mystery, fill in the name of the thief, the city they escaped to, and the name of their accomplice without altering any existing text.
