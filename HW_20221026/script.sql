CREATE DATABASE HW_20221026;

-- Создайте таблицу goods:
-- id первичный ключ автоинкремент
-- title строка 128
-- quantity строка 128
-- price целое число
CREATE TABLE goods
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    title    VARCHAR(128),
    quantity VARCHAR(128),
    price    INT
);

-- Добавьте 10 строк
INSERT
INTO
    goods(title, quantity, price)
VALUES
    ('Good1', '1', 1),
    ('Good2', '2', 2),
    ('Good3', '3', 3),
    ('Good4', '4', 4),
    ('Good5', '5', 5),
    ('Good6', '6', 6),
    ('Good7', '7', 7),
    ('Good8', '8', 8),
    ('Good9', '9', 9),
    ('Good10', '10', 10);


-- Проверьте содержимое таблицы
SELECT
    *
FROM
    goods;

-- Найдите товары дешевле 1000
SELECT
    *
FROM
    goods
WHERE
    price < 1000;

-- Найдите товары, начинающиеся на А
SELECT
    *
FROM
    goods
WHERE
    title LIKE 'A%';

-- Удалите товары дороже 1000
DELETE
FROM
    goods
WHERE
    price > 1000;

-- Очистите таблицу так, чтобы при повторном заполнении автоинкремент добавлял айдишники с 1
TRUNCATE goods;
