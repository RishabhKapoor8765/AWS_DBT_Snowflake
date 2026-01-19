{{
  config(
    materialized = 'ephemeral',
    )
}}

with listings as 
(
    select listing_id, property_type, room_type, city, country, bedrooms, bathrooms, listing_created_at from {{ ref('obt') }}
)
select * from listings