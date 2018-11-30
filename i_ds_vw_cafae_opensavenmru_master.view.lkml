view: i_ds_vw_cafae_opensavenmru_master {
  sql_table_name: dbo.iDS_vw_CAFAE_OPENSAVENMRU_Master ;;

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

  dimension: ids_source_date {
    type: string
    sql: ${TABLE}.IDS_SourceDate ;;
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

  dimension: mru_date_time {
    type: string
    sql: ${TABLE}.MRU_DateTime ;;
  }

  dimension: mru_desc {
    type: string
    sql: ${TABLE}.MRU_desc ;;
  }

  dimension: mru_extra {
    type: string
    sql: ${TABLE}.MRU_extra ;;
  }

  dimension: mru_filename {
    type: string
    sql: ${TABLE}.MRU_filename ;;
  }

  dimension: mru_format {
    type: string
    sql: ${TABLE}.MRU_format ;;
  }

  dimension: mru_host {
    type: string
    sql: ${TABLE}.MRU_host ;;
  }

  dimension: mru_inode {
    type: string
    sql: ${TABLE}.MRU_inode ;;
  }

  dimension: mru_macb {
    type: string
    sql: ${TABLE}.MRU_MACB ;;
  }

  dimension: mru_notes {
    type: string
    sql: ${TABLE}.MRU_notes ;;
  }

  dimension: mru_short {
    type: string
    sql: ${TABLE}.MRU_short ;;
  }

  dimension: mru_source {
    type: string
    sql: ${TABLE}.MRU_source ;;
  }

  dimension: mru_sourcetype {
    type: string
    sql: ${TABLE}.MRU_sourcetype ;;
  }

  dimension: mru_timezone {
    type: string
    sql: ${TABLE}.MRU_timezone ;;
  }

  dimension: mru_type {
    type: string
    sql: ${TABLE}.MRU_type ;;
  }

  dimension: mru_user {
    type: string
    sql: ${TABLE}.MRU_user ;;
  }

  dimension: mru_version {
    type: string
    sql: ${TABLE}.MRU_version ;;
  }

  measure: count {
    type: count
    drill_fields: [mru_filename, ids_device_name]
  }
}
