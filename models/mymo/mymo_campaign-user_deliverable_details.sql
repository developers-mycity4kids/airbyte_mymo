
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT id, is_deleted, created_at, updated_at, deliverable_type, brief, read_this, photo_instructions, caption, tags, hash_tags, other_rules, terms, example, campaign_id, product_purchase_link, product_review_link, survey_link, campaign_link, proof_allowed, proof_required, task_detail_id, sort_order, description, to_timestamp(start_date) as start_date, to_timestamp(end_date) as end_date, auto_rejection_days, auto_rejection_hours, step_instructions_media, script_instructions, meta_info, buy_now_link
FROM public.mymo_campaign-user_deliverable_details
