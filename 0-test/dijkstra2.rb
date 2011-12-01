
require 'pqueue'

class Algorithm
INFINITY = 1 << 32

def self.dijkstra(source, edges, weights, n)
visited = Array.new(n, false)
shortest_distances = Array.new(n, INFINITY)
previous = Array.new(n, nil)
pq = PQueue.new(proc {|x,y| shortest_distances[x] < shortest_distances[y]})

pq.push(source)
visited = true
shortest_distances = 0

while pq.size != 0
v = pq.pop
visited[v] = true
if edges[v]
edges[v].each do |w|
if !visited[w] and shortest_distances[w] > shortest_distances[v] + weights[v][w]
shortest_distances[w] = shortest_distances[v] + weights[v][w]
previous[w] = v
pq.push(w)
end
end
end
end
return [shortest_distances, previous]
end
end