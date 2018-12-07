view: ids_rawfile_details_cached {
  sql_table_name: dbo.ids_RAWFile_Details_Cached ;;

  dimension: file_type {
    type: string
    sql: ${TABLE}.FileType ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_Source_File ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
