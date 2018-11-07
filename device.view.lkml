view: device {
  sql_table_name: dim.DEVICE ;;

  dimension: device_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DEVICE_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  measure: count {
    type: count
    drill_fields: [device_id, name]
  }
}
