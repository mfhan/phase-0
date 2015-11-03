

1. Select all data for all states
SELECT *
FROM states;

2. Select all data for all regions.
SELECT *
FROM regions;

3. Select the state_name and population for all states.
SELECT state_name, population
FROM states;

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

SELECT state_name, population
FROM states
ORDER BY population ASC;

5. Select the state_name for the states in region 7.

SELECT state_name
FROM states
WHERE id = 7;

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population_density ASC;

BETWEEN 1000000 AND 1500000;
ORDER BY population ASC;

7. Select the state_name for states with a population between 1 million and 1.5 million people.

SELECT state_name
FROM states
WHERE population BETWEEN 1000000 AND 1500000;

8. Select the state_name and region_id for states ordered by region in ascending order.

SELECT state_name, region_id
FROM states
ORDER BY region_id ASC;

9. Select the region_name for the regions with "Central" in the name.

SELECT region_name
FROM regions
WHERE region_name LIKE '%Central%';

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).

SELECT region_name, state_name
FROM  regions
LEFT JOIN states
WHERE region_id
ORDER BY region_name ASC;

Release 6: Your Own Schema

`<em>https://github.com/mfhan/phase-0/blob/master/week-8/database-intro/8.4_Schema.png</em>`


<!-- Release 7: Reflect
In the reflection section in your my_solution.md file, answer the following questions:

What are databases for?
ANSWER: They are entities used to store, manipulate and modify data without having to modify the code that governs it
What is a one-to-many relationship?
ANSWER: Similar to a key-value relationship in a hash, a one-to-many relationship applies when one key, such as a name, applies to several values, such as a date of birth, a place of residence, a country of birth.
What is a primary key? What is a foreign key? How can you determine which is which?
ANSWER: Each row in a database table should have a primary key, which identifies it from all other rows. The default key is "id". Foreign keys are used to connect one table to another, linking a primary key (name)to another table that contains a field for that same key. (owner in our example)


How can you select information out of a SQL database? What are some general guidelines for that?
ANSWER: Use primarily SELECT, FROM, WHERE and other commands such as ORDER BY, LIKE and BETWEEN. Make sure to have a semicolon to close the command.
 -->
