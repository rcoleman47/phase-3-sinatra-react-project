class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string "title"
      t.string "location"
      t.string "description"
      t.string "sector"
      t.string "phase"
      t.integer "size"
      t.integer "duration"
      t.integer "total_cost"
      t.date "start_date"
      t.integer "general_contractor_id"
    end
  end
end
