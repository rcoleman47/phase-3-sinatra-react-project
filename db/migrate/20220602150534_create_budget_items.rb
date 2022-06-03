class CreateBudgetItems < ActiveRecord::Migration[6.1]
  def change
    create_table :budget_items do |t|
      t.integer "number"
      t.string "unit"
      t.float "cost_per_unit"
      t.float "total"
      t.boolean "subcontracted"
      t.integer "project_id"
    end
  end
end
