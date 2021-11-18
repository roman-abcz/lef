view: purchase_orders {
  derived_table: {
    sql: select purchase_channel, total_gross_units, total_net_amount, total_gross_amount from purchase_order
      ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: purchase_channel {
    type: string
    sql: ${TABLE}.purchase_channel ;;
  }

  dimension: total_gross_units {
    type: number
    sql: ${TABLE}.total_gross_units ;;
  }

  dimension: total_net_amount {
    type: number
    sql: ${TABLE}.total_net_amount ;;
  }

  dimension: total_gross_amount {
    type: number
    sql: ${TABLE}.total_gross_amount ;;
  }

  set: detail {
    fields: [purchase_channel, total_gross_units, total_net_amount, total_gross_amount]
  }
}
