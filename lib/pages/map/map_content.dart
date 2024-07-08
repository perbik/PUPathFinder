import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsContent extends StatelessWidget {
  const MapsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(14.59781, 121.01081),
        zoom: 18.0,
      ),
      zoomControlsEnabled: true,
      zoomGesturesEnabled: true,
      onMapCreated: (GoogleMapController controller) {
        // You can use the controller to interact with the map once it's initialized.
      },
      mapType: MapType.normal,
      markers: Set<Marker>.from([
        Marker(
          markerId: MarkerId('marker_id'),
          position: LatLng(14.59781, 121.01081),
          infoWindow: InfoWindow(
            title: 'Your Location',
            snippet: 'This is the starting point',
          ),
        ),
      ]),
      myLocationEnabled: true,
    );
  }
}
