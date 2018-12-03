view: udf {
  sql_table_name: udf.UDF ;;

  dimension: udf_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.UDF_ID ;;
  }

  dimension: confidence {
    type: number
    sql: ${TABLE}.CONFIDENCE ;;
  }

  dimension_group: date_beg_lcl {
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
    sql: ${TABLE}.DATE_BEG_LCL ;;
  }

  dimension_group: date_beg_source {
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
    sql: ${TABLE}.DATE_BEG_SOURCE ;;

  }



  dimension_group: date_beg_utc {
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
    sql: ${TABLE}.DATE_BEG_UTC ;;
  }


  dimension_group: date_end_lcl {
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
    sql: ${TABLE}.DATE_END_LCL ;;
  }

  dimension_group: date_end_source {
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
    sql: ${TABLE}.DATE_END_SOURCE ;;
  }

  dimension_group: date_end_utc {
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
    sql: ${TABLE}.DATE_END_UTC ;;
  }


  dimension: dst {
    type: string
    sql: ${TABLE}.DST ;;
  }

  dimension: evt_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.EVT_ID ;;
  }

  dimension: gps_lat {
    type: number
    sql: ${TABLE}.GPS_LAT ;;
  }

  dimension: gps_lon {
    type: number
    sql: ${TABLE}.GPS_LON ;;
  }

  dimension: has_gps {
    type: string
    sql: ${TABLE}.HAS_GPS ;;
  }

  dimension: loc_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOC_ID ;;
  }

  dimension: matter_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MATTER_ID ;;
  }

  dimension: device_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DEVICE_ID ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: obj_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OBJ_ID ;;
  }

  dimension: pay {
    type: string
    sql: ${TABLE}.PAY ;;
  }

  dimension: ppl_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PPL_ID ;;
  }

  dimension: src_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SRC_ID ;;
  }

  dimension: src_record_id {
    type: number
    sql: ${TABLE}.SRC_RECORD_ID ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.VALUE ;;
  }

  dimension: version_status {
    type: string
    sql: ${TABLE}.VERSION_STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: number_of_unique_files {
    type: count_distinct
    sql: ${obj_id} ;;
  }

  measure: number_of_unique_records_by_source_file {
    type: count_distinct
    sql: ${src_record_id} ;;
  }
  measure: number_of_unique_folders_locations {
    type: count_distinct
    sql: ${loc_id} ;;
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      udf_id,
      ppl.ppl_id,
      ppl.full_name,
      ppl.first_name,
      ppl.middle_name,
      ppl.last_name,
      obj.obj_id,
      obj.name,
      loc.loc_id,
      loc.name,
      evt.evt_id,
      evt.name,
      src.src_id,
      src.name,
      src.disp_name,
      matter.matter_id,
      matter.name
    ]
  }
}
