SELECT distinct(transactions.currency) from transactions;

select count(*) from transactions where transactions.currency='INR\r';

select count(*) from transactions where transactions.currency='INR';

#one is INR and the other is INR\r,should be stored in INR\r

select count(*) from transactions where transactions.currency='USD';
select count(*) from transactions where transactions.currency='USD\r';

select * from transactions where transactions.currency='USD\r' or transactions.currency='USD';
#cuplicate values found,\r is a line character

#removing records with INR and USD
select sum(transactions.sales_amount) from transactions inner join date 
on transactions.order_date=date.date 
where date.year=2020 and (transactions.currency="INR\r" or transactions.currency="USD\r");

select sum(transactions.sales_amount) from transactions inner join date 
on transactions.order_date=date.date 
where date.year=2020 and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");

select sum(transactions.sales_amount) from transactions inner join date 
on transactions.order_date=date.date 
where date.year=2020 and date.month_name="February" and (transactions.currency="INR\r" or transactions.currency="USD\r");


select sum(transactions.sales_amount) from transactions inner join date 
on transactions.order_date=date.date 
where date.year=2019 and (transactions.currency="INR\r" or transactions.currency="USD\r");


select sum(transactions.sales_amount) from transactions inner join date 
on transactions.order_date=date.date 
where date.year=2020 and transactions.market_code="Mark001";