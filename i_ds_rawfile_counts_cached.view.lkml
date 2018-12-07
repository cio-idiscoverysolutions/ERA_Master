view: i_ds_rawfile_counts_cached {
  sql_table_name: dbo.iDS_RAWFile_Counts_Cached ;;

  dimension: ids_custodian {
    type: string
    sql: ${TABLE}.IDS_Custodian ;;
  }

  dimension: ids_device_name {
    type: string
    sql: ${TABLE}.IDS_DeviceName ;;
  }

  dimension: ids_device_notes {
    type: string
    sql: ${TABLE}.IDS_DeviceNotes ;;
  }

  dimension: ids_dupe {
    type: number
    sql: ${TABLE}.IDS_Dupe ;;
  }

  dimension: ids_evidence_number {
    type: string
    sql: ${TABLE}.IDS_EvidenceNumber ;;
  }

  dimension: ids_ignore {
    type: number
    sql: ${TABLE}.IDS_Ignore ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_Source_File ;;
  }

  dimension: linecnt {
    type: number
    sql: ${TABLE}.linecnt ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: record_count {
    type: number
    sql: ${TABLE}.Record_Count ;;
  }

  measure: count {
    type: count
    drill_fields: [ids_device_name]
  }
}
