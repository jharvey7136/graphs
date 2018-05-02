require 'spec_helper'

describe MyGraph do

  before :each do
    @mygraph = MyGraph.new :label
  end

    describe "#new" do
      it "returns new graph object" do
        expect(@mygraph).to be_an_instance_of MyGraph
      end

      describe "#label" do
        it "returns the correct label" do
          expect(@mygraph.label).to eql :label
        end
      end

      it "creates new graph" do
        G1 = MyGraph.new("G1")
        expect(G1 = MyGraph.new("G1")).to be_an_instance_of MyGraph
      end

      it "Add vertices (cities/airports) to the graph" do
        G1.new_vertex("HNL", "HNL")
        G1.new_vertex("SFO", "SFO")
        G1.new_vertex("LAX", "LAX")
        G1.new_vertex("ORD", "ORD")
        G1.new_vertex("DFW", "DFW")
        G1.new_vertex("PVD", "PVD")
        G1.new_vertex("LGA", "LGA")
        G1.new_vertex("MIA", "MIA")
        expect(G1.Vertices_Array.length).to eql 8
      end

      it "Add edges (distance in miles) to the graph" do
        G1.new_edge("HNL", "LAX", "2555", "2555")
        G1.new_edge("SFO", "LAX", "337", "337")
        G1.new_edge("SFO", "ORD", "1843", "1843")
        G1.new_edge("LAX", "ORD", "1743", "1743")
        G1.new_edge("LAX", "DFW", "1233", "1233")
        G1.new_edge("ORD", "DFW", "802", "802")
        G1.new_edge("ORD", "PVD", "849", "849")
        G1.new_edge("DFW", "LGA", "1387", "1387")
        G1.new_edge("DFW", "MIA", "1120", "1120")
        G1.new_edge("PVD", "LGA", "142", "142")
        G1.new_edge("LGA", "MIA", "1099", "1099")
        expect(G1.Edges_Array.length).to eql 11
      end


      it "returns the number of vertices" do
        expect(G1.num_vertices).to eql 8
      end

      it "returns the number of edges" do
        expect(G1.num_edges).to eql 11
      end

      it "returns a list of vertices" do
        expect(G1.list_vertices).to eql G1.Vertices_Array
      end

      it "returns a list of edges" do
        expect(G1.list_edges).to eql G1.Edges_Array
      end

      it "returns a vertex" do
        expect(G1.vertex("HNL")).to eql "HNL"
      end

      it "removes a vertex" do
        G1.remove_vertex("SFO")
        expect(G1.num_vertices).to eql 7
        expect(G1.list_vertices).to eql G1.Vertices_Array
      end
    end




end
