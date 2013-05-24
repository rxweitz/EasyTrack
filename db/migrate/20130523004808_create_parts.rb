class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :part_name
      t.text :part_description
      t.boolean :serialized
      t.string :mfg_model
      t.string :mfg_part_code

      t.timestamps
    end
  end
end
