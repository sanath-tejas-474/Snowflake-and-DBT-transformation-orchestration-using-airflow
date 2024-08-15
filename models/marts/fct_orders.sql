select
    orders.*,
    ot.gross_item_sales_amount,
    ot.item_discount_amount
from
    {{ ref('stg_tpch_orders') }} as orders
join
    {{ ref('int_orders_items_summary') }} as ot 
        on orders.order_key = ot.order_key
order by order_date