class AddBudgetDescription < ActiveRecord::Migration[6.1]
  def change
    add_column :budget_items, :description, :string
  end
end
