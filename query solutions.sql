use bank;

#query 1

select client_id
from client
where district_id = 1
limit 5;

#query 2

select client_id
from client
where district_id = 72
order by client_id desc
limit 1;

#query 3

select amount
from loan
order by amount asc
limit 3;

#query 4
select distinct status
from loan
order by status asc
limit 1;

#query 5

select loan_id, payments
from loan
order by payments asc
limit 1;

#query 6

select account_id, amount
from loan
order by account_id asc
limit 5;

#query 7

select account_id
from loan
where duration = 60
order by amount asc
limit 5;

#query 8

select distinct k_symbol
from `order`
order by k_symbol;

#query 9

select order_id 
from `order` 
where account_id = 34;

#query 10

select distinct account_id
from `order` where order_id between 29540
and 29560;

#11
select amount
from `order`
where account_to = 30067122;

#12
select trans_id, `date`, `type`, amount
from trans
where account_id = 793
order by `date` desc
limit 10;

#13
select district_id, count(client_id) as count
from client
where district_ID < 10
group by district_id
order by district_id asc;

#14
select `type`, count(card_id)
from card
group by `type`;

#15
select account_id, sum(amount)
from loan
group by account_id
order by sum(amount) desc
limit 10;

#16 
select `date`, count(loan_id)
from loan
where date <= "930907"
group by `date`
order by `date` desc
LIMIT 5;

#17
select `date`, duration, count(loan_id)
from loan
where date between "971201" and "980101"
GROUP by `date`, duration
order by `date` asc;

#18
select account_id, `type`, sum(amount)
from trans
where account_id = 396
group by `type`;
