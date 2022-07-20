USE bank;

# 1
SELECT client_id 
FROM client
WHERE district_id=1
ORDER BY district_id ASC
LIMIT 5;

# 2
SELECT client_id
FROM client
WHERE district_id=72
ORDER BY client_id DESC
LIMIT 1;

# 3
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

# 4
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

# 5
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

# 6
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

# 7
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

# 8
SELECT DISTINCT k_symbol
FROM `order`;

# 9
SELECT order_id
FROM `order`
WHERE account_id = 34;

# 10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

# 11
SELECT amount
FROM `order`
WHERE account_to = 30067122;

# 12
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

# 13
SELECT DISTINCT district_id, COUNT(district_id)
FROM client
WHERE district_id <10
GROUP BY district_id
ORDER BY district_id ASC;

# 14
SELECT DISTINCT type, COUNT(type)
FROM card
GROUP BY type
ORDER BY COUNT(type) DESC;

# 15
SELECT account_id, SUM(amount) AS amt_sum
FROM loan
GROUP BY account_id # must group before aggregating data (summing)
ORDER BY amt_sum DESC
LIMIT 10;

# 16
SELECT date, COUNT(loan_id)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

# 17
SELECT date, duration, COUNT(loan_id)
FROM loan
WHERE date LIKE ("9712%")
GROUP BY duration, date
ORDER BY date AND duration ASC;

# 18
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;