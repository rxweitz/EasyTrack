class PartDetail < ActiveRecord::Base
  attr_accessible :location_id, :part_id, :part_status_id, :location_id, :quantity, :serial_number

  # Each part_detail is associated with one part through the part_id
  belongs_to :part

  # Each part_detail is associated with one location through the location_id
  belongs_to :location

  # Each part_detail is associated with one part_status through the part_status_id
  belongs_to :part_status

end
