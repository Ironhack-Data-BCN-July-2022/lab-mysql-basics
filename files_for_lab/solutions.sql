#1
use bank;
SELECT DISTINCT client_id
	from client
ORDER BY district_id asc
limit 5;



#2 In the client table, get an id value of the last client where the district_id equals to 72.
SELECT client_id
	from client
where district_id=72
ORDER BY client_id desc
limit 1;




# Get the 3 lowest amounts in the loan table.
SELECT amount
	from loan
ORDER BY amount asc
limit 3;



# What are the possible values for status, ordered alphabetically in ascending order in the loan table?
SELECT status
	from loan
ORDER BY status asc;



#What is the loan_id of the highest payment received in the loan table? (6415)

select loan_id
from loan
order by payments desc
limit 1;




#What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
select amount, account_id
from loan
order by account_id asc
limit 5;





#What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?

select account_id, amount, duration
	from loan
    where duration=60
    order by amount asc
    limit 5;
 
 
 
 
 #What are the unique values of k_symbol in the order table?
 #Note: There shouldn't be a table name order, since order is reserved from the 
 #ORDER BY clause. You have to use backticks to escape the order table name.
 select DISTINCT k_symbol
 from bank.order
 
 
 
 
 #In the order table, what are the order_ids of the client with the account_id 34?
 
 select order_id, account_id
 from bank.order
 where account_id=34;
 
 
 
 
 
 #In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
 
 select distinct account_id
 from bank.order
 WHERE order_id BETWEEN 29540 AND 29561;
 
 
 
 
 
 #In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
#5123


select amount
from bank.order 
where account_to=30067122;





#In the trans table, show the trans_id, date, type and amount of the 10 first 
#transactions from account_id 793 in chronological order, from newest to oldest.
select trans_id,bank.trans.date, bank.trans.type, amount
from trans
where account_id=793
order by date desc
limit 10;



#In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id?
# Show the results sorted by the district_id in ascending order.

select district_id,count(client_id)
	from client
    where district_id<10
group by district_id
order by district_id asc;




#In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.

  select type,count(card_id)
  from card
  group by type
  order by count(type) desc;
  
  
  
  #Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.
  
  select account_id,sum(amount)
  from loan
  group by account_id
  order by amount desc
  limit 10;
  
  
  
  #In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.
  select distinct count(loan_id), date
  from loan
 where date< 930907
 group by date
  order by date desc;
  
#In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, 
#ordered by date and duration, both in ascending order. 
#You can ignore days without any loans in your output.

select distinct duration,count(loan_id),date
from loan
where date like ('9712%')
group by duration, date
order by duration and date asc;



#In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming).
# Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.

select account_id,type, sum(amount) as total_amount
from trans
where account_id=396
group by type 
order by type asc;






 
 











	
    
    
    
