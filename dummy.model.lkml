connection: "azure"

#include: "/Campaigns/*.view.lkml"                  # include all views in the views/ folder in this project
#include: "/views/*.view.lkml"
include: "/**/*.view.lkml"
datagroup: sample_datagroup {
  max_cache_age: "24 hours"
  label: "Sample Datagroup"
}

                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: purchase_order {
  persist_with: sample_datagroup

  }
