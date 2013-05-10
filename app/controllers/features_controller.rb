class FeaturesController < ApplicationController

def new
    @feature = Feature.new
end

def create
    @feature = Feature.new(params[:feature])
    @feature.project_id = params[:project_id]
    if @feature.save
        redirect_to @feature
    else
        flash[:error] = "Something went wrong while creating this feature. Please try again."
        render action: :new
    end
end

def show
    @feature = Feature.find(params[:id])
    @scenarios = @feature.scenarios
end

end
