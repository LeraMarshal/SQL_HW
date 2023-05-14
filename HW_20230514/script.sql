-- Home Work

-- Из таблицы employees найти всех сотрудников, работающих в департаменте с id 90.

SELECT *
FROM employees
WHERE department_id = 90;

-- Из таблицы employees найти всех сотрудников, зарабатывающих больше 5000.

SELECT *
FROM employees
WHERE salary > 5000;

-- Из таблицы employees найти всех сотрудников, чья фамилия начинается на букву L.

SELECT *
FROM employees
WHERE last_name LIKE 'L%';

-- Из таблицы departments найти все департаменты, у которых location_id 1700.

SELECT *
FROM departments
WHERE location_id = 1700;

-- Из таблицы locations найти все города с country_id US.

SELECT *
FROM locations
WHERE country_id = 'US';
