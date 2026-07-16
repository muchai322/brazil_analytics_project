WITH source_order_items AS (

    SELECT
        product_id,
        order_id,
        order_item_id,
        shipping_limit_date,
        price,
        freight_value
    FROM {{ source('brazil_ecommerce', 'orders_items') }}

)

SELECT *
FROM source_order_items