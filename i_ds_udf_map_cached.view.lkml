view: i_ds_udf_map_cached {
  sql_table_name: dbo.iDS_UDF_Map_Cached ;;

  dimension: filename {
    type: string
    sql: ${TABLE}.FILENAME ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: src_id {
    type: number
    sql: ${TABLE}.src_id ;;
  }

  dimension: src_name {
    type: string
    sql: ${TABLE}.SRC_Name ;;
  }

  dimension: src_record_id {
    type: number
    sql: ${TABLE}.SRC_RECORD_ID ;;
  }

  dimension: udf_id {
    type: number
    sql: ${TABLE}.udf_id ;;
  }

  measure: count {
    type: count
    drill_fields: [src_name, filename]
  }
}
