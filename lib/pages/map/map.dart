import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final TextEditingController _originController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();

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
          FlutterMap(
            options: MapOptions(
              center: LatLng(14.59781, 121.01081),
              zoom: 18.0,
              maxZoom: 22.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://api.maptiler.com/maps/streets-v2/{z}/{x}/{y}.png?key=fQPbgxcnoUtKy0Dnu9FX',
                userAgentPackageName: 'com.example.app',
              ),
            ],
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
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                width: double.infinity,
                height: 250,
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
                          width: 26,
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
                                    contentPadding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    suffixIcon: _originController.text.isNotEmpty
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
                                    contentPadding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    suffixIcon: _destinationController.text.isNotEmpty
                                        ? SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: IconButton(
                                        iconSize: 20,
                                        icon: Icon(Icons.clear),
                                        onPressed: () {
                                          setState(() {
                                            _destinationController.clear();
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
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 20),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFFfb5377),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 60),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Find Shortest Path',
                        style: TextStyle(
                          fontFamily: 'SanomatGrab',
                          fontSize: 16,
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

