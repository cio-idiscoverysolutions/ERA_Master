view: i_ds_vw_raw_counts_derived {
    derived_table: {
      sql:

Select MatterNumber, IDS_Source_File, isnull(IDS_Dupe,'0') IDS_Dupe, ISNULL(IDS_Ignore,'0') IDS_Ignore,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_LNK_Master UNION ALL
Select MatterNumber, IDS_Source_File, isnull(IDS_Dupe,'0') IDS_Dupe, ISNULL(IDS_Ignore,'0') IDS_Ignore,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_JMP_Master UNION ALL
Select MatterNumber, IDS_Source_File, isnull(IDS_Dupe,'0') IDS_Dupe, ISNULL(IDS_Ignore,'0') IDS_Ignore,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_SBAG_Master UNION ALL
Select MatterNumber, IDS_Source_File, isnull(IDS_Dupe,'0') IDS_Dupe, ISNULL(IDS_Ignore,'0') IDS_Ignore,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_USB_Master UNION ALL
Select MatterNumber, IDS_Source_File, isnull(IDS_Dupe,'0') IDS_Dupe, ISNULL(IDS_Ignore,'0') IDS_Ignore,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_CAFAE_USER_ASSIST_Master UNION ALL
Select MatterNumber, IDS_Source_File, isnull(IDS_Dupe,'0') IDS_Dupe, ISNULL(IDS_Ignore,'0') IDS_Ignore,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_TIA_TRASH_Master UNION ALL
Select MatterNumber, IDS_Source_File, isnull(IDS_Dupe,'0') IDS_Dupe, ISNULL(IDS_Ignore,'0') IDS_Ignore,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_PF_Master UNION ALL
Select MatterNumber, IDS_Source_File, isnull(IDS_Dupe,'0') IDS_Dupe, ISNULL(IDS_Ignore,'0') IDS_Ignore,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_CAFAE_OPENRUNMRU_Master UNION ALL
Select MatterNumber, IDS_Source_File, isnull(IDS_Dupe,'0') IDS_Dupe, ISNULL(IDS_Ignore,'0') IDS_Ignore,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_CAFAE_OPENSAVEMRU_Master      ;;
    }

  dimension: MatterNumber {
    type: string
    sql: ${TABLE}.MatterNumber ;;
  }


  dimension: IDS_Source_File {
    type: string
    sql: ${TABLE}.IDS_Source_File ;;
  }

  dimension: IDS_Dupe {
    type: number
    sql: ${TABLE}.IDS_Dupe ;;
  }

  dimension: IDS_Ignore {
    type: number
    sql: ${TABLE}.IDS_Ignore ;;
  }

  dimension: IDS_Custodian {
    type: string
    sql: ${TABLE}.IDS_Custodian ;;
  }

  dimension: IDS_DeviceNotes {
    type: string
    sql: ${TABLE}.IDS_DeviceNotes ;;
  }
  dimension: IDS_EvidenceNumber {
    type: string
    sql: ${TABLE}.IDS_EvidenceNumber ;;
  }

  measure: count_dupes {
    type: sum
   sql: ${TABLE}.IDS_Dupe  ;;
  }
  measure: count_exclude {
    type: sum
    sql: ${TABLE}.IDS_Ignore  ;;
  }
    }
