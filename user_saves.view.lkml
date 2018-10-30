view: user_saves {
  sql_table_name: dbo.USER_SAVES ;;

  dimension: data_type {
    type: string
    sql: ${TABLE}.DataType ;;
  }

  dimension: data_value {
    type: string
    sql: ${TABLE}.DataValue ;;
  }

  dimension: save_id {
    type: number
    sql: ${TABLE}.SaveID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [users.user_id, users.user_name, users.first_name, users.last_name]
  }
}
