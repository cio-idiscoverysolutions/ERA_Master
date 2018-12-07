view: i_ds_vw_raw_counts_derived {
    derived_table: {
      sql:
Select * FROM i_ds_vw_raw_counts_derived;;
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
