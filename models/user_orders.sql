{{ config(materialized="table") }}

with final as (select u.email, o.product from users as u inner join orders as o on u.id = o.user_id)

select *
from final
