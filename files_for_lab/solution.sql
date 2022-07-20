USE bank;

#1
SELECT client_id
	FROM client
    WHERE district_id = 1
    LIMIT 5;

#2
SELECT client_id
	FROM client
    WHERE district_id =72
    ORDER BY client_id DESC
    LIMIT 1;

#3 
SELECT amount
	FROM loan
    ORDER BY amount ASC
    LIMIT 3;
    
#4
SELECT DISTINCT status
	FROM loan
    ORDER by status ASC
    LIMIT 4;

#5
SELECT loan_id, payments
	FROM loan
    ORDER by payments ASC
    LIMIT 1;

#6
SELECT account_id, amount
	FROM loan
    ORDER by account_id ASC
    LIMIT 5;

#7
SELECT account_id
	FROM loan
    WHERE duration = 60
    ORDER By amount ASC
    LIMIT 5;
	
#8
SELECT DISTINCT k_symbol
	FROM `order`
    ORDER BY k_symbol ASC;

#9 
SELECT order_id
	from `order`
    WHERE account_id = 34;

#10
SELECT DISTINCT account_id
	from `order`
    WHERE order_id BETWEEN 29540
    AND 29560;

#11
SELECT amount
	FROM `order`
    WHERE account_to = 30067122;

#12
SELECT trans_id, `date`, `type`, amount
	from trans
    where account_id = 793
    ORDER BY `date` DESC
    LIMIT 10;

#13
SELECT district_id, count(client_id) as count
	from client
    WHERE district_ID < 10
    GROUP by district_id
    ORDER by district_id asc;

#14
SELECT `type`, count(card_id)
	from card
    GROUP by `type`;

#15
SELECT account_id, sum(amount)
	from loan
    GROUP by account_id
    ORDER BY sum(amount) DESC
    LIMIT 10;

#16 
select `date`, count(loan_id)
	from loan
	where date <= "930907"
    GROUP by `date`
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
    WHERE account_id = 396
    group by `type`;

    