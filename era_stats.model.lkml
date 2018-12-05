connection: "aws_era_master_udf"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore: db {}
explore: dim {
  join: evt{
    type: left_outer
    sql_on: ${evt.evt_id}.cda_id} = ${evt.evt_id};;
    relationship: one_to_one
    view_label: "Event Details"

  }
}
explore: histo {}
explore: evt {}
