class AddManufacturerToParts < ActiveRecord::Migration
  def self.up
    add_column :parts, :manufacturer, :string
  end

  def self.down
    remove_column :parts, :manufacturer
  end
end
