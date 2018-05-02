require 'spec_helper'

describe MyEdge do

  before :each do
    @myedge = MyEdge.new :v, :w, :label, :value
  end


describe "#new" do
  it "returns a new edge object" do
    expect(@myedge).to be_an_instance_of MyEdge
  end
end

describe "#v" do
  it "returns correct label" do
    expect(@myedge.v).to eql :v
  end
end

describe "#w" do
  it "returns correct label" do
    expect(@myedge.w).to eql :w
  end
end

describe "#value" do
  it "returns value" do
    expect(@myedge.value).to eql :value
  end
end

describe "#label" do
  it "returns correct label" do
    expect(@myedge.label).to eql :label
  end
end






end
