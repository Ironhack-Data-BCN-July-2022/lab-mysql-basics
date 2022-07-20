USE bank;

-- QUERY 1
SELECT client_id
	FROM client
	WHERE district_id = 1
    LIMIT 5;
    
-- QUERY 2
SELECT client_id
	FROM client
	WHERE district_id = 72
	ORDER BY client_id DESC
	LIMIT 1;
    
-- QUERY 3
SELECT amount
	FROM loan
	ORDER BY amount ASC
	LIMIT 3;

-- QUERY 4
SELECT distinct `status`
	FROM loan
	ORDER BY `status` ASC;

-- QUERY 5
SELECT loan_id
	FROM loan
	ORDER BY payments DESC
	LIMIT 1;

-- QUERY 6
SELECT account_id, amount
	FROM loan
	ORDER BY account_id ASC
	LIMIT 5;
    
-- QUERY 7
SELECT account_id
	FROM loan
	WHERE duration = 60
    ORDER BY amount ASC
	LIMIT 5;
    
-- QUERY 8
SELECT DISTINCT k_symbol
	FROM `order`
    ORDER BY k_symbol ASC;
    
-- QUERY 9
SELECT order_id
	FROM `order`
    WHERE account_id = 34;
    
-- QUERY 10
SELECT DISTINCT account_id
	FROM `order`
	WHERE order_id  BETWEEN 29540 AND 29561;

-- QUERY 11
SELECT amount
	FROM `order`
    WHERE account_to = 30067122;
    
-- QUERY 12
SELECT trans_id, date, type, amount
	FROM trans
	WHERE account_id = 793
    ORDER BY date DESC
    LIMIT 10;
    
-- QUERY 13
SELECT district_id, COUNT(client_id)
	FROM client
    WHERE district_id < 10
    GROUP BY district_id
    ORDER BY district_id ASC
	limit 10;
    
-- QUERY 14
SELECT type, COUNT(type)
	FROM card
    GROUP BY type;

-- QUERY 15
SELECT account_id,SUM(amount)
	FROM loan
    GROUP BY account_id
    ORDER BY SUM(amount) DESC
    LIMIT 10;

-- QUERY 16
SELECT date, count(loan_id)
	FROM loan
	WHERE date <930907
	GROUP BY date
    ORDER BY date DESC;

-- QUERY 17
SELECT date, duration, COUNT(loan_id)
	FROM loan
	WHERE date BETWEEN 971201 AND 971231
	GROUP BY date, duration
	HAVING COUNT(loan_id)> 0
    ORDER BY date, duration ASC
	LIMIT 14;
    
-- QUERY 18
SELECT account_id, type, SUM(amount) as total_amount
	FROM trans
	WHERE account_id = 396
	GROUP BY type
    ORDER BY type ASC;