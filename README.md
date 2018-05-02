Graphs
======

## John Harvey 

Built on Ubuntu 

Open terminal

type `'irb'` to begin

### Classes
```
require "./MyGraph.rb"
require "./MyVertex.rb"
require "./MyEdge.rb"
```

### Create instance of MyGraph

`G1=MyGraph.new("g1")`

#----------Add all vertices with labels shown----------#
```
v1=MyVertex.new("hnl", "1", 1)
v2=MyVertex.new("lax", "2", 4)
v3=MyVertex.new("sfo", "3", 2)
v4=MyVertex.new("ord", "4", 4)
v5=MyVertex.new("dfw", "5", 4)
v6=MyVertex.new("lga", "6", 3)
v7=MyVertex.new("pvd", "7", 2)
v8=MyVertex.new("mia", "8", 2)
```
```
G1.new_vertex("hnl", "1", 1)
G1.new_vertex("lax", "2", 4)
G1.new_vertex("sfo", "3", 2)
G1.new_vertex("ord", "4", 4)
G1.new_vertex("dfw", "5", 4)
G1.new_vertex("lga", "6", 3)
G1.new_vertex("pvd", "7", 2)
G1.new_vertex("mia", "8", 2)
```
### Add all edges with shown appropriate values
```
e1=MyEdge.new("hnllax", "2555", "v1", "v2")
e2=MyEdge.new("laxsfo", "337", "v2", "v3")
e3=MyEdge.new("laxord", "1743", "v2", "v4")
e4=MyEdge.new("laxdfw", "1233", "v2", "v5")
e5=MyEdge.new("sfoord", "1843", "v3", "v4")
e6=MyEdge.new("dfword", "802", "v5", "v4")
e7=MyEdge.new("lgadfw", "1387", "v6", "v5")
e8=MyEdge.new("dfwmia", "1120", "v5", "v8")
e9=MyEdge.new("lgamia", "1099", "v6", "v8")
e10=MyEdge.new("lgapvd", "142", "v6", "v7")
e11=MyEdge.new("ordpvd", "849", "v4", "v7")
```
```
G1.new_edge("v1", "v2", "e1", "NoValue")
G1.new_edge("v2", "v3", "e2", "NoValue")
G1.new_edge("v2", "v4", "e3", "NoValue")
G1.new_edge("v2", "v5", "e4", "NoValue")
G1.new_edge("v3", "v4", "e5", "NoValue")
G1.new_edge("v5", "v4", "e6", "NoValue")
G1.new_edge("v6", "v5", "e7", "NoValue")
G1.new_edge("v5", "v8", "e8", "NoValue")
G1.new_edge("v6", "v8", "e9", "NoValue")
G1.new_edge("v6", "v7", "e10", "NoValue")
G1.new_edge("v4", "v7", "e11", "NoValue")
```
### General Operations
```
G1.num_vertices
G1.num_edges
G1.list_vertices	
G1.list_edges
G1.vertex(MyVertex v)
G1.deg_vertex()
G1.incident_edges()
G1.adjecent_vertex()
G1.end_verticies()
G1.are_adjacent()
```

### Check Update Methods
```
G1.remove_edge
G1.remove_vertex
```


