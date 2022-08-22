
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT id, is_deleted, created_at, updated_at, campaign_id, user_id, participants_status, payment_status, final_payout, payment_mode_id, payment_meta, feedback, reimbursement, action_required, to_timestamp(payment_creation_time) as payment_creation_time, to_timestamp(payment_completion_time) as payment_completion_time, campaign_amount, falcon_transaction_info, falcon_transaction_id
FROM public.mymo_campaign_user_campaign_participants
