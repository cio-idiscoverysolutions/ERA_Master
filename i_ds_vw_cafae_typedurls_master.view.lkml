view: i_ds_vw_cafae_typedurls_master {
  sql_table_name: dbo.iDS_vw_CAFAE_TYPEDURLS_Master ;;

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_Source_File ;;
  }

  dimension: item_ {
    type: string
    sql: ${TABLE}.item_ ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: path_filename {
    type: string
    sql: ${TABLE}.path_filename ;;
  }

  dimension: reg_date_utc {
    type: string
    sql: ${TABLE}.reg_date_UTC ;;
  }

  dimension: typed_urls_time_utc {
    type: string
    sql: ${TABLE}.TypedURLsTime_UTC ;;
  }

  measure: count {
    type: count
    drill_fields: [path_filename]
  }
}
