class Project < ActiveRecord::Base
  belongs_to :general_contractor
  has_many :budget_items

  def total_cost
    budget_items.sum(:total)
  end
end
