view: i_ds_vw_lnk_master {
  sql_table_name: dbo.iDS_vw_LNK_Master ;;

  dimension: common_path {
    type: string
    sql: ${TABLE}.common_path ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: extra_info {
    type: string
    sql: ${TABLE}.extra_info ;;
  }

  dimension: file_access_date_utc {
    type: string
    sql: ${TABLE}.file_access_date_UTC ;;
  }

  dimension: file_create_date_utc {
    type: string
    sql: ${TABLE}.file_create_date_UTC ;;
  }

  dimension: file_mft_date_utc {
    type: string
    sql: ${TABLE}.file_mft_date_UTC ;;
  }

  dimension: file_modify_date_utc {
    type: string
    sql: ${TABLE}.file_modify_date_UTC ;;
  }

  dimension: file_size {
    type: string
    sql: ${TABLE}.file_size ;;
  }

  dimension: idlist_extra_info {
    type: string
    sql: ${TABLE}.IDList_extra_info ;;
  }

  dimension: ids_dupe {
    type: string
    sql: ${TABLE}.IDS_Dupe ;;
  }

  dimension: ids_ignore {
    type: string
    sql: ${TABLE}.IDS_Ignore ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_Source_File ;;
  }

  dimension: ids_sourceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.IDS_SOURCEID ;;
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


  dimension: ids_evidence_number {
    type: string
    sql: ${TABLE}.IDS_EvidenceNumber ;;
  }
  dimension: lnk_offset {
    type: string
    sql: ${TABLE}.LNK_offset ;;
  }

  dimension: local_path {
    type: string
    sql: ${TABLE}.local_path ;;
  }

  dimension: mac_addr {
    type: string
    sql: ${TABLE}.mac_addr ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: netbios_name {
    type: string
    sql: ${TABLE}.netbios_name ;;
  }

  dimension: network_device_info {
    type: string
    sql: ${TABLE}.network_device_info ;;
  }

  dimension: obj_id_date_utc {
    type: string
    sql: ${TABLE}.ObjID_date_UTC ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}.object_id ;;
  }

  dimension: source_path_filename {
    type: string
    sql: ${TABLE}.source_path_filename ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.source_type ;;
  }

  dimension: src_inode {
    type: string
    sql: ${TABLE}.src_inode ;;
  }

  dimension: src_seq_ {
    type: string
    sql: ${TABLE}.src_seq_ ;;
  }

  dimension: target_inode {
    type: string
    sql: ${TABLE}.target_inode ;;
  }

  dimension: target_name {
    type: string
    sql: ${TABLE}.target_name ;;
  }

  dimension: target_seq_ {
    type: string
    sql: ${TABLE}.target_seq_ ;;
  }

  dimension: tgt_access_date_utc {
    type: string
    sql: ${TABLE}.tgt_access_date_UTC ;;
  }

  dimension: tgt_attrib {
    type: string
    sql: ${TABLE}.tgt_attrib ;;
  }

  dimension: tgt_create_date_utc {
    type: string
    sql: ${TABLE}.tgt_create_date_UTC ;;
  }

  dimension: tgt_modify_date_utc {
    type: string
    sql: ${TABLE}.tgt_modify_date_UTC ;;
  }

  dimension: vol_label {
    type: string
    sql: ${TABLE}.vol_label ;;
  }

  dimension: vol_serial {
    type: string
    sql: ${TABLE}.vol_serial ;;
  }

  dimension: vol_type {
    type: string
    sql: ${TABLE}.vol_type ;;
  }

  dimension: volume_id {
    type: string
    sql: ${TABLE}.volume_id ;;
  }

  measure: count {
    type: count
    drill_fields: [source_path_filename, target_name, netbios_name]
  }
}
