view: i_ds_vw_sbag_master {
  sql_table_name: dbo.iDS_vw_SBAG_Master ;;

  dimension: absolute_path {
    type: string
    sql: ${TABLE}.AbsolutePath ;;
  }

  dimension: accessed_on {
    type: string
    sql: ${TABLE}.AccessedOn ;;
  }

  dimension: bag_path {
    type: string
    sql: ${TABLE}.BagPath ;;
  }

  dimension: child_bags {
    type: string
    sql: ${TABLE}.ChildBags ;;
  }

  dimension: created_on {
    type: string
    sql: ${TABLE}.CreatedOn ;;
  }

  dimension: extension_block_count {
    type: string
    sql: ${TABLE}.ExtensionBlockCount ;;
  }

  dimension: first_interacted {
    type: string
    sql: ${TABLE}.FirstInteracted ;;
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
    sql: ${TABLE}.ids_source_file ;;
  }

  dimension: ids_sourceid {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: last_interacted {
    type: string
    sql: ${TABLE}.LastInteracted ;;
  }

  dimension: last_write_time {
    type: string
    sql: ${TABLE}.LastWriteTime ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }

  dimension: mftentry {
    type: string
    sql: ${TABLE}.MFTEntry ;;
  }

  dimension: mftsequence_number {
    type: string
    sql: ${TABLE}.MFTSequenceNumber ;;
  }

  dimension: miscellaneous {
    type: string
    sql: ${TABLE}.Miscellaneous ;;
  }

  dimension: modified_on {
    type: string
    sql: ${TABLE}.ModifiedOn ;;
  }

  dimension: mruposition {
    type: string
    sql: ${TABLE}.MRUPosition ;;
  }

  dimension: node_slot {
    type: string
    sql: ${TABLE}.NodeSlot ;;
  }

  dimension: shell_type {
    type: string
    sql: ${TABLE}.ShellType ;;
  }

  dimension: slot {
    type: string
    sql: ${TABLE}.Slot ;;
  }

  dimension: source_file {
    type: string
    sql: ${TABLE}.SourceFile ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [ids_device_name]
  }
}
