view: i_ds_vw_cafae_user_assist_master {
  sql_table_name: dbo.iDS_vw_CAFAE_USER_ASSIST_Master ;;

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: focus_cnt {
    type: string
    sql: ${TABLE}.focus_cnt ;;
  }

  dimension: focus_msec {
    type: string
    sql: ${TABLE}.focus_msec ;;
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

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: modify_date_utc {
    type: string
    sql: ${TABLE}.modify_date_UTC ;;
  }

  dimension: reg_date_utc {
    type: string
    sql: ${TABLE}.reg_date_UTC ;;
  }

  dimension: run {
    type: string
    sql: ${TABLE}.run ;;
  }

  dimension: sess {
    type: string
    sql: ${TABLE}.sess ;;
  }

  dimension: subkey {
    type: string
    sql: ${TABLE}.subkey ;;
  }

  measure: count {
    type: count
    drill_fields: [item_name, ids_device_name]
  }
}
