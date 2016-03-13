class AddInfoToEmplois < ActiveRecord::Migration
  def change
    add_column :emplois, :domain, :string
    add_column :emplois, :skill, :string
    add_column :emplois, :language, :string
    add_column :emplois, :description, :string
    add_column :emplois, :localisation, :string
  end
end
