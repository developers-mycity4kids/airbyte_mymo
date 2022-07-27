
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT id, is_deleted, created_at, updated_at, campaign_id, name, status, to_timestamp(start_date) as start_date, to_timestamp(end_date) as end_date, deliverable_type, sort_order, enabled
FROM public.airbyte_task_details
