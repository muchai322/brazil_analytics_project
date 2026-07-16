---intermediate model for customer orders
WITH customer_orders AS (
    SELECT 
        c.customer_id,
        c.zip_code,
        c.city,
        c.state,
        o.order_id,
        o.order_status,
        o.order_purchase_timestamp,
        o.order_approved_at,
        o.order_delivered_carrier_date,
        o.order_delivered_customer_date,
        o.order_estimated_delivery_date
    FROM {{ ref('stg_customers') }} AS c
    JOIN {{ ref('stg_orders') }} AS o
    ON c.customer_id = o.customer_id
)
SELECT * FROM customer_orders