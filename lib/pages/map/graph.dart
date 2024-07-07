// graph_data.dart

class Edge {
  final String source;
  final String destination;
  final double weight;

  Edge(this.source, this.destination, this.weight);
}

class Node {
  final String name;
  final double lat;
  final double lon;

  Node(this.name, this.lat, this.lon);
}

List<Edge> edges = [
  // Define your edges here
  Edge('Node1', 'Node2', 1.0),
  Edge('Node1', 'Node3', 2.0),
  // Add all other edges
];

Map<String, Node> nodes = {
  'Node1': Node('Ampitheather', 14.598, 121.011),
  'Node2': Node('Node2', 14.599, 121.012),
  'Node3': Node('Node3', 14.600, 121.013),
  // Add all other nodes
};