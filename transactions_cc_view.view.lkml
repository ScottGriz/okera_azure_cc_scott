view: transactions_cc_view {
  derived_table: {
    sql: select * from transactions_cc
      ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: tnxid {
    type: string
    sql: ${TABLE}.tnxid ;;
  }

  dimension_group: tnxdate {
    type: time
    sql: ${TABLE}.tnxdate ;;
  }

  dimension: ccn {
    type: string
    sql: ${TABLE}.ccn ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.ssn ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  set: detail {
    fields: [
      tnxid,
      tnxdate_time,
      ccn,
      amount,
      userid,
      first_name,
      last_name,
      email,
      gender,
      ssn,
      ip_address,
      address,
      country,
      region
    ]
  }
}
