--- Store all dataset in the database 

create table bank_churn
(
CustomerId varchar(40),
Surname varchar(40),
CreditScore int,
Geography varchar(40),
Gender varchar(40),
Age int,
Tenure int,
Balance float, 
NumOfProducts , count(*) as total_churn,
sum(Exited) as churned_customers,
round(avg(cast(Exited as numeric))*100,2) as churn_percentage
from bank_churn
group by int,
HasCrCard int,
IsActiveMember int,
EstimatedSalary float,
Exited int
)

select * from bank_churn

-- Bank Churn Percentage 
Select round(avg(cast(Exited AS numeric)) * 100, 2) as churn_percentage
from bank_churn

-- Gender wise churn Percentage
select Gender , count(*) as total_customers , sum(Exited) as churned_customer, 
round(avg(cast(Exited as numeric))*100,2) as churn_percentage
from bank_churn
group by gender 
order by churn_percentage

-- Georagphically churn percentage
select Geography , count(*) as total_customers , sum(Exited) as churned_customer,
round(avg(cast(Exited as numeric))*100,2) as churn_percentage
from bank_churn
group by Geography
order by churn_percentage

-- Churn and Active Status 
select 
case when IsActiveMember = 1 then 'Active' else 'Not Active' end as active_status,
count(*) as total_customers,
sum(Exited) as churned_customer,
round(avg(cast(Exited as numeric))*100 , 2) as churn_percentage
from bank_churn
group by IsActiveMember
order by churn_percentage

-- churn on bank balance 

SELECT 
    CASE WHEN Balance = 0 THEN 'Zero Balance' ELSE 'Has Balance' END AS balance_status,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(CAST(Exited AS NUMERIC)) * 100, 2) AS churn_rate_percentage
FROM bank_churn
GROUP BY balance_status;

-- Salary wise Churn 

select max(EstimatedSalary)
from bank_churn


select min(EstimatedSalary)
from bank_churn

SELECT 
  CASE 
    WHEN EstimatedSalary < 200000 AND EstimatedSalary >= 100000 THEN 'Above 1 Lakh'
    WHEN EstimatedSalary < 100000 AND EstimatedSalary >= 50000 THEN 'Above 50K'
    WHEN EstimatedSalary < 50000 AND EstimatedSalary >= 10000 THEN 'Above 10K'
    WHEN EstimatedSalary < 10000 AND EstimatedSalary >= 1000 THEN 'Above 1K'
    ELSE 'Below 1K'
  END AS salary_estimate,
  
  COUNT(*) AS total_customers,
  SUM(Exited) AS churned_customers,
  ROUND(AVG(CAST(Exited AS NUMERIC)) * 100, 2) AS churn_rate_percentage

FROM bank_churn
GROUP BY salary_estimate
ORDER BY churn_rate_percentage ;

-- churn number by products 

select NumOfProducts , count(*) as total_customer,
sum(Exited) as churned_customers,
round(avg(cast(Exited as numeric))*100,2) as churn_percentage
from bank_churn
group by NumOfProducts
order by NumOfProducts ASC

-- churn number by 

select Tenure , count(*) as total_customer,
sum(Exited) as churned_customers,
round(avg(cast(Exited as numeric))*100,2) as churn_percentage
from bank_churn
group by Tenure
order by Tenure ASC
