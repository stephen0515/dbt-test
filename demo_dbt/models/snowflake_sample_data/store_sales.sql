with source_store_sales as (
    select * from {{ source('snowflake_test','STORE_SALES')}}
),

final as (
    select * from source_store_sales
)

select * from final