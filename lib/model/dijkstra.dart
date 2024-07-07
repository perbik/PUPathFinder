import 'package:collection/collection.dart';

class Edge {
  int node;
  int cost;
  Edge(this.node, this.cost);
}

class Graph {
  final int vertices;
  List<List<Edge>> adjList;

  Graph(this.vertices) : adjList = List.generate(vertices, (_) => []);

  void addEdge(int u, int v, int cost) {
    adjList[u].add(Edge(v, cost));
    adjList[v].add(Edge(u, cost));
  }

  Map<String, dynamic> dijkstra(int src, int dest) {
    List<int> dist = List.filled(vertices, double.infinity.toInt(), growable: false);
    List<bool> sptSet = List.filled(vertices, false, growable: false);
    List<int> prev = List.filled(vertices, -1, growable: false);

    PriorityQueue<Edge> pq = PriorityQueue<Edge>((a, b) => a.cost.compareTo(b.cost));

    pq.add(Edge(src, 0));
    dist[src] = 0;

    while (pq.isNotEmpty) {
      int u = pq.removeFirst().node;

      if (sptSet[u]) continue;
      sptSet[u] = true;

      if (u == dest) break;

      for (Edge edge in adjList[u]) {
        int v = edge.node;
        int weight = edge.cost;

        if (!sptSet[v] && dist[u] + weight < dist[v]) {
          dist[v] = dist[u] + weight;
          prev[v] = u;
          pq.add(Edge(v, dist[v]));
        }
      }
    }

    List<int> path = _reconstructPath(src, dest, prev);
    int totalWeight = path.isNotEmpty ? dist[dest] : 0;

    return {'path': path, 'totalWeight': totalWeight};
  }

  List<int> _reconstructPath(int src, int dest, List<int> prev) {
    List<int> path = [];
    for (int at = dest; at != -1; at = prev[at]) {
      path.add(at);
    }
    path = path.reversed.toList();
    if (path[0] != src) return []; // No path found
    return path;
  }
}