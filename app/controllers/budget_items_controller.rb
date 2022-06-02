class BudgetItemsController < ApplicationController

  get "/budget_items" do
    BudgetItem.all.find_by(project_id: params[:project_id]).to_json
  end

  post "/budget_items" do
    new_item = BudgetItem.create(
      number: params[:number],
      unit: params[:unit],
      cost_per_unit: params[:cost_per_unit],
      total_cost: params[:total_cost],
      subcontracted?: params[:subcontracted?],
      project_id: params[:project_id]
    )
  end

  patch "/budget_items" do
    edit = BudgetItem.find(params[:id]).update(
      number: params[:number],
      unit: params[:unit],
      cost_per_unit: params[:cost_per_unit],
      total_cost: params[:total_cost],
      subcontracted?: params[:subcontracted?]
    )
    edit.to_json
  end

  delete "/budget_items" do
    delete = BudgetItem.find(params[:id])
    delete.destroy
    delete.to_json
  end


end
