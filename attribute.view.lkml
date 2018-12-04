view: attribute {
  sql_table_name: spt.ATTRIBUTE ;;

  dimension: attribute_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ATTRIBUTE_ID ;;
  }

  dimension_group: beg {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.BEG_DATE ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_lastmodified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_LASTMODIFIED ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.SOURCE_ID ;;
  }

  dimension: target_id {
    type: number
    sql: ${TABLE}.TARGET_ID ;;
  }

  dimension: target_type {
    type: string
    sql: ${TABLE}.TARGET_TYPE ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.TYPE_ID ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: [attribute_id, name]
  }
}
