require_relative 'project'
RSpec.describe Project do

  before(:each) do
    @project = Project.new("Name", "Description")
  end
  it "has a getter and setter for name attribute" do
    expect(@project.name).to eq("Name")
  end
  it "has a getter and setter for the description attribute" do

    expect(@project.description).to eq("Description")
  end
  it 'has a method elevator_pitch to explain name and description' do

    @project.name = "Name"
    @project.description = "Description"
    expect(@project.elevator_pitch).to eq("Name Description")
  end
end
