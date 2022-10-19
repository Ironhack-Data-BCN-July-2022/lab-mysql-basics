USE bank;

-- 1
SELECT district_id
FROM client
LIMIT 5;

-- 2
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- 3
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- 4
SELECT DISTINCT(status)
FROM loan
ORDER BY status ASC;

-- 5
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- 6
SELECT amount, account_id
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- 7
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount
LIMIT 5;

-- 8
SELECT DISTINCT k_symbol
FROM `order`;

-- 9
SELECT order_id
FROM `order` 
WHERE account_id = 34;

-- 10
SELECT account_id
FROM `order` 
WHERE order_id BETWEEN 29540 AND 29560
GROUP BY account_id; 

-- 11
SELECT DISTINCT amount
FROM `order`
WHERE account_to = 30067122;

-- 12
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- 13
SELECT district_id, COUNT(client_id)
FROM client
GROUP BY district_id
ORDER BY district_id;

-- 14
SELECT DISTINCT type, COUNT(card_id)
FROM card
GROUP BY type
ORDER BY count(card_id) DESC;

-- 15
SELECT account_id, SUM(amount)
FROM loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

-- 16
SELECT COUNT(loan_id), date
FROM loan
WHERE date < 930907
GROUP BY loan_id
ORDER BY date DESC;

-- 18
SELECT DISTINCT type, account_id, SUM(amount) as total_amount
FROM trans
WHERE account_id = 396
GROUP BY type;

