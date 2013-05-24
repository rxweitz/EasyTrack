class Part < ActiveRecord::Base
  attr_accessible :manufacturer, :mfg_model, :mfg_part_code, :part_description,
                  :part_name, :serialized

  # Each part can have many part_details associated with it
  has_many :part_details

end
