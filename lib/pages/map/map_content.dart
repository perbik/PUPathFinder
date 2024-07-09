import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import '../../model/facilities_list.dart';
import '../../model/facilities_model.dart';

class MapsContent extends StatefulWidget {
  final Function(String) updateOrigin;
  final Function(String) updateDestination;
  final List<LatLng> polylineCoordinates; // receives polyline coordinates

// constructor 'to
  const MapsContent({
    super.key,
    required this.updateOrigin,
    required this.updateDestination,
    required this.polylineCoordinates, // receives polyline coordinates
  });

  @override
  _MapsContentState createState() => _MapsContentState();
}

class _MapsContentState extends State<MapsContent> {
  Location location = Location();
  late GoogleMapController _controller;
  final Set<Marker> _markers = {};
  final LatLngBounds _bounds = LatLngBounds(
    southwest: const LatLng(14.59681, 121.00981),
    northeast: const LatLng(14.59881, 121.01181),
  );

  final String _mapStyle = '''
    [
  {
    "featureType": "poi.attraction",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  }
]
  ''';

  LatLng? _currentPosition;
  String? _originFacility;
  String? _destinationFacility;

  @override
  void initState() {
    super.initState();
    _initializeMarkers();
  }

  void _initializeMarkers() {
    for (var facility in main_facilities_list) {
      _markers.add(
        Marker(
          markerId: MarkerId(facility.facilityName),
          position: facility.coordinates,
          icon: _getMarkerIcon(facility.facilityName),
          onTap: () => _showFacilityCard(facility),
        ),
      );
    }
  }

  BitmapDescriptor _getMarkerIcon(String facilityName) {
    if (facilityName == _originFacility) {
      return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta);
    } else if (facilityName == _destinationFacility) {
      return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed);
    } else {
      return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure);
    }
  }

  void _updateMarkers() {
    setState(() {
      _markers.clear();
      _initializeMarkers();
    });
  }

  void _showFacilityCard(FacilitiesModel facility) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
          backgroundColor: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 25, 30, 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  facility.facilityName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontFamily: 'SanomatGrab',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  facility.facilityDesc,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 15,
                    fontFamily: 'SanomatGrab',
                  ),
                ),
                const SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    facility.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      _originFacility = facility.facilityName;
                      widget.updateOrigin(facility.facilityName);
                    });
                    _updateMarkers();
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFFfb5377),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Set as Origin',
                        style: TextStyle(
                          fontFamily: 'SanomatGrab',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      _destinationFacility = facility.facilityName;
                      widget.updateDestination(facility.facilityName);
                    });
                    _updateMarkers();
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFFfb5377),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.flag,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Set as Destination',
                        style: TextStyle(
                          fontFamily: 'SanomatGrab',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: const CameraPosition(
        target: LatLng(14.59781, 121.01081),
        zoom: 20.0,
      ),
      zoomControlsEnabled: true,
      zoomGesturesEnabled: true,
      markers: _markers,
      compassEnabled: false,
      polylines: {
        Polyline(
          polylineId: const PolylineId('path'),
          points: widget.polylineCoordinates,
          color: const Color(0xFFfb5377), // custom polyline color para slay
          width: 5, // custom polyline width
        ),
      },
      onMapCreated: (GoogleMapController controller) {
        _controller = controller;
        _controller.animateCamera(CameraUpdate.newLatLngBounds(_bounds, 0));
      },
      mapType: MapType.normal,
      myLocationEnabled: true,
      myLocationButtonEnabled: false, // removes the default location button
    );
  }
}
