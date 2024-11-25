select
    brand,
    model,
    MIN(year) as min_year,
    MAX(year) as max_year,
    MEDIAN(year) as median_year,
    MIN(mile_age) as min_mile_age,
    MAX(mile_age) as max_mile_age,
    MEDIAN(mile_age) as median_mile_age,
    MIN(price) as min_price,
    MAX(price) as max_price,
    MEDIAN(price) as median_price
from
    {{ ref('all_cars') }}
group by
    brand, model
