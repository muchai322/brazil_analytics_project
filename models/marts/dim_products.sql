-- Dimensional model for products
SELECT DISTINCT
    product_id
FROM {{ ref('stg_order_items') }}