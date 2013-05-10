class ScenariosController < ApplicationController

def new
    @feature = params[:feature_id]
    @scenario = Scenario.new
end

def create
    @scenario = Scenario.new(params[:scenario])
    @scenario.feature_id = params[:feature_id]
    if @scenario.save
        redirect_to edit_feature_scenario_path(params[:feature_id], @scenario)
    else
        flash[:error] = "Something went wrong while creating this scenario. Please try again."
        render action: :new
    end
end

def edit
    @scenario = Scenario.new(params[:scenario])
end

def update
    @scenario = Scenario.new(params[:scenario])
    @scenario.feature_id = params[:feature_id]
    if @scenario.save
        redirect_to @scenario
    else
        flash[:error] = "Something went wrong while saving this scenario. Please try again."
        render action: :edit
    end
end

def show

end

end
