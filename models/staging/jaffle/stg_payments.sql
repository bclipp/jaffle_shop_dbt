with payments as (

    select
        id as payment_id,
        ORDERID,
        PAYMENTMETHOD,
        amount / 100 as amount

    from stripe_payments

)

select * from payments