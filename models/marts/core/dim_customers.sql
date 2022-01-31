

with customers as (

    select * from {{ ref('stg_customers') }}

),

orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}

),

final as (

    select
        customers.customer_id,
        orders.order_date,
        orders.status,
        payments.amount as customer_lifetime_value

    from customers

    left join orders on orders.order_id = customers.customer_id
    left join payments ON payments.payment_id = customers.customer_id

)

select * from final