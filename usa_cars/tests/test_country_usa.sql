{{ config(severity='warn', message='There are countries different from the USA.') }}
SELECT country
FROM {{ref('all_cars')}}
WHERE lower(trim(country)) != 'usa'