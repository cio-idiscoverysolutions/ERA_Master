view: src_master {
  sql_table_name: dbo.SRC_MASTER ;;

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
    drill_fields: [udf.obj_id]
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}.SCMST_ID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: utcoffset {
    type: number
    sql: ${TABLE}.UTCOffset ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
