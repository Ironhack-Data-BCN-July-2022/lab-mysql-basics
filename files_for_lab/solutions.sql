USE bank; 

-- Query 1
SELECT client_id
	FROM client
    WHERE district_id = 1
    LIMIT 5;
    
-- Query 2
SELECT client_id
	FROM client
    WHERE district_id = 72
    ORDER BY client_id DESC
    LIMIT 1;

-- Query 3
SELECT amount
	FROM loan
    WHERE amount 
	ORDER BY amount ASC
    LIMIT 3;
    
-- Query 4
SELECT DISTINCT(status) 
	FROM loan
	ORDER BY status ASC;
    
-- QUERY 5
SELECT loan_id
	FROM loan
    ORDER BY payments DESC
    LIMIT 1;
    
-- Query 6 
SELECT account_id, amount
	FROM loan 
    ORDER BY account_id ASC
    LIMIT 5;
	
-- Query 7
SELECT account_id
	FROM loan 
    WHERE duration = 60
    ORDER BY amount ASC
    LIMIT 5;
    
-- Query 8 
SELECT DISTINCT (k_symbol)
	FROM order_table 
	ORDER BY k_symbol ASC;

-- Query 9 
SELECT order_id
	FROM order_table 
    WHERE account_id =34;
    
-- Query 10
SELECT DISTINCT account_id
	FROM order_table
    WHERE order_id BETWEEN 29540 AND 29560
    LIMIT 4;
    
-- QUERY 11
SELECT amount
	FROM order_table
    WHERE account_to = 30067122;
    
-- QUERY 12
SELECT trans_id, date, type, amount 
	FROM trans 
	WHERE account_id = 793
    ORDER BY date DESC
    LIMIT 10;
    
-- Query 13
SELECT district_id, count(client_id)
	FROM client
    WHERE district_id < 10
    GROUP BY district_id
    ORDER BY district_id ASC;

-- Query 14
SELECT type, count(card_id)
	FROM card 
	GROUP BY type
    ORDER BY count(card_id) DESC;
    
-- Query 15
SELECT account_id, sum(amount)
	FROM loan
    GROUP BY account_id
    ORDER BY sum(amount) DESC
    LIMIT 10;
    
-- Query 16 
SELECT date, count(loan_id)
	FROM loan 
    WHERE date < 930907
    GROUP BY date
    ORDER BY date
    LIMIT 5;
    
-- Query 17 
SELECT date, duration, count(loan_id)
	FROM loan
    WHERE date BETWEEN "971200" AND "971231"
	GROUP BY date, duration 
    ORDER BY date ASC;

-- Query 18 
SELECT account_id, type, sum(amount) as total_amount
	FROM trans
    WHERE account_id = 396
    GROUP BY type 
    ORDER BY type;

    

    
    
