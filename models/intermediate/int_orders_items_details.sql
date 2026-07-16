-- Intermediate model for orders_items and orders
WITH orders_items_details as(
    
    SELECT 
        oi.order_id,
        oi.order_item_id,
        oi.product_id,
        oi.shipping_limit_date,
        oi.price,
        oi.freight_value,
        o.order_status,
        o.customer_id,
        o.order_purchase_timestamp,
        o.order_approved_at,
        o.order_delivered_carrier_date,
        o.order_delivered_customer_date,
        o.order_estimated_delivery_date
    FROM {{ ref('stg_order_items') }} AS oi
    JOIN {{ ref('stg_orders') }} AS o
    ON oi.order_id = o.order_id
)
SELECT * FROM orders_items_details