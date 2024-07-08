import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pupathfinder/pages/map/map_content.dart';
import '../../model/facilities_model.dart';
import '../../model/facilities_list.dart';
import 'dijkstra.dart';
import 'graph.dart';


class MapPage extends StatefulWidget {
  final String origin;
  final String destination;
  final List<String>? facilityRooms;

  const MapPage({
    Key? key,
    required this.origin,
    required this.destination,
    this.facilityRooms,
  }) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final TextEditingController _originController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();
  List<LatLng> polylineCoordinates = []; // Store the polyline coordinates

  @override
  void initState() {
    super.initState();
    _originController.text = widget.origin;
    _destinationController.text = widget.destination;
  }

  void _updateOrigin(String origin) {
    setState(() {
      _originController.text = origin;
    });
  }

  void _updateDestination(String destination) {
    setState(() {
      _destinationController.text = destination;
    });
  }

  void _findShortestPath() {
    if (_originController.text.isEmpty || _destinationController.text.isEmpty) {
      // error pop up when incomplete input
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select both origin and destination')),
      );
      return;
    }

    // Call dijkstra.dart
    Graph graph = Graph(edges);
    List<String> path = graph.dijkstra(_originController.text, _destinationController.text);

    if (path.isNotEmpty) {
      // generates polylines
      setState(() {
        polylineCoordinates = path.map((node) {
          Node? n = nodes[node];
          return LatLng(n!.lat, n.lon);
        }).toList();
      });
    } else {
      // shows message if no path
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No path found between selected points')),
      );
    }
  }

  void _showRoomsDialog(BuildContext context) {
    List<FacilitiesModel> facilitiesWithRooms = main_facilities_list
        .where((facility) =>
    facility.facilityName == widget.destination &&
        facility.facilityRooms != null &&
        facility.facilityRooms!.isNotEmpty)
        .toList();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Rooms in ${widget.destination}'),
          content: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              constraints: const BoxConstraints(maxHeight: 400),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (facilitiesWithRooms.isNotEmpty)
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: facilitiesWithRooms.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                facilitiesWithRooms[index].facilityName),
                            const SizedBox(height: 4),
                            Column(
                              children:
                              (facilitiesWithRooms[index].facilityRooms ??
                                  [])
                                  .map((room) => Text(room))
                                  .toList(),
                            ),
                            const Divider(),
                          ],
                        );
                      },
                    )
                  else
                    const Text('No rooms available'),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              child: MapsContent(
                updateOrigin: _updateOrigin,
                updateDestination: _updateDestination,
                polylineCoordinates: polylineCoordinates, // Pass polyline coordinates
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 30,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 30,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  _showRoomsDialog(context);
                },
                icon: const Icon(Icons.info_outline),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                width: double.infinity,
                height: 270,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/Direction.png',
                          width: 30,
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                height: 50,
                                child: TextField(
                                  controller: _originController,
                                  decoration: InputDecoration(
                                    labelText: 'Point of Origin',
                                    labelStyle: const TextStyle(
                                      fontFamily: 'SanomatGrab',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0,
                                      color: Colors.grey,
                                    ),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    contentPadding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    suffixIcon:
                                    _originController.text.isNotEmpty
                                        ? SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: IconButton(
                                        iconSize: 20,
                                        icon: Icon(Icons.clear),
                                        onPressed: () {
                                          setState(() {
                                            _originController.clear();
                                          });
                                        },
                                      ),
                                    )
                                        : null,
                                  ),
                                  style: const TextStyle(
                                    fontFamily: 'SanomatGrab',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0,
                                    color: Colors.black,
                                  ),
                                  onChanged: (text) {
                                    setState(() {});
                                  },
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                height: 50,
                                child: TextField(
                                  controller: _destinationController,
                                  decoration: InputDecoration(
                                    labelText: 'Destination',
                                    labelStyle: const TextStyle(
                                      fontFamily: 'SanomatGrab',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0,
                                      color: Colors.grey,
                                    ),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    contentPadding:
                                    const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    suffixIcon:
                                    _destinationController.text.isNotEmpty
                                        ? SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: IconButton(
                                        iconSize: 20,
                                        icon: Icon(Icons.clear),
                                        onPressed: () {
                                          setState(() {
                                            _destinationController
                                                .clear();
                                          });
                                        },
                                      ),
                                    )
                                        : null,
                                  ),
                                  style: const TextStyle(
                                    fontFamily: 'SanomatGrab',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0,
                                    color: Colors.black,
                                  ),
                                  onChanged: (text) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: FilledButton(
                        onPressed: _findShortestPath, // Call the method here
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFFfb5377),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        child: const Text(
                          'Find Shortest Path',
                          style: TextStyle(
                            fontFamily: 'SanomatGrab',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
