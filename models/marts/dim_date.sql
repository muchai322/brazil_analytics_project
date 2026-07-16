-- Dimensional model for dates
SELECT DISTINCT
    DATE(order_purchase_timestamp) AS order_date,
    EXTRACT(YEAR FROM order_purchase_timestamp) AS order_year,
    EXTRACT(MONTH FROM order_purchase_timestamp) AS order_month,
    EXTRACT(DAY FROM order_purchase_timestamp) AS order_day,
    EXTRACT(DAYOFWEEK FROM order_purchase_timestamp) AS order_day_of_week,
    EXTRACT(WEEK FROM order_purchase_timestamp) AS order_week
FROM {{ ref('stg_orders') }}