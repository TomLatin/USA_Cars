SELECT
    brand,
    model,
    MIN(year) AS min_year,
    MAX(year) AS max_year,
    MEDIAN(year) AS median_year,
    MIN(mileage) AS min_mileage,
    MAX(mileage) AS max_mileage,
    MEDIAN(mileage) AS median_mileage,
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    MEDIAN(price) AS median_price
FROM
    {{ ref('all_cars') }}
GROUP BY
    brand, model

