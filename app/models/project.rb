class Project < ActiveRecord::Base
  attr_accessible :name
  has_many :features, :dependent => :destroy
  validates :name, presence: true
end
