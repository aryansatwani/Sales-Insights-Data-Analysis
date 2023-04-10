# Sales-Insights-Data-Analysis
Data Analysis using Power BI and MySQL

AtliQ Harware is a Computer hardware manufacturer is facing issues in terms of their sales and then 

-Aims grid-define a problem and define strategy to tackle that problem and then 
-Data Cleaning
-Data Merging


Power BI is a powerful product with a dashboard where you can track revenue numbers and sales 
quantity numbers year over year you can also track the revenue breakdown by 
regions by different products and so on and you can also track the revenue trends 

A data analyst will build a dashboard they will give it to stakeholders who 
could be sales director or marketing head and after that those people start 
consuming the dashboard they give the feedback and based on the feedback this 
dashboards evolved 
AtliQ Hardware is a company which supplies computer hardware and peripherals to 
many of the clients they have this client called Excel stores normal stores 
across India and they supply all these equipments to them now

Delhi-Head Office
Regional Offices:
Jaipur
Lucknow
Ahmedabad
Surat
Tirichapalli
Durgapur
Singhbum
Bhopal
 

Company Challenge: 
Market is growing dynamically and the sales director is facing issues in terms of 
tracking the sales in this dynamically growing market and he's having issues 
with the insights of his business so he has this Regional Managers.
Data discussions are done ove the phone and can be sugarcoated.

AtliQ hardware is a pretty big business and they have so many clients so that these Excel files that you get there are so 
many Excel files with so many rows in it 

In simplistic terms we need to show how our business is doing what are the biggest areas where 
wher we need to focus you know so if there is a region where the sales numbers are 
declining maybe we can start some promotion offer or maybe we can increase engagement. 


We need to get a simple understandable digestible insight. 

 
This information  will be telling him the truth and then as a sales director he 
can make data-driven decisions to increase the sales of his company.

AIMS grid is a project management tool and it has four 
components:
1.  pain point-what do we want to do exactly
2.  Stakeholders so in this project who all will be involved so here of course 
            -marketing team 
            -sales team 
            -IT team(data analysis-data master and softwae engineering team-Falcons)

(assuming that AtliQ hardware or already has a data analysis 
team in-house) 
3. end result-Powe BI dashboard


our sales director or even Regional Managers can go and look into and it gives you a real-time information on your sales numbers the fourth component 

4. success criteria- by exactly specifying your success criteria
so in this case our criteria would be we want the cost to go down by 10% also

Power BI saves cost of operations by not using a million excel files and gives simple insights.
Falcons is a team of software engineers who own the sales management system so AtliQ hardware
has this sales management system which is just a simple software that is a
keeping track of all the sales number so whenever they sell any computer or any
hard days in any local region this software is printing the invoice so it
has all the records stored in a MySQL database and this database and this
application is or owned by this Falcons team over to 
data masters.
Data Masters will build a dashboard on top of the MySQL database.


If data volume is high you want to make sure that your MySQL database is not 
affected by the queries that you are doing in your Power BI so sometimes what 
people do is not sometimes actually many many times they will design a data 
warehouse(taking the data from MySQL which is also known as OLTP 
which is online transaction processing system)
OLTP- it is a very critical system you cannot afford for that system to go down otherwise your regular sales operations 
and gets hampered right for you 
So we will pull the data from OLTP which is MySQL in our case they do all the 
transformation which is also called ETL (extract transform and load) 
and after doing that transformation they store the data in a data warehouse .Eg.Terra Data,Snowflakeand transfomation done through Python,Pandas or Apache 95
there are many data warehouse such as Tara data or snowflake and so on and for 
For reformatting the
data in a way that is best for performing analytical queries
because if you perform your query directly on MySQL database there are two
problems 
1.If you cause that database to slow down then your
mainstream business is affected.
2.The data stored in the
OLTP is not often in a format that you want so you want to do lot of
transformation such as currency conversation.
You want to remove the columns which are not needed there could be n number of transformation that you 
want to do and all of that happens in the ETL tools such as informatica or 
Apache 95 done by data engineers that build
warehouse infrastructure.
Data Masters will directly plug power bi to 

Power BI pulling all tables into its environment.

We will use Power Query.
Data Model shows a relationship between the different data tables through the same column names.

market_codes in sales market and market_code in sales transaction was thought to be different, hence no relationship was drawn initially.

Similarly, date in sales date with order_date in sales transaction.

This is called star schema.
It is an approach to develop to data warehouse.
There is a fact table and a dimension table.
Fact Table-Pulls all the events that are occuring. Here it is Sales Transactions.
Dimesnion Table-Customer,Product Model,Market,sales date

We need to filter out New York and Paris as Atliq Hardware is only dealing in India for now.

We transform the data.
-Removing Garbage values where quantities sold is more than 0 but amount is zero or negative.
-Removing cities outside of India(which does not have a branch)
-Convert USD to INR with a new column called "Normalised Sales Amount" using conditional columns
-Removing currency duplication(gives INR twice)

Blank Product code is the problem of the Falcons Team

Asking for feedback:
Insights:
-Bottom 2 products-special discount?
-Biggest downturn by region
-Client specific analysis
 Dashboards evolve by feedback

