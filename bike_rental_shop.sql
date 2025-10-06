-- bike rental shop - sql case study
-- objective: analyze bike rental shop performance and customer behavior using sql

-- 1. how many bikes does the shop own by category (only categories with more than 2 bikes)
select 
    category, 
    count(id) as number_of_bikes
from bike
group by category
having count(id) > 2;

-- 2. list of customer names with total number of memberships purchased by each
select 
    c.name as customer_name, 
    coalesce(count(m.id), 0) as membership_count
from customer c
left join membership m on c.id = m.customer_id
group by c.name
order by membership_count desc;

-- 3. prepare a list of new rental prices for winter discounts
select 
    id as bike_id,
    category,
    price_per_hour as old_price_per_hour,
    round(
        case
            when category = 'electric' then price_per_hour * 0.90
            when category = 'mountain bike' then price_per_hour * 0.80
            else price_per_hour * 0.50
        end, 2
    ) as new_price_per_hour,
    price_per_day as old_price_per_day,
    round(
        case
            when category = 'electric' then price_per_day * 0.80
            when category = 'mountain bike' then price_per_day * 0.50
            else price_per_day * 0.50
        end, 2
    ) as new_price_per_day
from bike;

-- 4. count of available and rented bikes by category
select 
    category,
    count(case when status = 'available' then id end) as available_bikes_count,
    count(case when status = 'rented' then id end) as rented_bikes_count
from bike
group by category;

-- 5. total rental revenue by month, by year, and all-time
select 
    year(start_timestamp) as year,
    month(start_timestamp) as month,
    sum(total_paid) as revenue
from rental
group by year, month

union all

select 
    year(start_timestamp) as year,
    null as month,
    sum(total_paid) as revenue
from rental
group by year

union all

select 
    null as year,
    null as month,
    sum(total_paid) as revenue
from rental
order by year, month desc;

-- 6. total membership revenue by year, month, and membership type
select 
    year(start_date) as year,
    month(start_date) as month,
    mt.name as membership_name,
    sum(total_paid) as total_revenue
from membership m
join membership_type mt on m.membership_type_id = mt.id
group by year, month, mt.name
order by year, month, mt.name;

-- 7. memberships purchased in 2023 with subtotals and grand totals
select 
    mt.name as membership_type,
    month(start_date) as month,
    sum(total_paid) as total_revenue
from membership m
join membership_type mt on m.membership_type_id = mt.id
where year(start_date) = 2023
group by month, mt.name
order by month, mt.name;

-- 8. segment customers based on number of rentals
with customer_segment as (
    select 
        customer_id,
        count(1) as total_rentals,
        case
            when count(1) > 10 then 'more than 10'
            when count(1) > 5 then 'between 5 to 10'
            else 'fewer than 5'
        end as category
    from rental
    group by customer_id
)
select 
    category as rental_count_category,
    count(*) as customer_count
from customer_segment
group by rental_count_category
order by customer_count;
