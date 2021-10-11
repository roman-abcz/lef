view: purchase_order_detail {
  sql_table_name: default.purchase_order_detail ;;
  suggestions: no

  dimension: adjusted_amount {
    type: number
    sql: ${TABLE}.adjusted_amount ;;
  }

  dimension: adjustment_type {
    type: string
    sql: ${TABLE}.adjustment_type ;;
  }

  dimension: coupon_redemptionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.coupon_redemptionid ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_type {
    type: string
    sql: ${TABLE}.discount_type ;;
  }

  dimension: dt {
    type: string
    sql: ${TABLE}.dt ;;
  }

  dimension_group: fulfilment {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fulfilment_date ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension: pos_terminalid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pos_terminalid ;;
  }

  dimension: product_skuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.product_skuid ;;
  }

  dimension: promotion_redemptionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.promotion_redemptionid ;;
  }

  dimension_group: purchase {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.purchase_date ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension_group: shipment {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.shipment_date ;;
  }

  dimension: transaction_amount {
    type: number
    sql: ${TABLE}.transaction_amount ;;
  }

  dimension: transaction_number {
    type: number
    sql: ${TABLE}.transaction_number ;;
  }

  dimension: transaction_sequence {
    type: number
    sql: ${TABLE}.transaction_sequence ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: void_flag {
    type: string
    sql: ${TABLE}.void_flag ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
