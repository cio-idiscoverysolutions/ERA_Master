view: i_ds_vw_browser_master {
  sql_table_name: dbo.iDS_vw_BROWSER_Master ;;

  dimension: browser_profile {
    type: string
    sql: ${TABLE}.Browser_Profile ;;
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

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: typed_count {
    type: string
    sql: ${TABLE}.Typed_Count ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: url_length {
    type: string
    sql: ${TABLE}.URL_Length ;;
  }

  dimension: user_profile {
    type: string
    sql: ${TABLE}.User_Profile ;;
  }

  dimension: visit_count {
    type: string
    sql: ${TABLE}.Visit_Count ;;
  }

  dimension_group: visit_time {

    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_month,
      day_of_week,
      hour_of_day,
      month_name,
      fiscal_month_num
    ]
    sql: ${TABLE}.visit_time ;;
  }

  dimension: visit_type {
    type: string
    sql: ${TABLE}.Visit_Type ;;
  }

  dimension: visited_from {
    type: string
    sql: ${TABLE}.Visited_From ;;
  }

  dimension: web_browser {
    type: string
    sql: ${TABLE}.Web_Browser ;;
  }

  measure: count {
    type: count
    drill_fields: [ids_device_name]
  }
}
