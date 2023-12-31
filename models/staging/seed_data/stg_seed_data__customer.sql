with 

src_customer as (

    select * from {{ ref('base_seed_data__customer') }}

),

src_customer_casted as (

    select
        customer_id,
        first_name,
        last_name,
        full_name,
        phone_number,
        email,
        street,
        city,
        state,
        zip_code

    from src_customer

)

select * from src_customer_casted
