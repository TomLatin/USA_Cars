WITH all_cars_with_percentile AS (
SELECT
    price,
    brand,
    model,
    "year",
    title_status,
    mile_age,
    color,
    vin,
    lot,
    "state",
    country,
    condition,
    PERCENT_RANK() OVER (PARTITION BY year ORDER BY price) AS year_price_percentile
FROM {{ ref('all_cars') }}
)

SELECT * FROM all_cars_with_percentile
WHERE year_price_percentile >= 0.9
ORDER BY year DESC, price DESC


