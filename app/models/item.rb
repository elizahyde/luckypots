class Item < ActiveRecord::Base
  has_and_belongs_to_many :tags
  # attr_accessible :name
  belongs_to :potluck
end
