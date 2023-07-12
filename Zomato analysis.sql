create database Zomato;
use Zomato;
select * from zomato;
select distinct RAting_text from zomato;

8))Which are the top-rated restaurants in a specific city?;

select distinct  Restaurant_Name from zomato where Rating_text='excellent';
select distinct distinct  count(Restaurant_Name) from zomato where Rating_text='excellent';
select Restaurant_Name,Aggregate_rating from zomato order by Aggregate_rating desc limit 10;

1)))What is the average rating of restaurants in each cuisine category?;
 
 SELECT Cuisines, avg(aggregate_rating) , COUNT(*) AS Restaurant_Count
FROM zomato
GROUP BY Cuisines
ORDER BY Restaurant_Count DESC;

2))How many restaurants are there in each locality?;

select Locality , COUNT(*) AS Restaurant_Count from zomato
group by  Locality
order by Restaurant_Count desc;
 
 
3)) What is the average cost for two people at restaurants in different cities?;
 
select avg(Average_cost_for_two) as Average, city from zomato 
group by city
order by Average;

4))Which restaurants have the highest number of votes in a particular city?;
select Votes , city, Restaurant_Name from zomato 
 order by votes desc;
select * from zomato;
 
5))How many restaurants offer online delivery or table booking options?;
select count(*) as restaurants from zomato
where Has_Table_booking in ('Yes') OR Has_Online_delivery in ('Yes');

select Restaurant_Name, Has_Table_booking from zomato where Has_Table_booking='Yes' OR Has_Online_delivery= 'Yes' ;
select Restaurant_Name, Has_Table_booking ,Has_Online_delivery from zomato where Has_Table_booking='Yes';

6))Which cities have the highest number of restaurants?;
select count(*) as restaurant_Count, city from zomato
group by city
order by restaurant_Count desc
limit 10;

7))What is the distribution of restaurant ratings across different price ranges?;
select Restaurant_Name , Price_range from zomato order by Price_range desc;
select Price_range,avg(Aggregate_rating) as Average from zomato
group by Price_range 
order by Price_range;
select * from zomato;

 
 