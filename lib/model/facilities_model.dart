class FacilitiesModel {
  String? facility_name;
  String? facility_desc;
  bool isAvailable;

  FacilitiesModel(
    this.facility_name,
    this.facility_desc, {
    this.isAvailable = true,
  });
}
