view: matter {
  sql_table_name: dim.MATTER ;;

  dimension: matter_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MATTER_ID ;;
  }

  dimension: matter_number {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [matter_id, matter_number, udf.count]
  }
}
