view: i_ds_vw_ntfs_walk_master {
  sql_table_name: dbo.iDS_vw_NTFS_WALK_Master ;;

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: date_time_utc {
    type: string
    sql: ${TABLE}.date_time_utc ;;
  }

  dimension: ext {
    type: string
    sql: ${TABLE}.ext ;;
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

  dimension: macb {
    type: string
    sql: ${TABLE}.MACB ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: mft_entry {
    type: string
    sql: ${TABLE}.mft_entry ;;
  }

  dimension: other_info {
    type: string
    sql: ${TABLE}.other_info ;;
  }

  dimension: parent_mft {
    type: string
    sql: ${TABLE}.parent_mft ;;
  }

  dimension: path_and_filename {
    type: string
    sql: ${TABLE}.path_and_filename ;;
  }

  dimension: ref {
    type: string
    sql: ${TABLE}.ref ;;
  }

  dimension: seqnum {
    type: string
    sql: ${TABLE}.seqnum ;;
  }

  dimension: seqnum_1 {
    type: string
    sql: ${TABLE}.seqnum_1 ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: various_data_types {
    type: string
    sql: ${TABLE}.various_data_types ;;
  }

  measure: count {
    type: count
    drill_fields: [path_and_filename, ids_device_name]
  }
}
