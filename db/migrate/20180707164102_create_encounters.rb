class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :visit_number
      t.datetime :admitted_at
      t.datetime :discharged_at
      t.string :location
      t.string :room
      t.string :bed
      t.belongs_to :patient, index: true

      t.timestamps null: false
    end
  end
end
