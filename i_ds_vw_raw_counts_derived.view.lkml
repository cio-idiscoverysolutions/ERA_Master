view: i_ds_vw_raw_counts_derived {
    derived_table: {
      sql:
Select z.*, sf.linecnt
From (
    select MatterNumber, IDS_Source_File, SUM(IDS_Dupe) IDS_Dupe, SUM(IDS_Ignore) IDS_Ignore, IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber, Count(*) Record_Count
    From (
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore  ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_LNK_Master UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_JMP_Master UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_SBAG_Master UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_USB_Master UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_CAFAE_USER_ASSIST_Master UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_TIA_TRASH_Master UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_PF_Master UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_CAFAE_OPENRUNMRU_Master UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_CAFAE_OPENSAVEMRU_Master    UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_CAFAE_RECENTDOCS_Master     UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_EVT_WALK_Master  UNION ALL
        Select MatterNumber, IDS_Source_File, convert(int,isnull(IDS_Dupe,'0')) IDS_Dupe, convert(int,ISNULL(IDS_Ignore,'0')) IDS_Ignore ,IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber  From iDS_vw_NTFS_WALK_Master
    ) data
    Group by MatterNumber, IDS_Source_File, IDS_Custodian, IDS_DeviceName, IDS_DeviceNotes, IDS_EvidenceNumber
  )z
  Left Join src_files sf
    ON sf.filename = z.IDS_Source_File;;
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
  dimension: Record_Count {
    type: number
    sql: ${TABLE}.Record_Count ;;
  }
  dimension: LINECNT {
    type: number
    sql: ${TABLE}.LINECNT ;;
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

  measure: sum_dupes {
    type: sum
   sql: ${TABLE}.IDS_Dupe  ;;
  }
  measure: sum_exclude {
    type: sum
    sql: ${TABLE}.IDS_Ignore;;
  }

   measure: count {
    type: count
    drill_fields: [IDS_Source_File, IDS_EvidenceNumber, IDS_DeviceNotes,IDS_Custodian,MatterNumber]
  }
    }
