view: i_ds_vw_cafae_searchhist_master {
  sql_table_name: dbo.iDS_vw_CAFAE_SEARCHHIST_Master ;;

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
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

  dimension: reg_date_utc {
    type: string
    sql: ${TABLE}.reg_date_UTC ;;
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }
}
