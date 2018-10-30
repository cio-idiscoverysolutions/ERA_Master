connection: "aws_era_master_udf"

# include all the views
include: "*.view"

datagroup: era_master_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: era_master_default_datagroup

explore: cdf_lnk_abcde_01234_master {}

explore: src_master {}
