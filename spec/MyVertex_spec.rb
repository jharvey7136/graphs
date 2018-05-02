require 'spec_helper'

describe MyVertex do

  before :each do
    @myvertex = MyVertex.new :label, :value, :degree
  end

    describe "#new" do
      it "returns a new vertex object" do
        expect(@myvertex).to be_an_instance_of MyVertex
      end
    end



    describe "#label" do
      it "returns the correct label" do
        expect(@myvertex.label).to eql :label
      end
    end

    describe "#value" do
      it "returns the value label" do
        expect(@myvertex.value).to eql :value
      end
    end

    describe "#degree" do
      it "returns the correct label" do
        expect(@myvertex.degree).to eql :degree
      end
    end

end
