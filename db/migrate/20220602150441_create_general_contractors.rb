class CreateGeneralContractors < ActiveRecord::Migration[6.1]
  def change
    create_table :general_contractors do |t|
      t.string :company_name
      t.string :address
      t.string :email
      t.string :password_digest
    end
  end
end
