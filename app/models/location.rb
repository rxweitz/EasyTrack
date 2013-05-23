class Location < ActiveRecord::Base
  attr_accessible :address, :city, :location_description,
                  :location_name, :location_type_id, :state, :zip_code

  # Each location is associated with one location_type through the location_type_id
  belongs_to :location_type

  # Each location can have many part_details associated with it
  has_many :part_details

  # location_name is required and must be unique
  validates_presence_of :location_name
  validates_uniqueness_of :location_name

  # location_type_id is required
  validates_presence_of :location_type_id
  validates_existence_of :location_type, :both => false

end
