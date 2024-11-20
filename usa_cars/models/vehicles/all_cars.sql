SELECT *
FROM {{ source('usa_cars_source', 'usa_cars_datasets') }}