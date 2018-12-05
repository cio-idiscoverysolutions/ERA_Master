view: i_ds_vw_srum_network_usage_master {
  sql_table_name: dbo.iDS_vw_SRUM_NETWORK_USAGE_Master ;;

  dimension: application {
    type: string
    sql: ${TABLE}.Application ;;
  }

  dimension: bytes_received {
    type: string
    sql: ${TABLE}.Bytes_Received ;;
  }

  dimension: bytes_sent {
    type: string
    sql: ${TABLE}.Bytes_Sent ;;
  }

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

  dimension: ids_record_type {
    type: string
    sql: ${TABLE}.IDS_RecordType ;;
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

  dimension: interface {
    type: string
    sql: ${TABLE}.Interface ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}.Profile ;;
  }

  dimension: profile_flags {
    type: string
    sql: ${TABLE}.Profile_Flags ;;
  }

  dimension: srum_entry_creation {
    type: string
    sql: ${TABLE}.SRUM_ENTRY_CREATION ;;
  }

  dimension: srum_entry_number {
    type: string
    sql: ${TABLE}.SRUM_ENTRY_NUMBER ;;
  }

  dimension: total_bytes {
    type: string
    sql: ${TABLE}.Total_Bytes ;;
  }

  dimension: user_sid {
    type: string
    sql: ${TABLE}.User_SID ;;
  }

  measure: count {
    type: count
    drill_fields: [ids_device_name]
  }
}
