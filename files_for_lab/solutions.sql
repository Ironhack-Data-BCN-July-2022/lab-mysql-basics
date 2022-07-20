USE bank;

-- 1
SELECT client_id FROM client
	WHERE district_id = 1
    LIMIT 5;
-- 2
SELECT client_id FROM client
	WHERE district_id = 72
    ORDER BY client_id desc
    LIMIT 1;
-- 3    
SELECT amount FROM loan
	ORDER BY amount asc
    LIMIT 3;
-- 4
SELECT DISTINCT status FROM loan
	ORDER BY status asc
    LIMIT 4;
-- 5    
SELECT loan_id FROM loan
	ORDER BY payments desc
    LIMIT 1;
-- 6    
SELECT account_id, amount FROM loan
	ORDER BY account_id asc
    LIMIT 5;
-- 7    
SELECT account_id FROM loan
	WHERE duration = 60
	ORDER BY amount asc
    LIMIT 5;
-- 8    
SELECT DISTINCT k_symbol FROM `order`;
-- 9
SELECT order_id FROM `order`
	WHERE account_id = 34;
-- 10
SELECT DISTINCT account_id FROM `order`
	WHERE order_id BETWEEN 29540 AND 29560;
-- 11
SELECT amount FROM `order`
	WHERE account_to = 30067122;
-- 12
SELECT trans_id, date, type, amount FROM trans
	WHERE account_id = 793
    ORDER BY date desc;
-- 13
SELECT district_id, COUNT(client_id) FROM client
	WHERE district_id < 10
	GROUP BY district_id
    ORDER BY district_id asc;
-- 14
SELECT type, COUNT(card_id) FROM card
	GROUP BY type
    ORDER BY COUNT(card_id) desc;
-- 15
SELECT account_id, sum(amount) FROM loan
	GROUP BY account_id
    ORDER BY sum(amount) desc
    LIMIT 10;
-- 16
SELECT date, COUNT(loan_id) FROM loan
	WHERE date < 930907
	GROUP BY date
	ORDER BY date desc;
-- 17
SELECT date, duration, COUNT(loan_id) FROM loan
	WHERE date BETWEEN 971201 AND 971231
	GROUP BY date, duration
	HAVING COUNT(loan_id)> 0
    ORDER BY date, duration;
-- 18
SELECT account_id, type, SUM(amount) as total_amount FROM trans
	WHERE account_id = 396
	GROUP BY type
    ORDER BY type asc;
    

    