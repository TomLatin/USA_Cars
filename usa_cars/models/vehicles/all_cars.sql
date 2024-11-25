select
    price,
    brand,
    model,
    year,
    title_status,
    mileage as mile_age,
    color,
    vin,
    lot,
    state,
    country,
    condition
from {{ source('usa_cars_source', 'usa_cars_datasets') }}
