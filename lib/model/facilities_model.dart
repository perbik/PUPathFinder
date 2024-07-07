class FacilitiesModel {
  String? facility_name;
  String? facility_desc;
  String? imagePath;
  bool isAvailable;
  List<String>? facility_rooms;

  FacilitiesModel(
      this.facility_name,
      this.facility_desc,
      this.imagePath, {
        this.isAvailable = true,
        this.facility_rooms,
      });
}