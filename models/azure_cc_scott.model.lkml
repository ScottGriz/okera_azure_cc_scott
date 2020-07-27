connection: "okera_azure_cc_scott"

# include all the views
include: "/views/**/*.view"

datagroup: azure_cc_scott_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: azure_cc_scott_default_datagroup

explore: transactions_cc {}
