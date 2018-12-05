view: histo {
  sql_table_name: stats.HISTO ;;

  dimension: chart_name {
    type: string
    sql: ${TABLE}.CHART_NAME ;;
  }

  dimension_group: dt_histo {
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
    sql: ${TABLE}.DT_HISTO ;;
  }

  dimension_group: dt_upd {
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
    sql: ${TABLE}.DT_UPD ;;
  }

  dimension: uniq_days {
    type: number
    sql: ${TABLE}.UNIQ_DAYS ;;
  }

  dimension: uniq_evt {
    type: number
    sql: ${TABLE}.UNIQ_EVT ;;
  }

  dimension: uniq_loc {
    type: number
    sql: ${TABLE}.UNIQ_LOC ;;
  }

  dimension: uniq_obj {
    type: number
    sql: ${TABLE}.UNIQ_OBJ ;;
  }

  dimension: uniq_ppl {
    type: number
    sql: ${TABLE}.UNIQ_PPL ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: [chart_name]
  }
  measure: sum {
    type: sum
     sql: ${TABLE}.VALUE;;
  }

}
