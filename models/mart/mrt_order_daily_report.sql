SELECT DATE_TRUNC(order_created_at, DAY) AS reporting_date,
<<<<<<< HEAD
    2 AS col_2,
=======
    1 AS col_1,
>>>>>>> 018aaa49e241cbcd89bc0707af15e23d21a07979
    mapping.account_manager,
    mapping.state,
    COUNT(DISTINCT order_id) AS total_orders,
    AVG(total_distinct_items) AS average_total_distinct_items,
    SUM(sum_feedback_score) / SUM(total_feedbacks) AS average_feedback_score,
    AVG(total_order_amount) AS average_total_order_amount
FROM {{ ref('int_sales_database__order') }} AS orders
LEFT JOIN {{ ref('stg_google_sheets__account_manager_region_mapping') }} as mapping ON orders.user_state = mapping.state
GROUP BY report_date,
    account_manager,
    state