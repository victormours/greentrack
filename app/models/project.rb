class Project < ActiveRecord::Base
  attr_accessible :name
  has_many :features
  validates :name, presence: true
end
