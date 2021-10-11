view: purchase_order {
  sql_table_name: default.purchase_order ;;
  suggestions: no

  dimension: cosmos_customerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cosmos_customerid ;;
  }

  dimension: dt {
    type: string
    sql: ${TABLE}.dt ;;
  }

  dimension_group: header_purchase {
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
    sql: ${TABLE}.header_purchase_date ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension: purchase_channel {
    type: string
    sql: ${TABLE}.purchase_channel ;;
  }

  dimension: storeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.storeid ;;
  }

  dimension: total_discount_amount {
    type: number
    sql: ${TABLE}.total_discount_amount ;;
  }

  dimension: total_gross_amount {
    type: number
    sql: ${TABLE}.total_gross_amount ;;
  }

  dimension: total_gross_units {
    type: number
    sql: ${TABLE}.total_gross_units ;;
  }

  dimension: total_net_amount {
    type: number
    sql: ${TABLE}.total_net_amount ;;
  }

  dimension: total_return_sales {
    type: number
    sql: ${TABLE}.total_return_sales ;;
  }

  dimension: total_returned_units {
    type: number
    sql: ${TABLE}.total_returned_units ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
