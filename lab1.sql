USE bank;
-- 1
SELECT client_id 
	FROM client
    WHERE district_id = 1
    LIMIT 5;
-- 2    
SELECT client_id
	FROM client
    WHERE district_id = 72
    ORDER BY client_id DESC
    limit 1;

-- 3
SELECT amount
	FROM loan
    ORDER BY amount ASC
    limit 3;

-- 4
SELECT DISTINCT status
	FROM loan
    ORDER BY status ASC;
    
-- 5  
SELECT loan_id
	FROM loan
	ORDER BY payments DESC
    limit 1;
    
-- 6
SELECT account_id, amount
	FROM loan
    ORDER BY account_id ASC
    limit 5;
#7
SELECT account_id
	FROM loan
    WHERE duration = 60
    ORDER BY amount ASC
    LIMIT 5;
    
SELECT DISTINCT  k_symbol 
FROM bank.order
ORDER BY k_symbol;


SELECT order_id
FROM bank.order
WHERE account_id = 34;

SELECT distinct account_id
from bank.order
where order_id BETWEEN 29540 AND 29560;

SELECT amount
FROM bank.order
where account_to  = 30067122;

SELECT trans_id, date, type, amount
	FROM trans
    WHERE account_id = 793
    ORDER BY date DESC
    limit 10;

SELECT district_id, COUNT(client_id)
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

SELECT type, COUNT(card_id)
FROM card
GROUP BY type
ORDER BY COUNT(card_id) DESC;


SELECT account_id, SUM(amount)
	FROM loan
    GROUP BY account_id
    ORDER BY SUM(amount) DESC
	limit 10;

SELECT date, COUNT(loan_id)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date;

SELECT date, duration, COUNT(loan_id)
	FROM loan
    WHERE date BETWEEN "971201" AND "971231"
    GROUP BY date, duration
    ORDER BY date ASC;

SELECT account_id , type, SUM(amount) as total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;



