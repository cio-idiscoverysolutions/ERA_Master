view: i_ds_vw_wisp_ntfs_master {
  sql_table_name: dbo.iDS_vw_WISP_NTFS_Master ;;

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: dir_file {
    type: string
    sql: ${TABLE}.dir_file ;;
  }

  dimension: file_access_date_utc {
    type: string
    sql: ${TABLE}.file_access_date_UTC ;;
  }

  dimension: file_create_date_utc {
    type: string
    sql: ${TABLE}.file_create_date_UTC ;;
  }

  dimension: file_mft_date_utc {
    type: string
    sql: ${TABLE}.file_mft_date_UTC ;;
  }

  dimension: file_modify_date_utc {
    type: string
    sql: ${TABLE}.file_modify_date_UTC ;;
  }

  dimension: flags {
    type: string
    sql: ${TABLE}.flags ;;
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

  dimension: mft_entry {
    type: string
    sql: ${TABLE}.mft_entry ;;
  }

  dimension: mft_seq {
    type: string
    sql: ${TABLE}.mft_seq ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent_mft {
    type: string
    sql: ${TABLE}.parent_mft ;;
  }

  dimension: seqnum {
    type: string
    sql: ${TABLE}.seqnum ;;
  }

  dimension: size_resv {
    type: string
    sql: ${TABLE}.size_resv ;;
  }

  dimension: size_used {
    type: string
    sql: ${TABLE}.size_used ;;
  }

  dimension: slack_comment {
    type: string
    sql: ${TABLE}.slack_comment ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [name, ids_device_name]
  }

  measure: ids_Custodian {
    type: count_distinct
    drill_fields: [name, ids_device_name]
  }

}
