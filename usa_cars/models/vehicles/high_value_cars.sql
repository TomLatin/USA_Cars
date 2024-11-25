with all_cars_with_percentile as (
    select
        price,
        brand,
        model,
        year,
        title_status,
        mile_age,
        color,
        vin,
        lot,
        state,
        country,
        condition,
        PERCENT_RANK()
            over (partition by year order by price)
            as year_price_percentile
    from {{ ref('all_cars') }}
)

select * from all_cars_with_percentile
where year_price_percentile >= 0.9
order by year desc, price desc
