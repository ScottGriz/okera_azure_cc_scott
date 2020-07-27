view: transactions_amount_country {
  derived_table: {
    sql: SELECT
transaction_amount_by_country."transactions_cc.amount"  AS "transaction_amount_by_country.transactions_cc_amount",
  transaction_amount_by_country."transactions_cc.country"  AS "transaction_amount_by_country.transactions_cc_country"
FROM transaction_amount_by_country

GROUP BY 1,2
ORDER BY 1 DESC
       )
 ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: transaction_amount_by_country_transactions_cc_amount {
    type: number
    sql: ${TABLE}."transaction_amount_by_country.transactions_cc_amount" ;;
  }

  dimension: transaction_amount_by_country_transactions_cc_country {
    type: string
    sql: ${TABLE}."transaction_amount_by_country.transactions_cc_country" ;;
  }

  set: detail {
    fields: [transaction_amount_by_country_transactions_cc_amount, transaction_amount_by_country_transactions_cc_country]
  }
}
