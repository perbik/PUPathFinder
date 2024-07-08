import 'package:collection/collection.dart';
import 'graph.dart';

class Graph {
  final Map<String, List<Edge>> adjList = {};

// constructor for the graph with the adjacency list
  Graph(List<Edge> edges) {
    for (var edge in edges) {

      // adding source and destination nodes to adjacency list
      adjList.putIfAbsent(edge.source, () => []).add(edge);
      adjList.putIfAbsent(edge.destination, () => []).add(
        Edge(edge.destination, edge.source, edge.weight),
      );
    }
  }

  // actual method for dijkstrawr
  List<String> dijkstra(String start, String end) {
    final distances = <String, double>{}; // for distance from a single node
    final previous = <String, String?>{}; // for tracking the paths
    final priorityQueue = PriorityQueue<MapEntry<String, double>>(
          (a, b) => a.value.compareTo(b.value),
    );

    adjList.keys.forEach((node) {
      distances[node] = double.infinity; // setting initial distances t infinitea
      previous[node] = null; // setting initial previous node to null
    });
    distances[start] = 0; // setting the distance of the start node to 0

    priorityQueue.add(MapEntry(start, 0)); // adding the start node to the priority queue

    while (priorityQueue.isNotEmpty) { // while the priority queue is not empty
      final current = priorityQueue.removeFirst().key; // remove the first node from the priority queue

      if (current == end) { // if the current node is the end node
        final path = <String>[]; // create a list for the path
        String? step = end; // set the step to the end node
        while (step != null) { // while the step is not null 
          path.insert(0, step); // insert the step to the path list
          step = previous[step]; // set the step to the previous step
        }
        return path; // return na path
      }

      if (distances[current]! == double.infinity) { // if 'yung' distance of the current node is infinite
        break; // break the loop
      }

      for (var edge in adjList[current]!) { // for each edge in the adjacency list of the current node
        final alt = distances[current]! + edge.weight; // calculate na the distance
        if (alt < distances[edge.destination]!) { // if 'yung' distance is less than the distance of the destination node
          distances[edge.destination] = alt; // set 'yung' distance of the destination node to the calculated distance
          previous[edge.destination] = current;   // set 'yung' previous node of the destination node to the current node
          priorityQueue.add(MapEntry(edge.destination, alt)); // add the destination node to the priority queue
        }
      }
    }

    return []; // return an empty list if walang path
  }
}