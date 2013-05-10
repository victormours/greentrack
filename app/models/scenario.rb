class Scenario < ActiveRecord::Base
    attr_accessible :name
    belongs_to :feature
    has_many :steps

    after_initialize :set_default_name
    def set_default_name
        self.name = "New Scenario" if !self.name
    end
end
