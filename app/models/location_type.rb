class LocationType < ActiveRecord::Base
  attr_accessible :location_type, :location_type_description

  # Each location_type can have many locations associated with it
  has_many :locations

end
