import 'package:collection/collection.dart';
import 'graph.dart';

class Graph {
  final Map<String, List<Edge>> adjList = {};

  // constructor for the graph with the adjacency list
  Graph(List<Edge> edges) {
    for (var edge in edges) {
      // adds source and destination nodes sa adjacency list
      adjList.putIfAbsent(edge.source, () => []).add(edge); // adds the source node to the adjacency list
      adjList.putIfAbsent(edge.destination, () => []).add( // adds the destination node to the adjacency list
        Edge(edge.destination, edge.source, edge.weight), // adds the reverse edge
      );
    }
  }

  // actual method for Dijkstra's algorithm
  List<String> dijkstra(String start, String end) {
    final distances = <String, double>{}; // for distance from a single node
    final previous = <String, String?>{}; // for tracking the paths
    final priorityQueue = PriorityQueue<MapEntry<String, double>>( // for the priority queue
          (a, b) => a.value.compareTo(b.value), // compares the values of the nodes
    );

    for (var node in adjList.keys) {
      distances[node] = double.infinity; // sets initial distances to infinite
      previous[node] = null; // sets initial previous node to null
    }
    distances[start] = 0; // sets the distance of the start node to 0

    // start time ni algo
    final startTime = DateTime.now(); // gets the current time
    print('Dijkstra algorithm started at: $startTime');

    priorityQueue.add(MapEntry(start, 0)); // adds the start node to the priority queue

    while (priorityQueue.isNotEmpty) { // while may laman pa si priority queue
      final current = priorityQueue.removeFirst().key; // removes the first node from the priority queue

      if (current == end) { // if 'yung current node is the end node
        final path = <String>[]; // creates a list for the path
        double totalWeight = 0; // variable for total weight
        String? step = end; // sets the step to the end node
        while (step != null) { // while 'yung 'step is not null
          path.insert(0, step); // inserts the step to the path list
          if (previous[step] != null) { // if 'yung previous step is not null
            totalWeight += adjList[previous[step]]! // adds the weight of the edge to the total weight
                .firstWhere((edge) => edge.destination == step) // gets the edge with the destination of the step
                .weight; // gets the weight of the edge
          }
          step = previous[step]; // sets the step to the previous step
        }

        // end time ni algo
        final endTime = DateTime.now();
        final duration = endTime.microsecondsSinceEpoch - startTime.microsecondsSinceEpoch;
        final durationInMilliseconds = duration / 1000; // with decimal places para mas accurate

        print('Dijkstra algorithm ended at: $endTime');
        print('Dijkstra algorithm response time: ${durationInMilliseconds.toStringAsFixed(3)} ms');
        print('Total weight of the shortest path: $totalWeight');

        return path; // returns the path
      }

      if (distances[current]! == double.infinity) { // if 'yung distance of the current node is infinite
        break; // Break the loop
      }

      for (var edge in adjList[current]!) { // for each edge in the adjacency list of the current node
        final alt = distances[current]! + edge.weight; // calculates the distance
        if (alt < distances[edge.destination]!) { // if 'yung distance is less than the distance of the destination node
          distances[edge.destination] = alt; // sets the distance of the destination node to the calculated distance
          previous[edge.destination] = current; // sets  the previous node of the destination node to the current node
          priorityQueue.add(MapEntry(edge.destination, alt)); // adds the destination node to the priority queue
        }
      }
    }

    // end time in case walang path
    final endTime = DateTime.now();
    final duration = endTime.microsecondsSinceEpoch - startTime.microsecondsSinceEpoch;
    final durationInMilliseconds = duration / 1000;

    print('Dijkstra algorithm ended at: $endTime');
    print('Dijkstra algorithm response time: ${durationInMilliseconds.toStringAsFixed(3)} ms (no path found)');

    return []; // returns an empty list if no path is found
  }
}
