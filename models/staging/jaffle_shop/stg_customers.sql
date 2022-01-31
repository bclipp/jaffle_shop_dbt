 {{ config( as_columnstore = false, ) }}
with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop', 'jaffle_shop_customers') }}

)

SELECT * FROM customers