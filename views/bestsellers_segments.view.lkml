view: bestsellers_segments {
  sql_table_name: `seu-dev-pm-prj-paidmedia-001.230759923.bestsellers_segments`
    ;;

  dimension: atg_id {
    type: string
    sql: ${TABLE}.atgId ;;
  }

  dimension: audience_id {
    type: string
    sql: ${TABLE}.audienceId ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.creationDate ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}.customerKey ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: segment_name {
    type: string
    sql: ${TABLE}.segmentName ;;
  }

  dimension: segment_priority {
    type: number
    sql: ${TABLE}.segmentPriority ;;
  }

  dimension: sephora_id {
    type: string
    sql: ${TABLE}.sephoraId ;;
  }

  measure: count {
    type: count
    drill_fields: [segment_name]
  }
}
