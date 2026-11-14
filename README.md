# SQL-City-Community-Analysis
SQL analysis of crime investigation, community income distribution and daily gym attendance using PostgreSQL.

## Project Overview

This project involved using SQL to investigate crime-related information and analyse community data in SQL City.

The assessment focused on three different objectives: identifying the individual who hired a known suspect, analysing the highest-earning individuals in the community, and understanding daily attendance at a fitness centre.

The goal was to retrieve relevant information from relational databases and answer practical questions using SQL queries.

## Business Questions

### 1. Crime Investigation

**Objective:** Identify who hired Jeremy Bowers, who had already been identified as the culprit in a January crime in SQL City.

**Approach:**
- Retrieved Jeremy Bowers' personal details from the Person table.
- Used an INNER JOIN to connect the Person and Interview tables.
- Retrieved his interview transcript for further investigation.

**Finding:** Miranda Priestly (Person ID: 99716) was identified as the individual who hired Jeremy Bowers.

### 2. Top 20 Highest-Earning Individuals

**Objective:** Identify the 20 highest-earning individuals in the community to support a targeted road-safety awareness initiative.

**Approach:**
- Joined the Person, Drivers License and Income tables.
- Connected records using their corresponding identifiers.
- Sorted individuals by annual income in descending order.
- Used LIMIT 20 to retrieve the top 20 earners.

**Information retrieved:**
- Full name
- Residential address
- Age
- Gender
- Car make
- Annual income

### 3. Daily Gym Attendance

**Objective:** Determine how many people visit the fitness centre daily to support the government's fitness promotion initiative.

**Approach:**
- Used the GET_FIT_NOW_CHECK_IN table.
- Converted the check-in date into a readable date format using TO_DATE().
- Used COUNT(DISTINCT membership_id) to count unique gym members per day.
- Applied GROUP BY to organise attendance by date.
- Used ORDER BY to arrange the results chronologically.

**Expected output:** A daily breakdown of unique gym attendance.

## SQL Skills Demonstrated

- SELECT statements
- WHERE filtering
- INNER JOIN
- COUNT() and COUNT(DISTINCT)
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- Column aliases
- Date conversion using TO_DATE()
- String concatenation
- Aggregate functions

## Tools Used

- PostgreSQL
- pgAdmin 4

## Key Learning Outcomes

Through this assessment, I gained practical experience working with relational databases, retrieving information from multiple tables, applying aggregate functions and organising query results.

I also learned how SQL can support different business objectives, from investigative analysis to income-based segmentation and attendance monitoring.

## Conclusion

This project strengthened my understanding of SQL and how structured queries can be used to answer real-world questions.

It was a valuable opportunity to move beyond learning SQL syntax and apply it to practical problem-solving.

---

**Author:** Iyamu Sharon  
**Role:** Data Analyst  
**Project:** SQL City Community Analysis
