class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :telephone, :string
    add_column :users, :localisation, :string
    add_column :users, :domain, :string
    add_column :users, :skill, :string
    add_column :users, :experience_year, :string
    add_column :users, :description, :string
    add_column :users, :language, :string
  end
end
