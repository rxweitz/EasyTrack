class CreatePartStatuses < ActiveRecord::Migration
  def change
    create_table :part_statuses do |t|
      t.string :part_status
      t.text :status_description

      t.timestamps
    end
  end
end
