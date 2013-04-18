require 'spec_helper'

describe Project do
    before do
        @project = Project.new(name: "Cool Project")
    end

    subject { @project}

    it { should respond_to(:name)}

    describe "when name is not present" do
        before { @project.name = " " }
        it { should_not be_valid }
    end

end