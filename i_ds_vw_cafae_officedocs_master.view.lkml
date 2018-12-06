view: i_ds_vw_cafae_officedocs_master {
  sql_table_name: dbo.iDS_vw_CAFAE_OFFICEDOCS_Master ;;

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
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

  dimension: ids_path_filename_ext {
    type: string
    sql: ${TABLE}.ids_path_filename_ext ;;
  }

  dimension: ids_path_filename_filename {
    type: string
    sql: ${TABLE}.ids_path_filename_filename ;;
  }

  dimension: ids_path_filename_path {
    type: string
    sql: ${TABLE}.ids_path_filename_path ;;
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

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: mod_date_utc {
    type: string
    sql: ${TABLE}.mod_date_UTC ;;
  }

  dimension: path_filename {
    type: string
    sql: ${TABLE}.path_filename ;;
  }

  dimension: reg_date_utc {
    type: string
    sql: ${TABLE}.reg_date_UTC ;;
  }

  dimension: subkey {
    type: string
    sql: ${TABLE}.subkey ;;
  }

  measure: count {
    type: count
    drill_fields: [path_filename, ids_device_name, ids_path_filename_filename]
  }
}
