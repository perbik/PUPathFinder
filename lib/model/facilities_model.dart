class FacilitiesModel {
  String? facility_name;
  String? facility_desc;
  String? imagePath;
  bool isAvailable;

  FacilitiesModel(
    this.facility_name,
    this.facility_desc,
    this.imagePath, {
    this.isAvailable = true,
  });
}
