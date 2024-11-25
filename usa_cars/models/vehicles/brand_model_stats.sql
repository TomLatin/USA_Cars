SELECT
    brand,
    model,
    MIN(year) AS min_year,
    MAX(year) AS max_year,
    MEDIAN(year) AS median_year,
    MIN(mile_age) AS min_mile_age,
    MAX(mile_age) AS max_mile_age,
    MEDIAN(mile_age) AS median_mile_age,
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    MEDIAN(price) AS median_price
FROM
    {{ ref('all_cars') }}
GROUP BY
    brand, model

