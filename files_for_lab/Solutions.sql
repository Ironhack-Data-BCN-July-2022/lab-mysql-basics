USE bank;

-- QUERY 1
SELECT client_id
	FROM `client`
	WHERE district_id = 1
    limit 5;
    
-- QUERY 2
select client_id
from `client`
where district_id = 72
order by client_id desc
limit 1;    

-- query 3
select amount
from loan
order by amount asc
limit 3;

-- query 4
select distinct `status`
from loan
order by `status` asc;

-- query 5
select loan_id 
from loan
order by payments asc
limit 1;

-- query 6
select account_id, amount
from loan
order by account_id asc
limit 5;

-- query 7
select account_id
from loan
where duration = 60
order by amount asc
limit 5;

-- query 8
select distinct k_symbol
from `order`
order by k_symbol asc;

-- quert 9
select order_id
from `order`
where account_id = 34
limit 3;

-- query 10
select distinct account_id
from `order`
where order_id  between 29540 and  29561;

-- query 11
select amount 
from `order`
where account_to = 30067122;

-- query 12
select trans_id, `date`, `type`, amount
from trans
where account_id = 793
order by `date` desc
limit 10;

-- query 13
select district_id,count(client_id)
from `client`
where district_id<10
group by district_id
order by district_id asc
limit 10;

-- query 14
select `type`,count(issued)
from card
group by `type`
order by issued asc;

-- query 15
select account_id, sum(amount)
from loan
group by account_id
order by amount desc
limit 10;

-- query 16
select `date`, count(loan_id)
from loan
where `date`<930907
group by `date`
order by `date` desc;

-- query 17
SELECT `date`, duration, COUNT(loan_id)
	FROM loan
    WHERE `date` BETWEEN 971201 AND 980101
    GROUP BY `date`, duration
    ORDER BY `date` ASC;

-- query 18
select account_id, `type`, sum(amount)
FROM trans 
where account_id = 396
group by `type`;




