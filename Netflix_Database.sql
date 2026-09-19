select * from customers

--1. Total customers 
select count(*) from customers;

--2.Active Customers
select count(*) as Active_Customers from customers
where "Account_Status"='Active';

--3.Customers by Subscription Plan
select "Subscription_Plan" ,count(*) as customers
from customers
group by "Subscription_Plan"
order by 2 desc;

--4.Renevue by Subscription plan
select "Subscription_Plan",sum("Customer_Renevue") as renevue
from customers
group by "Subscription_Plan"
order by 2 desc;

--5.Popular Genres
select "Genre" , count(*) as views 
from customers
group by "Genre"
order by 2 desc;

--6.Country-wise customers
select "Country" , count (*) as customers
from customers
group by "Country" 
order by 2 desc;

--7.Device Usage
select "Device" , count(*) as customers
from customers
group by "Device"
order by 2 desc;

--8.Average Watch Hours by Plan
select "Subscription_Plan",
round(avg("Watch_Hours")::numeric,2)
as Avg_Watch_Hours
from customers
group by "Subscription_Plan";

--9.Top 10 Customers by Renevue
select "Customer_Name","Customer_Renevue" as Customer_Renevue
from customers
order by 2 desc;

--10.Movie vs TV Show
select "Content_Type",count(*) as Total
from customers
group by "Content_Type";

--11.Average Raiting by Genre
select "Genre",round(Avg("Avg_Rating")::numeric,2)
AS Average_Raiting 
from customers
group by "Genre"

--12.Account Status
select "Account_Status",count(*) as Customers from customers
group by "Account_Status"
order by 2 desc;