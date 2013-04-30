class Feature < ActiveRecord::Base
    attr_accessible :name, :project_id
    validates :project_id, presence: true
    validates :name, presence: true
    belongs_to :project
    has_many :scenario

    after_initialize :set_default_name
    def set_default_name
        self.name = "New Feature" if !self.name
    end

end
