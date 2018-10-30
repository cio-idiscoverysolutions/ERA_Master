view: seq_results_temp {
  sql_table_name: dbo.SEQ_RESULTS_temp ;;

  dimension: delta_secs {
    type: number
    sql: ${TABLE}.DELTA_SECS ;;
  }

  dimension_group: dt_beg {
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
    sql: ${TABLE}.DT_BEG ;;
  }

  dimension: evt_id {
    type: number
    sql: ${TABLE}.EVT_ID ;;
  }

  dimension_group: nx_dt_beg {
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
    sql: ${TABLE}.NX_DT_BEG ;;
  }

  dimension: nx_udf_id {
    type: number
    sql: ${TABLE}.NX_UDF_ID ;;
  }

  dimension: ppl_id {
    type: number
    sql: ${TABLE}.PPL_ID ;;
  }

  dimension: seq_id {
    type: number
    sql: ${TABLE}.SEQ_ID ;;
  }

  dimension: udf_id {
    type: number
    sql: ${TABLE}.UDF_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
