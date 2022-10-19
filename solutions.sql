-- Q1
USE bank;
SELECT client_id FROM `client` WHERE district_id = 1
LIMIT 5;
-- Q2
SELECT MAX(client_id) FROM `client` WHERE district_id = 72;
-- Q3
SELECT amount FROM loan
ORDER BY amount ASC
LIMIT 3;
-- Q4
SELECT DISTINCT `status` FROM loan
ORDER BY `status` ASC;
-- Q5 SOME PROBLEM HERE
SELECT loan_id FROM loan
ORDER BY payments DESC
LIMIT 1;
-- Q6
SELECT account_id as id, amount FROM loan
ORDER BY account_id ASC
LIMIT 5;
-- Q7
SELECT account_id FROM loan WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;
-- Q8
SELECT DISTINCT k_symbol FROM `order`
ORDER BY K_symbol;
-- Q9
SELECT order_id FROM `order` WHERE account_id=34;
-- Q10
SELECT DISTINCT account_id FROM `order` WHERE order_id BETWEEN 29540 AND 29560;
-- Q11
SELECT amount FROM `order` WHERE account_to = 30067122;
-- Q12
SELECT trans_id, `date` , `type`, amount FROM trans WHERE account_id = 793
ORDER BY `date` DESC
LIMIT 10;
-- Q13
SELECT district_id, COUNT(client_id) FROM `client` WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;
-- Q14
SELECT `type`, COUNT(card_id) FROM card
GROUP BY `type`;
-- Q15
SELECT account_id, SUM(amount) AS total FROM loan
GROUP BY account_id
ORDER BY total DESC
LIMIT 10; 
-- Q16
SELECT `date`, COUNT(loan_id) FROM loan WHERE `date`< 930907
GROUP BY `date`
ORDER BY `date` DESC;
-- Q17
SELECT `date`, duration, COUNT(loan_id) FROM loan WHERE `date` BETWEEN 971200 AND 971232
GROUP BY duration, `date`
ORDER BY `date` AND duration ASC;
-- Q18
SELECT account_id,`type`, SUM(amount) FROM trans WHERE account_id = 396
GROUP BY `type`
