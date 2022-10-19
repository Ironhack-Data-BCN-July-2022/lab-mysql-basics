USE bank

-- Q1
select client_id
from client
where district_id = 1
limit 5;

-- Q2
select client_id
from client 
where district_id = 72
order by client_id DESC
limit 1;

-- Q3
select amount
from loan
order by amount asc
limit 3;

-- Q4
select status
from loan
group by status
order by status;

-- Q5
select loan_id
from loan 
order by payments DESC
limit 1;

-- Q6 
select account_id, amount
from loan
order by account_id asc
limit 5;

-- Q7
select account_id
from loan
where duration = 60
order by amount
limit 5;

-- Q8
select distinct k_symbol
from `order`
order by k_symbol;

-- Q9
select order_id
from `order`
where account_id = 34;

-- Q10
select account_id
from `order`
where order_id between 29540 and 29560
group by account_id;

-- Q11
select sum(amount)
from `order`
where account_to = 30067122;

-- Q12
select trans_id, date, type, amount
from trans
where account_id = 793
order by date desc
limit 10;

-- Q13
select distinct district_id, count(client_id)
from client
where district_id < 10
group by district_id
order by district_id ASC;

-- Q14
select type, count(card_id)
from card
group by type;

-- Q15
select account_id, sum(amount)
from loan
group by account_id
order by sum(amount) desc
limit 10;

-- Q16
select date, count(loan_id)
from loan
where date < 930907
group by date
order by date DESC;


-- Q17
select date, count(loan_id), duration
from loan
where date like ('9712%')
group by date, duration
order by date and duration;

-- Q18
select account_id, type, sum(amount) as total_amount
from trans 
where account_id = 396
group by type;






