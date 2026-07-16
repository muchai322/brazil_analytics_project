-- Intermediate model for customers and order items
WITH customers_order_details AS (
    SELECT 
        c.customer_id,
        c.zip_code,
        c.city,
        c.state,
        oi.order_id,
        oi.order_item_id,
        oi.product_id,
        oi.shipping_limit_date,
        oi.order_purchase_timestamp,
        oi.price,
        oi.freight_value
    FROM {{ ref('stg_customers') }} AS c
    JOIN {{ ref('int_orders_items_details') }} AS oi
    ON c.customer_id = oi.customer_id
)
SELECT * FROM customers_order_details