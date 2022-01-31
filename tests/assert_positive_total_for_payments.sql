-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.
select
    payment_id,
    sum(amount) as amount
from {{ ref('stg_payments') }}
group by payment_id
having not(amount >= 0)
