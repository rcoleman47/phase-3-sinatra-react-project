class BudgetItem < ActiveRecord::Base
  belongs_to :project

  def total 
   result = (self.number * self.cost_per_unit).to_f
   update(total: result)
   result
  end

end