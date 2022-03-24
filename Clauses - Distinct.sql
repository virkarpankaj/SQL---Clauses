select country from classicmodels.customers;

# suppose you want to find no of countries --no country should be repeated

select distinct(country) from classicmodels.customers;

# sort the table-- we get sorted table 
select customernumber, customername, country from customers order by country;
select customernumber, customername, country from customers order by country desc;