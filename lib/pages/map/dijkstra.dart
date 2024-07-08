// dijkstra.dart

import 'graph.dart';
import 'package:collection/collection.dart';

class Graph {
  final Map<String, List<Edge>> adjacencyList = {};

  Graph(List<Edge> edges) {
    for (var edge in edges) {
      if (!adjacencyList.containsKey(edge.source)) {
        adjacencyList[edge.source] = [];
      }
      adjacencyList[edge.source]!.add(edge);
    }
  }

  List<String> dijkstra(String start, String goal) {
    final Map<String, double> distances = {};
    final Map<String, String?> previous = {};
    final PriorityQueue<MapEntry<String, double>> queue = PriorityQueue<MapEntry<String, double>>(
      (a, b) => a.value.compareTo(b.value),
    );

    for (var node in adjacencyList.keys) {
      distances[node] = double.infinity;
      previous[node] = null;
      queue.add(MapEntry(node, double.infinity));
    }

    distances[start] = 0;
    queue.add(MapEntry(start, 0));

    while (queue.isNotEmpty) {
      final current = queue.removeFirst().key;

      if (current == goal) {
        final path = <String>[];
        var step = goal;
        while (previous[step] != null) {
          path.add(step);
          step = previous[step]!;
        }
        path.add(start);
        return path.reversed.toList();
      }

      for (var edge in adjacencyList[current]!) {
        final alt = distances[current]! + edge.weight;
        if (alt < distances[edge.destination]!) {
          distances[edge.destination] = alt;
          previous[edge.destination] = current;
          queue.add(MapEntry(edge.destination, alt));
        }
      }
    }

    return [];
  }
}
