USE bank;

-- query 1
SELECT client_id FROM client
	WHERE district_id = 1
    LIMIT 5;

-- query 2
SELECT client_id FROM client
	WHERE district_id = 72
    ORDER BY client_id DESC
    LIMIT 1;

-- query 3
SELECT amount FROM loan
	ORDER BY amount ASC
    LIMIT 3;
    
-- query 4
SELECT DISTINCT status FROM loan
	ORDER BY status ASC;
    
-- query 5
SELECT loan_id FROM loan
	ORDER BY payments DESC
    LIMIT 1;
    
-- query 6
SELECT account_id, amount FROM loan
	ORDER by account_id ASC
    LIMIT 5;
    
-- query 7
SELECT account_id FROM loan
	WHERE duration = 60
    ORDER BY amount ASC;
    
-- query 8
SELECT DISTINCT k_symbol FROM `order`
	ORDER BY k_symbol ASC;

-- query 9
SELECT order_id FROM `order`
	WHERE account_id = 34;
    
-- query 10
SELECT DISTINCT account_id FROM `order`
	WHERE order_id BETWEEN 29540 and 29560;

-- query 11
SELECT amount FROM `order`
	WHERE account_to = 30067122;

-- query 12
SELECT trans_id, `date`, `type`, amount FROM trans
	WHERE account_id = 793
    ORDER BY `date` DESC
    LIMIT 10;
    
-- query 13
SELECT district_id, count(district_id) FROM `client`
	WHERE district_id < 10
    GROUP BY district_id
    ORDER BY district_id ASC;

-- query 14
SELECT `type`, count(`type`) FROM card
	GROUP BY `type`
    ORDER BY count(`type`) DESC;

-- query 15
SELECT account_id, sum(amount) FROM loan
	GROUP BY account_id
	ORDER by sum(amount) DESC
    LIMIT 10;
    
-- query 16
SELECT `date`, count(loan_id) FROM loan
	WHERE `date` < 930907
    GROUP BY `date`
    ORDER BY `date` DESC;

-- query 17
SELECT * FROM loan;

SELECT `date`, duration, count(loan_id) FROM loan
	WHERE `date` BETWEEN 971200 AND 971232
    GROUP BY duration, `date`
    ORDER BY `date` AND duration ASC;
    
-- query 18
SELECT account_id, `type`, sum(amount) FROM trans
	WHERE account_id = 396
    GROUP BY `type`
	ORDER BY `type` ASC;
    
    
    





