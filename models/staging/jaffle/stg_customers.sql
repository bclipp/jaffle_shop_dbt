with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from jaffle_shop_customers

)

SELECT * FROM customers