{{ config(materialized='table') }}

with user_orders as (
    select * from users inner join orders on users.id = orders.user_id
)

select * from user_orders;