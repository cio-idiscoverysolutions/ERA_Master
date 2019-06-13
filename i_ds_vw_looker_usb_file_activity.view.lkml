view: i_ds_vw_looker_usb_file_activity {
  sql_table_name: dbo.iDS_vw_Looker_USB_File_Activity ;;

  dimension_group: date_beg_utc {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_BEG_UTC ;;
  }

  dimension: evt_group {
    type: string
    sql: ${TABLE}.Evt_Group ;;
  }

  dimension: evt_name {
    type: string
    sql: ${TABLE}.Evt_Name ;;
  }

  dimension: matter_name {
    type: string
    sql: ${TABLE}.Matter_Name ;;
  }

  dimension: obj_name_detail {
    type: string
    sql: ${TABLE}.Obj_Name_detail ;;
  }

  dimension: obj_name_short {
    type: string
    sql: ${TABLE}.Obj_Name_short ;;
  }

  dimension: notes {
    type:  string
    sql: ${TABLE}.notes ;;
  }


  measure: count {
    type: count
    drill_fields: [matter_name, evt_name, obj_name_short]
  }

  measure: count_usb {
    type:  count
    drill_fields: [date_beg_utc_time, evt_name, obj_name_short, obj_name_detail, notes]
    filters: {
      field:evt_group
      value: "1 - USB Activity"
    }
    }
    measure: count_file {
      type:  count
      drill_fields: [date_beg_utc_time, evt_name, obj_name_short, obj_name_detail, notes]
      filters: {
        field:evt_group
        value: "2 - File Activity"
      }


  }



}
