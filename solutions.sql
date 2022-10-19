USE bank;

-- Query 1 --
SELECT client_id 
	FROM client AS c
    WHERE c.district_id = 1
    LIMIT 5;

-- Query 2 --
SELECT client_id
	FROM client as c
    WHERE c.district_id = 72
    ORDER BY client_id DESC LIMIT 1;

-- Query 3 --
SELECT amount
	FROM loan as l
    ORDER BY l.amount ASC LIMIT 3;

-- Query 4 --
SELECT DISTINCT status
	FROM loan AS l
    ORDER BY l.status ASC;

-- Query 5 --
SELECT loan_id
	FROM loan as l
    WHERE l.payments = (SELECT max(payments) FROM loan)
    LIMIT 1;

-- Query 6 --
SELECT account_id AS id, amount
	FROM loan AS l
    ORDER BY l.account_id ASC LIMIT 5;

-- Query 7 --
SELECT account_id
	FROM loan AS l
    WHERE l.duration = 60
    ORDER BY l.amount ASC LIMIT 5;

-- Query 8 --
SELECT DISTINCT k_symbol 
	FROM `order` AS o
    WHERE o.k_symbol != ''
    ORDER BY o.k_symbol ASC;

-- Query 9 --
SELECT order_id
	FROM `order` AS o
    WHERE o.account_id = 34;

-- Query 10 --
SELECT DISTINCT account_id 
	FROM `order` AS o
    WHERE o.order_id BETWEEN 29540 AND 29560;
    
-- Query 11 --
SELECT amount
	FROM `order` AS o
    WHERE o.account_to = 30067122;

-- Query 12 --
SELECT trans_id, date, type, amount
	FROM trans as t
    WHERE t.account_id = 793
    ORDER BY t.date DESC LIMIT 10;

-- Query 13 --
SELECT district_id, count(district_id)
	FROM client AS c
    GROUP BY c.district_id
    ORDER BY c.district_id ASC LIMIT 9;

-- Query 14 --
SELECT type, count(type)
	FROM card as c
	GROUP BY c.type;
    
-- Query 15 --
SELECT account_id, sum(amount)
	FROM loan as l
	GROUP BY l.account_id
    ORDER BY sum(amount) DESC LIMIT 10;
    
-- Query 16 --
SELECT date, count(date)
	FROM loan as l
    WHERE l.date < '930907'
    GROUP BY l.date
    ORDER BY l.date DESC;

-- Query 17 --
SELECT date, duration, count(duration)
	FROM loan as l
	WHERE l.date BETWEEN '971201' AND '971231'
    GROUP BY l.date, l.duration
    ORDER BY l.date ASC, l.duration ASC;
    
-- Query 18 --
SELECT account_id, type, sum(amount) AS total_amount
	FROM trans AS t
	WHERE t.account_id = 396
    GROUP BY t.type;