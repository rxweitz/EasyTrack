class Location < ActiveRecord::Base
  attr_accessible :address, :city, :location_description,
                  :location_name, :location_type_id, :state, :zip_code

  # Each location is associated with one location_type through the location_type_id
  belongs_to :location_type

  # location_name is required
  validates_presence_of :location_name

  # location_type_id is required
  validates_presence_of :location_type_id

end
