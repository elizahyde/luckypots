class Potluck < ActiveRecord::Base
  attr_accessible :datetime, :location, :name
  has_many :tags
  has_many :items
  has_and_belongs_to_many :keywords
end
