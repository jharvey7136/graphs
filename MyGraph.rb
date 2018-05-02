require "./MyVertex.rb"
require "./MyEdge.rb"

class MyGraph

  attr_accessor :label, :Vertices_Array, :newvertex, :Edges_Array, :newedge

  def initialize label
    @label = label
    self.Vertices_Array=[]
    self.Edges_Array=[]
  end


#-----function to create a new vertex-----#
  def new_vertex(label, value, degree)
    @newvertex=MyVertex.new(label, value, degree)
      puts "Vertex #{newvertex.label} with value #{newvertex.value} and degree #{newvertex.degree} Added!"
      self.Vertices_Array.push(newvertex)
  end

#-----function to create a new edge-----#
  def new_edge(v, w, label, value)
    @newedge=MyEdge.new(v, w, label, value)
      puts "Edge #{newedge.label} with value #{newedge.value} with:"
      self.Edges_Array.push(newedge)
      self.Vertices_Array.each do |vertex|
        if (v==vertex.label)
          puts "Vertex 1: #{vertex.label} value: #{vertex.value} "
          vertex.degree = vertex.degree+1
        end
        if (w==vertex.label)
          puts "Vertex 2: #{vertex.label} value: #{vertex.value} "
          vertex.degree = vertex.degree+1
        end
      end
    end


#-----function to return the number of vertices in graph G-----#
  def num_vertices
    count = 1
      self.Vertices_Array.each do |vertex|
      count = count.next
      end
      puts "Total : #{count-1}"
  end

#-----function to return the number of edges in graph G-----#
  def num_edges
    count = 1
      self.Edges_Array.each do |edge|
        count = count.next
        end
    puts "Total : #{count-1}"
  end

#-----function to return an array containing all vertices in G-----#
  def list_vertices
    self.Vertices_Array.each do |vertex|
        puts "label: #{vertex.label} value: #{vertex.value} "
      end
  end

#-----function to return an array containing all edges in G-----#
  def list_edges
    self.Edges_Array.each do |edge|
        puts "Edge with label: #{edge.label} value: #{edge.value} and Vertices: #{edge.v} & #{edge.w}"
      end
  end

#-----function to return some vertex "v" in G-----#
  def vertex(v)
    self.Vertices_Array.each do |vertex|
      if (v==vertex.label)
        puts "Vertex with label: #{vertex.label} value: #{vertex.value} "
      end
    end
  end

#-----function to return the degree of a given vertex "v" in G-----#
  def deg_vertex(v)
    self.Vertices_Array.each do |vertex|
      if (v==vertex.label)
        puts "Vetrex with label: #{vertex.label} has degree: #{vertex.degree} "
      end
    end
  end

#-----function to return an array of edges incident upon some vertex "v" in G-----#
  def adjecent_vertex(v)
    self.Vertices_Array.each do |vertex|
      self.Edges_Array.each do |edge|
        if (v==vertex.label)
          if (vertex.label==edge.v)
            puts "Vertex #{edge.w} is an adjecent of vertex #{edge.v} "
          end
        end
      end
    self.Edges_Array.each do |edge|
      if (v==vertex.label)
        if (vertex.label==edge.w)
          puts "Vertex #{edge.v} is an adjecent of vertex #{edge.w} "
          end
        end
      end
    end
  end


#-----function to return two incident edges given a vertex v-----#
  def incident_edges(v)
    message = " "
    self.Vertices_Array.each do |vertex|
      self.Edges_Array.each do |edge|
        if (v==vertex.label)
          if (vertex.label==edge.v)
            print "#{edge.label},"
            message = message + "#{edge.label}, "
          end
        end
      end
      self.Edges_Array.each do |edge|
        if (v==vertex.label)
          if (vertex.label==edge.w)
            print "#{edge.label},"
            message = message + "#{edge.label}, "
          end
        end
      end
    end
    return message
  end

#-----function to return the two end vertices v and w given an edge e-----#
  def end_vertices(e)
      self.Edges_Array.each do |edge|
        if (e==edge.label)
            puts "The end vertices of edge #{edge.label} are #{edge.v} and #{edge.w} "
            return "#{edge.v}, #{edge.w}"
        end
      end
  end

#-----function to return whether or not two verticies are adjacent given v and w of an edge-----#
  def are_adjacent(v, w)
      self.Edges_Array.each do |edge|
        if (v==edge.v && w==edge.w)
            puts " Vertices #{edge.v} and #{edge.w} are adjacent "
            return "yes"
        elsif (w==edge.v && v==edge.w)
          puts " Result: Vertices #{edge.v} and #{edge.w} are adjacent "
            return "yes"
          else
            return "Vertices are not adjacent"
        end
      end
  end


#-----function to remove a given edge 'e' and update vertex degrees-----#
  def remove_edge(e)
    self.Edges_Array.each do |edge|
      if (e==edge.label)
        self.Edges_Array.delete(edge)
          self.Vertices_Array.each do |vertex|
            if(edge.v==vertex.label)
              vertex.degree=vertex.degree-1
            end
            if(edge.w==vertex.label)
              vertex.degree=vertex.degree-1
            end
          end
      end
    end
  end


#-----function to remove a given vertex 'v' and delete any edges associated with it-----#
  def remove_vertex(v)
    self.Vertices_Array.each do |vertex|
      if (v==vertex.label)
        self.Vertices_Array.delete(vertex)
      end
    end
    self.Edges_Array.each do |edge|
      if (v==edge.v || v==edge.w)
        self.Edges_Array.delete(edge)
        vertex.degree = vertex.degree-1
      end
    end
  end


#final end
end
