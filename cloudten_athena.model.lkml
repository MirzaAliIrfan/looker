connection: "cloudten-athena"

# include all the views
include: "*.view"

datagroup: cloudten_athena_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cloudten_athena_default_datagroup

explore: cloudtrail_logs {}
