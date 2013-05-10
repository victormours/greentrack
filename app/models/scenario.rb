class Scenario < ActiveRecord::Base
    attr_accessible :name, :steps_attributes
    belongs_to :feature
    has_many :steps, :dependent => :destroy
    accepts_nested_attributes_for :steps, :reject_if => lambda { |a| a[:regex].blank? }, :allow_destroy => true

    after_initialize :set_default_name
    def set_default_name
        self.name = "New Scenario" if !self.name
    end
end
