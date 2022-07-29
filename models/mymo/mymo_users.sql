
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT id, is_deleted, created_at, updated_at, public_id, first_name, last_name, email, contact, gender, to_timestamp(dob) as dob, location, latitude, longitude, is_email_verified, state_name, city, is_card_created, can_create_card, minimum_kyc_status, user_code, referred_by
FROM public.airbyte_users
