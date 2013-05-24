class CreatePartDetails < ActiveRecord::Migration
  def change
    create_table :part_details do |t|
      t.integer :part_id
      t.integer :part_status_id
      t.integer :location_id
      t.integer :quantity
      t.string :serial_number

      t.timestamps
    end
  end
end
