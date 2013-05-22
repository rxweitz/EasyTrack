class CreateLocationTypes < ActiveRecord::Migration
  def change
    create_table :location_types do |t|
      t.string :location_type
      t.text :location_type_description

      t.timestamps
    end
  end
end
