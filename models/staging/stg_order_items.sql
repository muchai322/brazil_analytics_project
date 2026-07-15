----order items staging models
WITH SOURCE_ORDER_ITEMS AS (
    SELECT 
        order_item_id AS order_id,
        product_id,
        shipping_limit_date,
        price,
        freight_value
FROM {{ source('brazil_ecommerce', 'orders_items') }}
)
SELECT * FROM SOURCE_ORDER_ITEMS