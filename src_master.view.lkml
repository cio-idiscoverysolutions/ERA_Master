view: src_master {
  sql_table_name: dbo.SRC_MASTER ;;

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}.SCMST_ID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: utcoffset {
    type: number
    sql: ${TABLE}.UTCOffset ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
# ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      udf.udf_id,
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
