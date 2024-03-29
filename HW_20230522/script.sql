-- > Выведите данные о билетах разной ценовой категории. Среди билетов экономкласса
-- (Economy) добавьте в выборку билеты с ценой от 10 000 до 11 000 включительно.
-- Среди билетов комфорт-класса (PremiumEconomy) — билеты с ценой от 20 000 до 30 000
-- включительно. Среди билетов бизнес-класса (Business) — с ценой строго больше 100 000.
-- В решении необходимо использовать оператор CASE.
-- В выборке должны присутствовать три атрибута — id, service_class, price.

SELECT id,
       CASE
           WHEN price BETWEEN 10000 AND 11000
               THEN 'Economy'
           WHEN price BETWEEN 20000 AND 30000
               THEN 'PremiumEconomy'
           WHEN price > 100000
               THEN 'Business'
           END AS service_class,
       price
FROM tickets;


-- > Разделите самолеты на три класса по возрасту. Если самолет произведен раньше 2000 года,
-- то отнесите его к классу 'Old'. Если самолет произведен между 2000 и 2010 годами включительно,
-- то отнесите его к классу 'Mid'. Более новые самолеты отнесите к классу 'New'.
-- Исключите из выборки дальнемагистральные самолеты с максимальной дальностью полета
-- больше 10000 км. Отсортируйте выборку по классу возраста в порядке возрастания.
-- В выборке должны присутствовать два атрибута — side_number, age.

SELECT side_number,
       CASE
           WHEN production_year < 2000
               THEN 'Old'
           WHEN production_year <= 2010
               THEN 'Mid'
           ELSE 'New'
           END AS age
FROM airliners;


-- > Руководство авиакомпании снизило цены на билеты рейсов LL4S1G8PQW, 0SE4S0HRRU и
-- JQF04Q8I9G. Скидка на билет экономкласса (Economy) составила 15%, на билет
-- бизнес-класса (Business) — 10%, а на билет комфорт-класса (PremiumEconomy) — 20%.
-- Определите цену билета в каждом сегменте с учетом скидки.
-- В выборке должны присутствовать три атрибута — id, tripid, newprice.

SELECT id,
       trip_id,
       CASE
           WHEN service_class = 'Economy' THEN price * 0.85
           WHEN service_class = 'Business' THEN price * 0.9
           WHEN service_class = 'PremiumEconomy' THEN price * 0.8
           END AS new_price
FROM tickets
WHERE trip_id IN ('LL4S1G8PQW', '0SE4S0HRRU', 'JQF04Q8I9G');
