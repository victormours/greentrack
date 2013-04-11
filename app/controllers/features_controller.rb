class FeaturesController < ApplicationController

def new
    @feature = Feature.new
    @feature.name = "New Feature"
end

def create

end

end
