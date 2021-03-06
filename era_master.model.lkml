connection: "aws_era_master_udf"

# include all the views
include: "*.view"

datagroup: era_master_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: era_master_default_datagroup

explore: i_ds_vw_looker_usb_file_activity {}

explore: src_master {}

explore: evt {}

explore: loc {}

explore: matter {}

explore: obj {}

explore: ppl {}

explore: device {}

explore: attribute {}

explore: cda {}

explore: cda_results {
  join: cda{
    type: inner
    sql_on: ${cda.cda_id} = ${cda.cda_id};;
    relationship: many_to_one
    view_label: "CDA Results"

  }
}

explore: src_files {
  join: ids_rawfile_details_cached{
    type: left_outer
    sql_on: ${src_files.filename} = ${ids_rawfile_details_cached.ids_source_file};;
    relationship: one_to_one
    view_label: "Source Files Counts"

  }
}



explore: src{
  join: src_files{
    type: left_outer
    sql_on: ${src_files.scmst_id} = ${src.src_name};;
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
  join: cda_results{
    type: left_outer
    sql_on: ${udf.udf_id} = ${cda_results.udf_id} ;;
    relationship: many_to_many
  }
  join: cda{
    type: left_outer
    sql_on: ${udf.udf_id} = ${cda_results.udf_id} AND ${cda_results.cda_id} = ${cda.cda_id} ;;
    relationship: many_to_many
  }
  join: i_ds_vw_lnk_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_lnk_master.ids_sourceid} AND ${src.src_name} = 'LNK_FILES';;
    relationship: one_to_many
  }
  join: i_ds_vw_jmp_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_jmp_master.ids_sourceid} AND ${src.src_name} = 'JMP_LISTS';;
    relationship: one_to_many
  }
  join: i_ds_vw_cafae_openrunmru_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_cafae_openrunmru_master.ids_sourceid} AND ${src.src_name} = 'CAFAE_OPENRUNMRU';;
    relationship: one_to_many
  }
  join: i_ds_vw_cafae_opensavemru_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_cafae_opensavemru_master.ids_sourceid} AND ${src.src_name} = 'CAFAE_OPENSAVEMRU';;
    relationship: one_to_many
  }
  join: i_ds_vw_cafae_user_assist_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_cafae_user_assist_master.ids_sourceid} AND ${src.src_name} = 'CAFAE_USERASSIST';;
    relationship: one_to_many
  }
  join: i_ds_vw_pf_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_pf_master.ids_sourceid} AND ${src.src_name} = 'PF_FILES';;
    relationship: one_to_many
  }
  join: i_ds_vw_sbag_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_sbag_master.ids_sourceid} AND ${src.src_name} = 'SBAG_FILES';;
    relationship: one_to_many
  }
  join: i_ds_vw_tia_trash_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_tia_trash_master.ids_sourceid} AND ${src.src_name} = 'TIA_TRASH';;
    relationship: one_to_many
  }
  join: i_ds_vw_usb_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_usb_master.ids_sourceid} AND ${src.src_name} = 'USB_FILES';;
    relationship: one_to_many
  }
  join: i_ds_vw_cafae_recentdocs_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_cafae_recentdocs_master.ids_sourceid} AND ${src.src_name} = 'CAFAE_RECENTDOCS';;
    relationship: one_to_many
  }
  join: i_ds_vw_evt_walk_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_evt_walk_master.ids_sourceid} AND ${src.src_name} = 'EVT_WALK';;
    relationship: one_to_many
  }
  join: i_ds_vw_srum_network_usage_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_srum_network_usage_master.ids_sourceid} AND ${src.src_name} = 'SRUM_NETWORK_USAGE';;
    relationship: one_to_many
  }
  join: i_ds_vw_cafae_typedurls_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_cafae_typedurls_master.ids_sourceid} AND ${src.src_name} = 'CAFAE_TYPEDURLS';;
    relationship: one_to_many
  }
  join: i_ds_vw_cafae_searchhist_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_cafae_searchhist_master.ids_sourceid} AND ${src.src_name} = 'CAFAE_SEARCHHIST';;
    relationship: one_to_many
  }
  join: i_ds_vw_cafae_officedocs_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_cafae_officedocs_master.ids_sourceid} AND ${src.src_name} = 'CAFAE_OFFICEDOCS';;
    relationship: one_to_many
  }
  join: i_ds_vw_browser_master{
    type: left_outer
    sql_on: ${udf.src_record_id} = ${i_ds_vw_browser_master.ids_sourceid} AND ${src.src_name} = 'BROWSER';;
    relationship: one_to_many
  }
  join: attribute{
    type: left_outer
    sql_on: ${udf.udf_id} = ${attribute.target_id} AND ${attribute.target_type} = 'U';;
    relationship: one_to_many
  }
  join: i_ds_udf_map_cached{
    type: left_outer
    sql_on: ${i_ds_udf_map_cached.udf_id} = ${udf.udf_id};;
    relationship: one_to_one
  }
  join: zzz_i_ds_data_validation {
    type: full_outer
    sql_on: ${i_ds_udf_map_cached.udf_id} = ${udf.udf_id} AND ${zzz_i_ds_data_validation.ids_source_file} = ${i_ds_udf_map_cached.filename};;
    relationship: one_to_one
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

explore: i_ds_vw_cafae_recentdocs_master {}

explore: i_ds_vw_cafae_searchhist_master {}

explore: i_ds_vw_cafae_typedurls_master {}

explore: i_ds_vw_pf_master {}

explore: i_ds_vw_evt_walk_master {}

explore: i_ds_vw_wisp_ntfs_master {}

explore: i_ds_vw_srum_network_usage_master {}

explore: i_ds_vw_ntfs_walk_master {}

explore: i_ds_vw_cafae_officedocs_master {}

explore: i_ds_vw_browser_master {}

explore: ids_rawfile_details_cached {}

explore: i_ds_rawfile_counts_cached {}

explore: i_ds_udf_map_cached {}

explore: zzz_i_ds_data_validation {}
