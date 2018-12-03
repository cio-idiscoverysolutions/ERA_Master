connection: "aws_era_master_udf"

# include all the views
include: "*.view"

datagroup: era_master_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: era_master_default_datagroup

explore: src_master {}

explore: evt {}

explore: loc {}

explore: matter {}

explore: obj {}

explore: ppl {}

explore: device {}

explore: src{
  join: src_files{
    type: left_outer
    sql_on: ${src_files.scmst_id} = ${src_files.scmst_id};;
    relationship: one_to_many
    view_label: "Source Files"

  }
}

explore: udf {
  label: "Universal Data Format"
  join: ppl{
    type: left_outer
    sql_on: ${udf.ppl_id} = ${ppl.ppl_id} ;;
    relationship: one_to_many
    view_label: "People"

  }

  join: obj{
    type: left_outer
    sql_on: ${udf.obj_id} = ${obj.obj_id} ;;
    relationship: one_to_many
    view_label: "Object"
  }
  join: loc{
    type: left_outer
    sql_on: ${udf.loc_id} = ${loc.loc_id} ;;
    relationship: one_to_many
  }
  join: evt{
    type: left_outer
    sql_on: ${udf.evt_id} = ${evt.evt_id} ;;
    relationship: one_to_many
  }
  join: src{
    type: left_outer
    sql_on: ${udf.src_id} = ${src.src_id} ;;
    relationship: one_to_many
  }
  join: matter{
    type: left_outer
    sql_on: ${udf.matter_id} = ${matter.matter_id} ;;
    relationship: one_to_many
  }
  join: device{
    type: left_outer
    sql_on: ${udf.device_id} = ${device.device_id} ;;
    relationship: one_to_many
  }
  join: i_ds_vw_lnk_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_lnk_master.ids_sourceid} AND ${src.src_name} = 'LNK_FILES';;
    relationship: one_to_many
  }
  join: src_files{
    type: left_outer
    sql_on: ${src_files.scmst_id} = ${src_files.scmst_id} AND ${udf.src_id} = ${src.src_id} AND ${src_files.filename} = ${i_ds_vw_lnk_master.ids_source_file};;
    relationship: one_to_many
    view_label: "SRC File Name"

  }
}

explore: i_ds_vw_lnk_master {}

explore: i_ds_vw_jmp_master {}

explore: i_ds_vw_sbag_master {}

explore: i_ds_vw_usb_master {}

explore: i_ds_vw_tia_trash_master {}

explore: i_ds_vw_cafae_user_assist_master {}

explore: i_ds_vw_cafae_openrunmru_master {}

explore: i_ds_vw_cafae_opensavemru_master {}

explore: i_ds_vw_pf_master {}
