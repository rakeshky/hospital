class Consult < ActiveRecord::Base
  attr_accessible :patient, :consultant_id
  belongs_to :consultant
end
