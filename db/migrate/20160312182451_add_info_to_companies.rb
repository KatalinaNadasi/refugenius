class AddInfoToCompanies < ActiveRecord::Migration
  def change
  	add_column :companies, :name, :string
  	add_column :companies, :localisation, :string
  	add_column :companies, :phone_number, :string
  	add_column :companies, :description, :string
  	add_column :companies, :website, :string 
  end
end
