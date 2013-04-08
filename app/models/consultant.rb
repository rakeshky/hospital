class Consultant < ActiveRecord::Base
  attr_accessible :doctor

  has_many :consults
  
end
