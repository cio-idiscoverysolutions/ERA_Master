view: i_ds_vw_usb_master {
  sql_table_name: dbo.iDS_vw_USB_Master ;;

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.csvrowid ;;
  }

  dimension: date_time {
    type: string
    sql: ${TABLE}."date time" ;;
  }

  dimension: desc {
    type: string
    sql: ${TABLE}."desc" ;;
  }

  dimension: extra {
    type: string
    sql: ${TABLE}.extra ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: ids_custodian {
    type: string
    sql: ${TABLE}.IDS_Custodian ;;
  }

  dimension: ids_desc_hub_port {
    type: string
    sql: ${TABLE}.ids_desc_hub_port ;;
  }

  dimension: ids_desc_pid {
    type: string
    sql: ${TABLE}.ids_desc_pid ;;
  }

  dimension: ids_desc_prod {
    type: string
    sql: ${TABLE}.ids_desc_prod ;;
  }

  dimension: ids_desc_rev {
    type: string
    sql: ${TABLE}.ids_desc_rev ;;
  }

  dimension: ids_desc_serial {
    type: string
    sql: ${TABLE}.ids_desc_serial ;;
  }

  dimension: ids_desc_ven {
    type: string
    sql: ${TABLE}.ids_desc_ven ;;
  }

  dimension: ids_desc_vid {
    type: string
    sql: ${TABLE}.ids_desc_vid ;;
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
    sql: ${TABLE}.ids_source_file ;;
  }

  dimension: ids_sourceid {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: inode {
    type: string
    sql: ${TABLE}.inode ;;
  }

  dimension: macb {
    type: string
    sql: ${TABLE}.MACB ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: sourcetype {
    type: string
    sql: ${TABLE}.sourcetype ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."user" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [filename, ids_device_name]
  }
}
