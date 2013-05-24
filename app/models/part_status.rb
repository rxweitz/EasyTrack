class PartStatus < ActiveRecord::Base
  attr_accessible :part_status, :status_description

  # Each part_status can have many part_details associated with it
  has_many :part_details

end
