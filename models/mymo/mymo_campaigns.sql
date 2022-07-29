
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT id, is_deleted, created_at, updated_at, is_active, brand_id, po_number, name, name_slug, to_timestamp(start_time) as start_time, to_timestamp(end_time) as end_time, description, is_fixed_amount, amount, min_amount, max_amount, approval_status, approved_by, approved_time, image_url, max_slots, terms, read_this, moderation_required, total_payout, proof_instructions, auto_rejection_days, auto_rejection_hours, reimbursement, campaign_type, to_timestamp(last_sync_time) as last_sync_time, campaign_tags, live_date, brand_product_id, unique_hashtags
FROM public.airbyte_campaigns