view: zzz_i_ds_data_validation {
  derived_table: {
     sql:
  sql: Select rf.*, z.ct As UDF_Count
      From iDS_RAWFile_Counts_Cached rf (NOLOCk)
        Left Join (select FILENAME, Count(*) ct
              From iDS_UDF_Map_Cached u (NOLOCk)
              Group by FILENAME) z
           ON z.FILENAME = rf.IDS_Source_File ;;
}
  dimension: matternumber {
    type: string
    sql: ${TABLE}.matternumber ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.ids_source_file ;;
  }

  dimension: dupes {
    type: string
    sql: ${TABLE}.ids_dupe ;;
  }

  dimension: exlusions {
    type: string
    sql: ${TABLE}.ids_ignore ;;
  }
  dimension: custodian {
    type: string
    sql: ${TABLE}.ids_custodian ;;
  }
  dimension: ids_devicename {
    type: string
    sql: ${TABLE}.ids_devicename ;;
  }

  dimension: evidencenumber {
    type: string
    sql: ${TABLE}.ids_evidencenumber ;;
  }

  dimension: udf_count {
    type: string
    sql: ${TABLE}.udf_count ;;
  }

  dimension: cdf_count {
    type: string
    sql: ${TABLE}.record_count ;;
  }
  dimension: rdf_count {
    type: string
    sql: ${TABLE}.linecnt ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
# ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      udf.udf_id,
      udf.date_beg_source_time,
      ppl.full_name,
      obj.name,
      loc.name,
      evt.name,
      src.name,
      src.disp_name,
      matter.matter_id,
      matter.name
    ]
  }
}
