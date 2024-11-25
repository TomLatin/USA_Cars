SELECT
    price,
    brand,
    model,
    "year",
    title_status,
    mileage AS mile_age,
    color,
    vin,
    lot,
    "state",
    country,
    condition
FROM {{ source('usa_cars_source', 'usa_cars_datasets') }}