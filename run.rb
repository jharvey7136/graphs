require_relative "MyGraph"

# create graph object
G1 = MyGraph.new("g1")

# add vertices to graph
G1.new_vertex("hnl", "1", 1)
G1.new_vertex("lax", "2", 4)
G1.new_vertex("sfo", "3", 2)
G1.new_vertex("ord", "4", 4)
G1.new_vertex("dfw", "5", 4)
G1.new_vertex("lga", "6", 3)
G1.new_vertex("pvd", "7", 2)
G1.new_vertex("mia", "8", 2)

# add edges to graph
G1.new_edge("hnl", "lax", "e1", "NoValue")
G1.new_edge("lax", "sfo", "e2", "NoValue")
G1.new_edge("lax", "ord", "e3", "NoValue")
G1.new_edge("lax", "dfw", "e4", "NoValue")
G1.new_edge("sfo", "ord", "e5", "NoValue")
G1.new_edge("dfw", "ord", "e6", "NoValue")
G1.new_edge("lga", "dfw", "e7", "NoValue")
G1.new_edge("dfw", "mia", "e8", "NoValue")
G1.new_edge("lga", "mia", "e9", "NoValue")
G1.new_edge("lga", "pvd", "e10", "NoValue")
G1.new_edge("ord", "pvd", "e11", "NoValue")



def main_menu
  puts "\nGraph Functions"
  puts "1. Number of vertices"
  puts "2. Number of edges"
  puts "3. List vertices"
  puts "4. List edges"
  puts "5. Return a vertex v"
  puts "6. Return degree of vertex v"
  puts "7. Incident edges on vertex v"
  puts "8. Adjecent vertex of vertex v"
  puts "9. Return two end vertices on edge e"
  puts "10. Return true if vertices v and w are adjecent"
  puts "11. Remove edge e"
  puts "12. Remove vertex v"
  puts "13. Exit"

  case gets.strip
  when "1"
    G1.num_vertices
    main_menu
  when "2"
    G1.num_edges
    main_menu
  when "3"
    G1.list_vertices
    main_menu
  when "4"
    G1.list_edges
    main_menu
  when "5"
    puts "Enter vertex label (sfo)"
    v = gets.strip
    G1.vertex(v)
    main_menu
  when "6"
    puts "Enter vertex label (sfo)"
    v = gets.strip
    G1.deg_vertex(v)
    main_menu
  when "7"
    puts "Enter vertex label (sfo)"
    v = gets.strip
    G1.incident_edges(v)
    main_menu
  when "8"
    puts "Enter vertex label (sfo)"
    v = gets.strip
    G1.adjecent_vertex(v)
    main_menu
  when "9"
    puts "Enter edge label (e1)"
    e = gets.strip
    G1.end_vertices(e)
    main_menu
  when "10"
    puts "Enter vertex v (sfo)"
    v = gets.strip
    puts "Enter vertex w (lax)"
    w = gets.strip
    G1.are_adjacent(v, w)
    main_menu
  when "11"
    puts "Enter edge to remove (e1)"
    e = gets.strip
    G1.remove_edge(e)
    main_menu
  when "12"
    puts "Enter vertex to remove (sfo)"
    v = gets.strip
    G1.remove_vertex(v)
    main_menu
  when "13"
    exit
  else
    puts "Choose option 1-13"
    main_menu
  end
end


main_menu
