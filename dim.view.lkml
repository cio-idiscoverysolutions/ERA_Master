view: dim {
  sql_table_name: stats.DIM ;;

  dimension: cnt {
    type: number
    sql: ${TABLE}.CNT ;;
  }

  dimension_group: dt_frst {
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
    sql: ${TABLE}.DT_FRST ;;
  }

  dimension_group: dt_lst {
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
    sql: ${TABLE}.DT_LST ;;
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

  dimension: target_id {
    type: number
    sql: ${TABLE}.TARGET_ID ;;
  }

  dimension: target_type {
    type: string
    sql: ${TABLE}.TARGET_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
