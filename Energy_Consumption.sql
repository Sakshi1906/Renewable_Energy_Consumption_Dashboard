CREATE database tableau;

create schema tableau_Data;

create table tableau_dataset (
Household_ID	string,Region	string,Country	string,Energy_Source	string,
Monthly_Usage_kWh	float,Year	int,Household_Size	int,Income_Level	string,
Urban_Rural	string,Adoption_Year	int,Subsidy_Received	string,Cost_Savings_USD float
);

select * from tableau_dataset;

create table energy_consumption as
select * from tableau_dataset;

Select * from energy_consumption;

Select income_level, count(*) from energy_consumption group by income_level;

//Increase Low-10, Middle-20, High-30

update energy_consumption
set monthly_usage_kwh = monthly_usage_kwh*1.1
where income_level = 'Low'

update energy_consumption
set monthly_usage_kwh = monthly_usage_kwh*1.2
where income_level = 'Middle'

update energy_consumption
set monthly_usage_kwh = monthly_usage_kwh*1.3
where income_level = 'High'

//Decrease Low-10, Middle-20, High-30

update energy_consumption
set cost_savings_usd = cost_savings_usd*0.9
where income_level = 'Low'

update energy_consumption
set cost_savings_usd = cost_savings_usd*0.8
where income_level = 'Middle'

update energy_consumption
set cost_savings_usd = cost_savings_usd*0.7
where income_level = 'High'