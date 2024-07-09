import 'package:collection/collection.dart';
import 'graph.dart';

class Graph {
  final Map<String, List<Edge>> adjList = {};

  // Constructor for the graph with the adjacency list
  Graph(List<Edge> edges) {
    for (var edge in edges) {
      // Adding source and destination nodes to adjacency list
      adjList.putIfAbsent(edge.source, () => []).add(edge);
      adjList.putIfAbsent(edge.destination, () => []).add(
        Edge(edge.destination, edge.source, edge.weight),
      );
    }
  }

  // Actual method for Dijkstra's algorithm
  List<String> dijkstra(String start, String end) {
    final distances = <String, double>{}; // For distance from a single node
    final previous = <String, String?>{}; // For tracking the paths
    final priorityQueue = PriorityQueue<MapEntry<String, double>>(
          (a, b) => a.value.compareTo(b.value),
    );

    for (var node in adjList.keys) {
      distances[node] = double.infinity; // Setting initial distances to infinite
      previous[node] = null; // Setting initial previous node to null
    }
    distances[start] = 0; // Setting the distance of the start node to 0

    // Start time
    final startTime = DateTime.now();
    print('Dijkstra algorithm started at: $startTime');

    priorityQueue.add(MapEntry(start, 0)); // Adding the start node to the priority queue

    while (priorityQueue.isNotEmpty) { // While the priority queue is not empty
      final current = priorityQueue.removeFirst().key; // Remove the first node from the priority queue

      if (current == end) { // If the current node is the end node
        final path = <String>[]; // Create a list for the path
        double totalWeight = 0; // Variable to hold the total weight
        String? step = end; // Set the step to the end node
        while (step != null) { // While the step is not null
          path.insert(0, step); // Insert the step to the path list
          if (previous[step] != null) {
            totalWeight += adjList[previous[step]]!
                .firstWhere((edge) => edge.destination == step)
                .weight;
          }
          step = previous[step]; // Set the step to the previous step
        }

        // End time
        final endTime = DateTime.now();
        final duration = endTime.microsecondsSinceEpoch - startTime.microsecondsSinceEpoch;
        final durationInMilliseconds = duration / 1000;

        print('Dijkstra algorithm ended at: $endTime');
        print('Dijkstra algorithm response time: ${durationInMilliseconds.toStringAsFixed(3)} ms');
        print('Total weight of the shortest path: $totalWeight');

        return path; // Return the path
      }

      if (distances[current]! == double.infinity) { // If the distance of the current node is infinite
        break; // Break the loop
      }

      for (var edge in adjList[current]!) { // For each edge in the adjacency list of the current node
        final alt = distances[current]! + edge.weight; // Calculate the distance
        if (alt < distances[edge.destination]!) { // If the distance is less than the distance of the destination node
          distances[edge.destination] = alt; // Set the distance of the destination node to the calculated distance
          previous[edge.destination] = current; // Set the previous node of the destination node to the current node
          priorityQueue.add(MapEntry(edge.destination, alt)); // Add the destination node to the priority queue
        }
      }
    }

    // End time in case no path is found
    final endTime = DateTime.now();
    final duration = endTime.microsecondsSinceEpoch - startTime.microsecondsSinceEpoch;
    final durationInMilliseconds = duration / 1000;

    print('Dijkstra algorithm ended at: $endTime');
    print('Dijkstra algorithm response time: ${durationInMilliseconds.toStringAsFixed(3)} ms (no path found)');

    return []; // Return an empty list if no path is found
  }
}
