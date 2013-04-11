class Feature < ActiveRecord::Base
  attr_accessible :name, :project_id
  validates :project_id, presence: true
  belongs_to :project
end
