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
    type: string
    sql: ${TABLE}.IDS_Dupe ;;
  }

  dimension: ids_evidence_number {
    type: string
    sql: ${TABLE}.IDS_EvidenceNumber ;;
  }

  dimension: ids_ignore {
    type: string
    sql: ${TABLE}.IDS_Ignore ;;
  }

  dimension: ids_source_date {
    type: string
    sql: ${TABLE}.IDS_SourceDate ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_Source_File ;;
  }

  dimension: ids_sourceid {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
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
    drill_fields: [filename, ids_device_name]
  }
}
