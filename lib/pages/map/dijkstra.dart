import 'package:collection/collection.dart';
import 'graph.dart';

class Graph {
  final Map<String, List<Edge>> adjList = {};

  Graph(List<Edge> edges) {
    for (var edge in edges) {
      adjList.putIfAbsent(edge.source, () => []).add(edge);
      adjList.putIfAbsent(edge.destination, () => []).add(
        Edge(edge.destination, edge.source, edge.weight),
      );
    }
  }

  List<String> dijkstra(String start, String end) {
    final distances = <String, double>{};
    final previous = <String, String?>{};
    final priorityQueue = PriorityQueue<MapEntry<String, double>>(
          (a, b) => a.value.compareTo(b.value),
    );

    adjList.keys.forEach((node) {
      distances[node] = double.infinity;
      previous[node] = null;
    });
    distances[start] = 0;

    priorityQueue.add(MapEntry(start, 0));

    while (priorityQueue.isNotEmpty) {
      final current = priorityQueue.removeFirst().key;

      if (current == end) {
        final path = <String>[];
        String? step = end;
        while (step != null) {
          path.insert(0, step);
          step = previous[step];
        }
        return path;
      }

      if (distances[current]! == double.infinity) {
        break;
      }

      for (var edge in adjList[current]!) {
        final alt = distances[current]! + edge.weight;
        if (alt < distances[edge.destination]!) {
          distances[edge.destination] = alt;
          previous[edge.destination] = current;
          priorityQueue.add(MapEntry(edge.destination, alt));
        }
      }
    }

    return [];
  }
}