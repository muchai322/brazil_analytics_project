---customer staging models
WITH source_data AS(
    SELECT 
    customer_unique_id AS customer_id,
    customer_zip_code_prefix AS zip_code,
    customer_city AS city,
    customer_state AS state



FROM  {{ source('brazil_ecommerce', 'customers') }}
)

SELECT * FROM source_data

