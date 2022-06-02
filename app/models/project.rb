class Project < ActiveRecord::Base
  belongs_to :general_contractor
  has_many :budget_items

end
