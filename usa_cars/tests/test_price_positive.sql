SELECT price
FROM {{ref('all_cars')}}
WHERE price < 0