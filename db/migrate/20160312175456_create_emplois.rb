class CreateEmplois < ActiveRecord::Migration
  def change
    create_table :emplois do |t|
      t.string :name
      t.integer :stars

      t.timestamps null: false
    end
  end
end
