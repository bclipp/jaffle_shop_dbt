 {{ config( as_columnstore = false, ) }}

with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{ source('jaffle_shop', 'jaffle_shop_orders') }}

)

SELECT * FROM orders