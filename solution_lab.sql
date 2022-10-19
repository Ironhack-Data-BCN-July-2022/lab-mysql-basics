use bank;

-- Q1
select client_id from client
WHERE district_id=1
limit 5;

-- Q2
select client_id from client
where district_id=72
order by client_id desc
limit 1;

-- Q3
select amount from loan
order by amount asc
limit 3
;

-- Q4
select distinct (status) from loan
order by status asc
;

-- Q5
select loan_id from loan
order by payments desc
limit 1
;

-- Q6
select account_id, amount from loan
order by account_id asc
limit 5
;

-- Q7 -- should we be limiting?
select account_id from loan
where duration = 60
order by amount asc
;

-- Q8
select distinct (k_symbol) from order_table
order by k_symbol asc
;

-- Q9
select order_id from order_table
where account_id = 34
;

-- Q10
select distinct(account_id) from order_table
where order_id between 29540 and 29560
;

-- Q11
select amount from order_table
where account_to = 30067122
;

-- Q12
select trans_id, date, type, amount from trans
where account_id = 793
order by date desc
limit 10
;

-- Q13
select district_id, count(district_id) from client
where district_id<10
group by district_id
order by district_id asc
;

-- Q14
select type, count(type) as counter from card
group by type
order by counter desc
;

-- Q15
select account_id, sum(amount) as suma from loan
group by account_id
order by suma desc
limit 10
;

-- Q16
select date, count(date) from loan
where date<930907
group by date
order by date desc
;

-- Q17
select date, duration, count(duration) from loan
where date between "971201" and "971231"
group by date, duration
order by date asc, duration asc
;

-- Q18
select account_id, type, sum(amount) from trans
where account_id= 396
group by type
order by type asc
;