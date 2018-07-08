class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.text :first_name
      t.text :middle_name
      t.text :last_name
      t.integer :weight
      t.integer :height
      t.string :mrn

      t.timestamps null: false
    end
  end
end
