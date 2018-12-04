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

explore: attribute {}

explore: src_files {
  join: i_ds_vw_raw_counts_derived{
    type: left_outer
    sql_on: ${src_files.filename} = ${i_ds_vw_raw_counts_derived.IDS_Source_File};;
    relationship: one_to_one
    view_label: "Source Files Counts"

  }
}

explore: i_ds_vw_raw_counts_derived {}

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
  join: attribute{
    type: left_outer
    sql_on: ${udf.udf_id} = ${attribute.target_id}.ids_sourceid} AND ${attribute.target_type} = 'U';;
    relationship: one_to_many
  }
  join: src_files{
    type: left_outer
    sql_on: ${src_files.scmst_id} = ${src_files.scmst_id} AND ${udf.src_id} = ${src.src_id}
            AND (
              ${src_files.filename} = ${i_ds_vw_lnk_master.ids_source_file}
              OR ${src_files.filename} = ${i_ds_vw_jmp_master.ids_source_file}
              OR ${src_files.filename} = ${i_ds_vw_cafae_openrunmru_master.ids_source_file}
              OR ${src_files.filename} = ${i_ds_vw_cafae_opensavemru_master.ids_source_file}
              OR ${src_files.filename} = ${i_ds_vw_cafae_user_assist_master.ids_source_file}
              OR ${src_files.filename} = ${i_ds_vw_pf_master.ids_source_file}
              OR ${src_files.filename} = ${i_ds_vw_sbag_master.ids_source_file}
              OR ${src_files.filename} = ${i_ds_vw_tia_trash_master.ids_source_file}
              OR ${src_files.filename} = ${i_ds_vw_usb_master.ids_source_file}
               OR ${src_files.filename} = ${i_ds_vw_cafae_recentdocs_master.ids_source_file}

            );;
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

explore: i_ds_vw_cafae_recentdocs_master {}

explore: i_ds_vw_pf_master {}
