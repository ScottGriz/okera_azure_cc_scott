
 view: transactions_amount_country {
#   # Or, you could make this view a derived table, like this:
   derived_table: {
     sql: SELECT
         country as country
         , sum(amount) as amount
       FROM transactions_cc
       GROUP BY 1
      ORDER BY 1 ASC
       ;;
   }
#
#   # Define your dimensions and measures here, like this:
   dimension: country {
     description: "Country"
     type: string
     sql: ${TABLE}.country ;;
   }
#
   dimension: amount {
     description: "The sum of amount "
     type: number
     sql: ${TABLE}.amount ;;
   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
}
