SELECT
    -- Degenerate dimensions
    order_id,
    order_item_id,

    -- Foreign keys
    customer_id,
    product_id,
    

    -- Date key
    DATE(order_purchase_timestamp) AS order_date,

    -- Measures
    price,
    freight_value

FROM {{ ref('int_customers_order_items_orders') }}