view: purchase_order_detail_extn {
  sql_table_name: default.purchase_order_detail_extn ;;
  suggestions: no

  dimension: altorder_number {
    type: string
    sql: ${TABLE}.altorder_number ;;
  }

  dimension: atgorder_number {
    type: string
    sql: ${TABLE}.atgorder_number ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}.completed_date ;;
  }

  dimension: country_of_origin {
    type: string
    sql: ${TABLE}.country_of_origin ;;
  }

  dimension: dt {
    type: string
    sql: ${TABLE}.dt ;;
  }

  dimension: gift_card_sk {
    type: string
    sql: ${TABLE}.gift_card_sk ;;
  }

  dimension: match_flag {
    type: string
    sql: ${TABLE}.match_flag ;;
  }

  dimension: merch_flag {
    type: string
    sql: ${TABLE}.merch_flag ;;
  }

  dimension: n_sas_id {
    type: number
    sql: ${TABLE}.n_sas_id ;;
  }

  dimension: n_usa_id {
    type: number
    sql: ${TABLE}.n_usa_id ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension_group: original_order {
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
    sql: ${TABLE}.original_order_date ;;
  }

  dimension: profile_number {
    type: string
    sql: ${TABLE}.profile_number ;;
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

  dimension_group: received {
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
    sql: ${TABLE}.received_date ;;
  }

  dimension_group: return_complete {
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
    sql: ${TABLE}.return_complete_date ;;
  }

  dimension_group: return {
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
    sql: ${TABLE}.return_date ;;
  }

  dimension: sample_sku_flag {
    type: string
    sql: ${TABLE}.sample_sku_flag ;;
  }

  dimension: sas_id {
    type: number
    sql: ${TABLE}.sas_id ;;
  }

  dimension_group: sas_load {
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
    sql: ${TABLE}.sas_load_date ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: transaction_number {
    type: number
    sql: ${TABLE}.transaction_number ;;
  }

  dimension: transaction_sequence {
    type: number
    sql: ${TABLE}.transaction_sequence ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.update_date ;;
  }

  dimension: usa_id {
    type: number
    sql: ${TABLE}.usa_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
