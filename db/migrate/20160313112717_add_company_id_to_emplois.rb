class AddCompanyIdToEmplois < ActiveRecord::Migration
  def change
    add_reference :emplois, :company, index: true, foreign_key: true
  end
end
