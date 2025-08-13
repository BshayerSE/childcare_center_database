# 🏫 Child Care Centre Database

A relational database system designed to manage and organize all operations of a childcare center, including children, parents, nannies, departments, services, and activities.

---
## Overview

This project models the relationships and operations of a childcare center. It allows storing, retrieving, and managing detailed information about children, their assigned nannies, provided services, registered activities, and parent contacts. The database ensures consistency with constraints, foreign keys, and normalization, enabling efficient data management and accurate reporting.

---

## Entities & Relationships

- Department: Each department manages multiple nannies.
- Nanny: Each nanny belongs to one department, can care for multiple children, and provide multiple services.
- Child: Each child is assigned one nanny, can participate in multiple activities, and may receive multiple services.
- Activity: Activities in which children can register.
- Service: Services provided by nannies and received by children.
- Parent: Linked to specific children with unique contact details.
 
 ---
 
## Database Features

- CREATE DATABASE script to set up schema if it doesn’t exist
- Tables with primary keys, foreign keys, and constraints
- Preloaded Data for departments, nannies, children, parents, activities, and services
- INSERT, UPDATE, DELETE operations for maintaining data
- SELECT Queries using WHERE, GROUP BY, HAVING, ORDER BY, subqueries, and JOINs for reporting
- Referential Integrity maintained with ON DELETE SET NULL rules
 
 ---
 
## Technologies Used

- MySQL: Database creation, schema definition, and data manipulation
- ERD & Relational Schema: Designed using Chen’s and UML notations
- Normalization: Ensured to remove redundancy and improve data integrity
  
 ---
 
## Testing
- Verified foreign key relationships and cascading behavior
- Checked data insertion and retrieval correctness
- Tested JOIN queries to combine data from multiple tables
- Ensured GROUP BY and HAVING produce accurate aggregate results

 ---

## License
  License This project is part of a Database Fundamentals course and is intended for educational purposes only.
