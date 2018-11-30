view: i_ds_vw_cafae_openrunmru_master {
  sql_table_name: dbo.iDS_vw_CAFAE_OPENRUNMRU_Master ;;

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

  dimension: mru_access_dt_utc {
    type: string
    sql: ${TABLE}.MRU_accessDt_UTC ;;
  }

  dimension: mru_create_dt_utc {
    type: string
    sql: ${TABLE}.MRU_createDt_UTC ;;
  }

  dimension: mru_item_no {
    type: string
    sql: ${TABLE}.MRU_itemNo ;;
  }

  dimension: mru_modify_dt_utc {
    type: string
    sql: ${TABLE}.MRU_modifyDt_UTC ;;
  }

  dimension: mru_name_utc {
    type: string
    sql: ${TABLE}.MRU_name_UTC ;;
  }

  dimension: mru_reg_dt_utc {
    type: string
    sql: ${TABLE}.MRU_regDt_UTC ;;
  }

  dimension: mru_subkey {
    type: string
    sql: ${TABLE}.MRU_subkey ;;
  }

  dimension: mru_support_name {
    type: string
    sql: ${TABLE}.MRU_supportName ;;
  }

  measure: count {
    type: count
    drill_fields: [mru_support_name, ids_device_name]
  }
}
