import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'facilities_model.dart';

List<FacilitiesModel> main_facilities_list = [
  FacilitiesModel(
    "Amphitheater",
    "Located near at the lagoon and non-food stalls building",
    "assets/img/Amphitheater.png",
    const LatLng(14.597349043021618, 121.01033935232498),
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Banda Kawayan, Sining Lahi Headquarters",
    "Under construction",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: false,
    facilityRooms: [],
  ), // disable
  FacilitiesModel(
    "Campus Development and Maintenance Building",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ), // same building as building and grounds maintenance office
  FacilitiesModel(
    "Charlie del Rosario Bldg.",
    "Some descriptions here blah blah",
    "assets/img/Charlie-Bldg.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Flagpole",
    "Under construction",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: false,
    facilityRooms: [],
  ), // disable
  FacilitiesModel(
    "Grandstand",
    "Some descriptions here blah blah",
    "assets/img/Grandstand.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Guard House",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Interfaith Chapel",
    "Some descriptions here blah blah",
    "assets/img/Interfaith-Chapel.png",
    const LatLng(14.597179966885722, 121.01133285837156),
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Laboratory High School",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Lagoon",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.597732493280542, 121.01045090579692),
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Main Building - Dome",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Main Building - East Wing",
    "Some descriptions here blah blah",
    "assets/img/Main-East.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Main Building - North Wing",
    "Under construction",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: false,
    facilityRooms: [],
  ), // disable
  FacilitiesModel(
    "Main Building - South Wing",
    "Some descriptions here blah blah",
    "assets/img/Southwing.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [
      'Accounting Office',
      'University Registrar',
      'Fund Mngt. Office',
      'Property Extension',
      'Budget Services',
      'Payroll Section',
      'S201-S520', // verify and change this
    ],
  ),
  FacilitiesModel(
    "Main Building - West Wing",
    "Some descriptions here blah blah",
    "assets/img/Main-West.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: ['W101-W620'], // sample
  ),
  FacilitiesModel(
    "Main Gate",
    "Some descriptions here blah blah",
    "assets/img/Main-Gate.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Nemesio E. Prudente Freedom Park",
    "Under construction",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: false,
    facilityRooms: [],
  ), // disable
  FacilitiesModel(
    "Ninoy Aquino Library",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Non-Food Stalls Building",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "North Parking Area",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Nutrition and Food Science Building",
    "Some descriptions here blah blah",
    "assets/img/Nutrition.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Open Court",
    "Under construction",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: false,
    facilityRooms: [],
  ), // disable
  FacilitiesModel(
    "Oval Openfield",
    "Track and Field Oval",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Physical Education Building",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Printing Press Building",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Property and Supply Building",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "PUP Gymnasium",
    "Some descriptions here blah blah",
    "assets/img/Gymnasium.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "PUP Linear Park",
    "Some descriptions here blah blah",
    "assets/img/Linear Park.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "PUP Obelisk",
    "Mabini Monument is located here",
    "assets/img/Obelisk.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "PUP Sta. Mesa Ferry Station",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Pylon",
    "Some descriptions here blah blah",
    "assets/img/Pylon.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "R.C. Overhead Water Tank",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Souvenir Shop",
    "Some descriptions here blah blah",
    "assets/img/Souvenir-Shop.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ), // gazebo
  FacilitiesModel(
    "Student Canteen",
    "Some descriptions here blah blah",
    "assets/img/Student-Canteen.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Swimming Pool",
    "Some descriptions here blah blah",
    "assets/img/Pool.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Tahanan ng Alumni",
    "Some descriptions here blah blah",
    "assets/img/Unavailable.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Tahanan ng Atleta",
    "Some descriptions here blah blah",
    "assets/img/Atleta.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Tennis Court",
    "Some descriptions here blah blah",
    "assets/img/Tennis-Court.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
  FacilitiesModel(
    "Visitors Information Center",
    "Some descriptions here blah blah",
    "assets/img/Visitors-Infor-Center.png",
    const LatLng(14.598181612866581, 121.01064866732835),                       // not final
    isAvailable: true,
    facilityRooms: [],
  ),
];