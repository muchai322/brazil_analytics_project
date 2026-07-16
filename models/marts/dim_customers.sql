-- Dimensional model for custumer
SELECT
  customer_id,
  customer_unique_id,
  city,
  zip_code,
  state
  FROM {{ref('stg_customers')}}