view: i_ds_vw_cafae_openrunmru_master {
  sql_table_name: dbo.iDS_vw_CAFAE_OPENRUNMRU_Master ;;

  dimension: access_date_utc {
    type: string
    sql: ${TABLE}.access_date_UTC ;;
  }

  dimension: create_date_utc {
    type: string
    sql: ${TABLE}.create_date_UTC ;;
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

  dimension: modify_date_utc {
    type: string
    sql: ${TABLE}.modify_date_UTC ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: reg_date_utc {
    type: string
    sql: ${TABLE}.reg_date_UTC ;;
  }

  dimension: subkey {
    type: string
    sql: ${TABLE}.subkey ;;
  }

  dimension: support_name {
    type: string
    sql: ${TABLE}.support_name ;;
  }

  measure: count {
    type: count
    drill_fields: [name, support_name, ids_device_name]
  }
}
