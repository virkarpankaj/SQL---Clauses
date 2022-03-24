SELECT * FROM classicmodels.orderdetails;

select ordernumber, max(quantityordered) from orderdetails
group by orderNumber
order by max(quantityordered) 
limit 5; # displays top 5 rows

# while sorting with aggregate function - use group by 

select ordernumber, max(quantityordered) from orderdetails
group by orderNumber
order by max(quantityordered) desc
limit 2,5; # after top 2 displays next 5 rows

select ordernumber, max(quantityordered) from orderdetails
group by orderNumber
having max(quantityordered)>=70
order by max(quantityordered) desc

