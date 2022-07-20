-- Query 1: (rephrased) Get client_id of the first 5 clients where district_id =1
SELECT client_id 
FROM client
WHERE district_id=1
LIMIT 5;

-- Query 2:
SELECT MAX(client_id)
FROM client
WHERE district_id=72;

-- Query 3:
SELECT amount
FROM loan
order by amount ASC
LIMIT 3;

-- Query 4:
SELECT status
FROM loan
GROUP BY status
order by status ASC;

-- Query 5:
Select loan_id
FROM loan
WHERE payments=(SELECT max(payments) FROM loan);

-- Query 6:
SELECT account_id, amount
FROM loan
order by account_id asc
LIMIT 5;

-- Query 7:
SELECT account_id
FROM loan
WHERE duration=60
ORDER BY amount ASC
LIMIT 5;

-- Query 8:
SELECT DISTINCT k_symbol
FROM `order`
GROUP BY k_symbol;

-- Query 9:
SELECT order_id
FROM `order`
WHERE account_id=34;

-- Query 10:
SELECT DISTINCT account_id
FROM `order`
WHERE order_id >= 29540 and order_id <= 29560;

-- Query 11
SELECT amount
FROM `order`
WHERE account_to = 30067122;


-- Query 12:
SELECT trans_id, `date`, `type`, amount
FROM trans
WHERE account_id = 793
ORDER BY `date` ASC
LIMIT 10;

-- Query 13
SELECT district_id, COUNT(client_id)
FROM client
WHERE district_id<10
GROUP BY district_id
order by district_ID asc;

-- Query 14:
SELECT `type`, count(card_id)
FROM card
GROUP BY `type`;

-- Query 15:
SELECT loan_id, SUM(amount) as sums
FROM loan
GROUP BY loan_id
ORDER BY sums DESC
LIMIT 10;

-- Query 16
SELECT `date`, count(loan_id)
FROM loan
WHERE `date`<930907
GROUP BY `date`
ORDER BY `date`;

-- Query 17:
SELECT `date`, duration, count(loan_id)
FROM loan
WHERE `date` LIKE "9712%"
GROUP BY `date`;

-- Query 18:
SELECT account_id, `type`, sum(amount) as total_amount
FROM trans
WHERE account_id=396
GROUP BY `type`
ORDER BY `type`;


