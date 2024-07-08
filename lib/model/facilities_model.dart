import 'package:google_maps_flutter/google_maps_flutter.dart';

class FacilitiesModel {
  String facilityName;
  String facilityDesc;
  String imagePath;
  LatLng coordinates;
  bool isAvailable;
  List<String> ? facilityRooms;

  FacilitiesModel(
      this.facilityName,
      this.facilityDesc,
      this.imagePath,
      this.coordinates, {
        this.isAvailable = true,
        this.facilityRooms,
      });
}
