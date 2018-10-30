view: db_settings {
  sql_table_name: dbo.DB_SETTINGS ;;

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
