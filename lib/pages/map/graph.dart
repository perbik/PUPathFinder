// graph.dart

class Edge {
  final String source;
  final String destination;
  final double weight;

  Edge(this.source, this.destination, this.weight);
}

class Node {
  final String name;
  final double lat;
  final double lon;

  Node(this.name, this.lat, this.lon);
}

List<Edge> edges = [
  
  Edge("Amphitheater", "Amphitheater Entrance 1", 1.0),
  Edge("Amphitheater", "Amphitheater Entrance 2", 1.0),

  Edge("Amphitheater Entrance 1", "Amphitheater", 1.0),
  Edge("Amphitheater Entrance 1", "Amphitheater Entrance 2", 17.2),
  Edge("Amphitheater Entrance 1", "Lagoon Sidewalk - E", 38.0),
  Edge("Amphitheater Entrance 1", "Lagoon Sidewalk - S", 21.0),

  Edge("Amphitheater Entrance 2", "Amphitheater", 1.0),
  Edge("Amphitheater Entrance 2", "Amphitheater Entrance 1", 17.2),
  Edge("Amphitheater Entrance 2", "Food Stalls C", 9.5),
  Edge("Amphitheater Entrance 2", "Lagoon", 34.3),

  Edge("Campus Development and Maintenance Building", "East Wing - Corner A", 8.0),
  Edge("Campus Development and Maintenance Building", "East Wing - Corner B", 34.7),
  Edge("Campus Development and Maintenance Building", "PUP Sta Mesa Ferry Station", 34.0),

  Edge("Canteen - Pathwalk L", "Linear Park", 31.3),
  Edge("Canteen - Pathwalk L", "Student Canteen - Front", 4.7),
  Edge("Canteen - Pathwalk L", "West Wing - Corner A", 14.2),

  Edge("Canteen - Pathwalk L", "Student Canteen", 15.6),
  Edge("Canteen - Pathwalk R", "Student Canteen", 15.6),
  Edge("Student Canteen", "Canteen - Pathwalk L",15.6),
  Edge("Student Canteen", "Canteen - Pathwalk R",15.6),

  Edge("Canteen - Pathwalk R", "Linear Park", 31.3),
  Edge("Canteen - Pathwalk R", "Student Canteen - Front", 4.7),
  Edge("Canteen - Pathwalk R", "Charlie Del Rosario Hall - Entrance", 15.0),

  Edge("Charlie Del Rosario Hall", "Charlie Del Rosario Hall - Entrance", 1.0),

  Edge("Charlie Del Rosario Hall - Entrance", "Canteen - Pathwalk R", 15.0),
  Edge("Charlie Del Rosario Hall - Entrance", "Ninoy Aquino Library - Driveway A", 32.6),
  Edge("Charlie Del Rosario Hall - Entrance", "Non-Food Stalls - Lagoon Entrance", 27.6),
  Edge("Charlie Del Rosario Hall - Entrance", "Charlie Del Rosario Hall", 1.0),

  Edge("Covered Walkway A", "Covered Walkway B", 146.5),
  Edge("Covered Walkway A", "Guard House", 33.2),
  Edge("Covered Walkway A", "Pedestrian Lane B", 21.3),
  Edge("Covered Walkway A", "Oval Parking Area", 30.5),

  Edge("Covered Walkway B", "Covered Walkway A", 146.5),
  Edge("Covered Walkway B", "Interfaith Chapel - North Entrance", 23.7),
  Edge("Covered Walkway B", "Track and Field Oval - South Entrance", 20.5),

  Edge("Covered Walkway C", "Covered Walkway D", 54.5),
  Edge("Covered Walkway C", "Pedestrian Lane A", 13.3),
  Edge("Covered Walkway C", "VIC - Front", 20.7),

  Edge("Covered Walkway D", "Covered Walkway C", 54.5),
  Edge("Covered Walkway D", "Engineering Science Research Center (ESRC) Building", 30.3),
  Edge("Covered Walkway D", "Gymnasium - Entrance", 22.7),
  Edge("Covered Walkway D", "Swimming Pool - Pathwalk B", 163.3),

  Edge("Dome", "Dome - Entrance", 1.0),

  Edge("Dome - Entrance", "Dome", 1.0),
  Edge("Dome - Entrance", "East Wing - Stairs A", 11.7),
  Edge("Dome - Entrance", "Main Building - Entrance B", 24.8),
  Edge("Dome - Entrance", "South Wing - Entrance", 10.8),
  Edge("Dome - Entrance", "West Wing - Corner C", 12.5),
  Edge("Dome - Entrance", "West Wing - Stairs A", 23.9),

  Edge("East Wing", "East Wing - Stairs A", 30.0),
  Edge("East Wing", "East Wing - Stairs B", 30.0),

  Edge("East Wing - Corner A", "Campus Development and Maintenance Building", 8.0),
  Edge("East Wing - Corner A", "East Wing - Stairs A", 56.0),
  Edge("East Wing - Corner A", "East Wing - Stairs B", 13.4),

  Edge("East Wing - Corner B", "Campus Development and Maintenance Building", 34.7),
  Edge("East Wing - Corner B", "East Wing - Stairs B", 13.4),
  Edge("East Wing - Corner B", "Interfaith Chapel - South Entrance", 28.5),
  Edge("East Wing - Corner B", "Main Building - Entrance B", 56.0),

  Edge("East Wing - Stairs A", "Dome - Entrance", 11.7),
  Edge("East Wing - Stairs A", "East Wing", 30),
  Edge("East Wing - Stairs A", "East Wing - Corner A", 56.0),
  Edge("East Wing - Stairs A", "Main Building - Entrance B", 30.2),
  Edge("East Wing - Stairs A", "South Wing - Entrance", 4.7),

  Edge("East Wing - Stairs B", "East Wing", 30),
  Edge("East Wing - Stairs B", "East Wing - Corner A", 13.4),
  Edge("East Wing - Stairs B", "East Wing - Corner B", 13.4),

  Edge("Engineering Science Research Center (ESRC) Building", "Covered Walkway D", 30.3),
  Edge("Engineering Science Research Center (ESRC) Building", "Gymnasium - Entrance", 18.3),

  Edge("Food Stalls A", "Lagoon", 37.8),
  Edge("Food Stalls A", "Lagoon - Entrance A", 17.4),
  Edge("Food Stalls A", "Lagoon Sidewalk - N", 41.1),

  Edge("Food Stalls B", "Food Stalls C", 47.5),
  Edge("Food Stalls B", "Lagoon", 16.4),
  Edge("Food Stalls B", "Lagoon - Entrance A", 19.0),

  Edge("Food Stalls C", "Amphitheater Entrance 2", 9.5),
  Edge("Food Stalls C", "Food Stalls B", 47.5),
  Edge("Food Stalls C", "Lagoon - Entrance B", 17.3),

  Edge("Grandstand", "Track and Field Oval - South Entrance", 67.9),
  Edge("Grandstand", "Track and Field Oval - West", 11.5),

  Edge("Guard House", "Covered Walkway A", 33.2),

  Edge("Gymnasium - Entrance", "Covered Walkway D", 22.7),
  Edge("Gymnasium - Entrance", "Engineering Science Research Center (ESRC) Building", 18.3),
  Edge("Gymnasium - Entrance", "Gymnasium and Sports Center", 1.0),

  Edge("Gymnasium and Sports Center", "Gymnasium - Entrance", 1.0),

  Edge("Interfaith Chapel", "Interfaith Chapel - East Entrance", 24.1),
  Edge("Interfaith Chapel", "Interfaith Chapel - North Entrance", 24.1),
  Edge("Interfaith Chapel", "Interfaith Chapel - South Entrance", 24.1),
  Edge("Interfaith Chapel", "Interfaith Chapel - West Entrance", 24.1),

  Edge("Interfaith Chapel - East Entrance", "Interfaith Chapel", 24.1),
  Edge("Interfaith Chapel - East Entrance", "Interfaith Chapel - South Entrance", 60.0),
  Edge("Interfaith Chapel - East Entrance", "Track and Field Oval - South Entrance", 23.3),

  Edge("Interfaith Chapel - North Entrance", "Covered Walkway B", 23.7),
  Edge("Interfaith Chapel - North Entrance", "Interfaith Chapel", 24.1),
  //Edge("Interfaith Chapel - North Entrance", "Interfaith Chapel - West Entrance", 47.1),
  Edge("Interfaith Chapel - North Entrance", "PUP Obelisk - East Driveway", 94.4),

  Edge("Interfaith Chapel - South Entrance", "East Wing - Corner B", 28.5),
  Edge("Interfaith Chapel - South Entrance", "Interfaith Chapel", 24.1),
  Edge("Interfaith Chapel - South Entrance", "Interfaith Chapel - East Entrance", 47.1),
  Edge("Interfaith Chapel - South Entrance", "Interfaith Chapel - West Entrance", 47.1),
  Edge("Interfaith Chapel - South Entrance", "Nutrition and Food Science Building", 1.0),

  Edge("Interfaith Chapel - West Entrance", "Interfaith Chapel", 24.1),
  //Edge("Interfaith Chapel - West Entrance", "Interfaith Chapel - North Entrance", 47.1),
  Edge("Interfaith Chapel - West Entrance", "Interfaith Chapel - South Entrance", 47.1),
  Edge("Interfaith Chapel - West Entrance", "Main Building - Entrance B", 12.8),

  Edge("Laboratory High School", "R.C. Underground Water Tank", 32.1),

  Edge("Laboratory High School - Backside A", "Laboratory High School - Backside B", 23.9),
  Edge("Laboratory High School - Backside A", "R.C. Underground Water Tank", 50.1),
  Edge("Laboratory High School - Backside A", "Property and Supply Building", 27.4),

  Edge("Laboratory High School - Backside B", "Laboratory High School - Backside A", 23.9),
  Edge("Laboratory High School - Backside B", "Linear Park Sidewalk - LHS", 36.7),
  Edge("Laboratory High School - Backside B", "Printing Press Building", 20.2),
  Edge("Laboratory High School - Backside B", "Property and Supply Building", 24.2),

  Edge("Lagoon", "Amphitheater Entrance 2", 34.3),
  Edge("Lagoon", "Food Stalls A", 37.8),
  Edge("Lagoon", "Food Stalls B", 16.4),
  Edge("Lagoon", "Lagoon - Entrance A", 27.2),
  Edge("Lagoon", "Lagoon Sidewalk - E", 14.3),

  Edge("Lagoon - Entrance A", "Food Stalls A", 17.4),
  Edge("Lagoon - Entrance A", "Food Stalls B", 19.0),
  Edge("Lagoon - Entrance A", "Lagoon", 27.2),
  Edge("Lagoon - Entrance A", "PUP Obelisk - South Driveway", 14.8),

  Edge("Lagoon - Entrance B", "Food Stalls C", 17.3),
  Edge("Lagoon - Entrance B", "Lagoon Sidewalk - S", 38.1),
  Edge("Lagoon - Entrance B", "Main Building - Entrance A", 14.3),
  Edge("Lagoon - Entrance B", "Non-Food Stalls - Lagoon Entrance", 52.1),
  Edge("Lagoon - Entrance B", "Student Canteen - Front", 68.7),

  Edge("Lagoon Sidewalk - E", "Amphitheater Entrance 1", 38.0),
  Edge("Lagoon Sidewalk - E", "Lagoon", 14.3),
  Edge("Lagoon Sidewalk - E", "Lagoon Sidewalk - N", 40.6),

  Edge("Lagoon Sidewalk - N", "Food Stalls A", 41.1),
  Edge("Lagoon Sidewalk - N", "Lagoon Sidewalk - E", 40.6),
  Edge("Lagoon Sidewalk - N", "Lagoon Sidewalk - W", 57.0),

  Edge("Lagoon Sidewalk - S", "Amphitheater Entrance 1", 21.0),
  Edge("Lagoon Sidewalk - S", "Lagoon - Entrance B", 38.1),
  Edge("Lagoon Sidewalk - S", "Non-Food Stalls - Lagoon Entrance", 8.1),

  Edge("Lagoon Sidewalk - W", "Lagoon Sidewalk - N", 57.0),
  Edge("Lagoon Sidewalk - W", "Non-Food Stalls Building - Rear Entrance", 26.2),

  Edge("Linear Park", "Canteen - Pathwalk L", 31.3),
  Edge("Linear Park", "Canteen - Pathwalk R", 31.1),
  Edge("Linear Park", "Linear Park Sidewalk - SC", 25.3),
  Edge("Linear Park", "Student Canteen", 10.3),

  Edge("Linear Park Sidewalk - LHS", "Laboratory High School - Backside B", 36.7),
  Edge("Linear Park Sidewalk - LHS", "Linear Park Sidewalk - SC", 56.2),
  Edge("Linear Park Sidewalk - LHS", "Printing Press Building", 32.4),

  Edge("Linear Park Sidewalk - SC", "Linear Park", 25.3),
  Edge("Linear Park Sidewalk - SC", "Linear Park Sidewalk - LHS", 56.2),
  Edge("Linear Park Sidewalk - SC", "Linear Park Sidewalk - SW", 64.2),

  Edge("Linear Park Sidewalk - SW", "Linear Park Sidewalk - SC", 64.2),
  Edge("Linear Park Sidewalk - SW", "PUP Sta Mesa Ferry Station", 89.5),
  Edge("Linear Park Sidewalk - SW", "West Wing - Corner B", 20.2),

  Edge("Mabini Monument PUP Obelisk", "PUP Obelisk - East Driveway", 16.2),
  Edge("Mabini Monument PUP Obelisk", "PUP Obelisk - North Driveway", 16.2),
  Edge("Mabini Monument PUP Obelisk", "PUP Obelisk - South Driveway", 16.2),
  Edge("Mabini Monument PUP Obelisk", "PUP Obelisk - West Driveway", 16.2),

  Edge("Main Building - Entrance A", "Lagoon - Entrance B", 14.3),
  Edge("Main Building - Entrance A", "Student Canteen - Front", 76.1),
  Edge("Main Building - Entrance A", "West Wing - Stairs A", 5.5),

  Edge("Main Building - Entrance B", "Dome - Entrance", 24.8),
  Edge("Main Building - Entrance B", "East Wing - Corner B", 56.0),
  Edge("Main Building - Entrance B", "East Wing - Stairs A", 30.2),
  Edge("Main Building - Entrance B", "Interfaith Chapel - West Entrance", 12.8),

  Edge("Ninoy Aquino Library - Driveway A", "Ninoy Aquino Library - Entrance", 36.7),
  Edge("Ninoy Aquino Library - Driveway A", "Ninoy Aquino Library - Parking Area A", 28.5),
  Edge("Ninoy Aquino Library - Driveway A", "Non-Food Stalls Building - Front Entrance", 24.0),
  Edge("Ninoy Aquino Library - Driveway A", "Charlie Del Rosario Hall - Entrance", 32.6),

  Edge("Ninoy Aquino Library - Entrance", "Ninoy Aquino Library - Driveway A", 36.7),
  Edge("Ninoy Aquino Library - Entrance", "Ninoy Aquino Library and Learning Resources Center", 1.0),
  Edge("Ninoy Aquino Library - Entrance", "R.C. Overhead Water Tank", 36.3),

  Edge("Ninoy Aquino Library - Parking Area A", "Ninoy Aquino Library - Driveway A", 28.5),
  Edge("Ninoy Aquino Library - Parking Area A", "R.C. Overhead Water Tank", 26.2),

  Edge("R.C. Underground Water Tank", "R.C. Overhead Water Tank", 21.4),
  Edge("R.C. Overhead Water Tank", "R.C. Underground Water Tank", 21.4),

  Edge("Ninoy Aquino Library and Learning Resources Center", "Ninoy Aquino Library - Entrance", 1.0),

  Edge("Non-Food Stalls - Lagoon Entrance", "Lagoon - Entrance B", 52.1),
  Edge("Non-Food Stalls - Lagoon Entrance", "Lagoon Sidewalk - S", 8.1),
  Edge("Non-Food Stalls - Lagoon Entrance", "Non-Food Stalls Building", 17.0),
  Edge("Non-Food Stalls - Lagoon Entrance", "Non-Food Stalls Building - Front Entrance", 15.4),
  Edge("Non-Food Stalls - Lagoon Entrance", "Non-Food Stalls Building - Rear Entrance", 29.4),
  Edge("Non-Food Stalls - Lagoon Entrance", "Charlie Del Rosario Hall - Entrance", 27.6),

  Edge("Non-Food Stalls Building", "Non-Food Stalls - Lagoon Entrance", 17.0),
  Edge("Non-Food Stalls Building", "Non-Food Stalls Building - Front Entrance", 7.3),
  Edge("Non-Food Stalls Building", "Non-Food Stalls Building - Rear Entrance", 7.3),

  Edge("Non-Food Stalls Building - Front Entrance", "Ninoy Aquino Library - Driveway A", 24.0),
  Edge("Non-Food Stalls Building - Front Entrance", "Non-Food Stalls - Lagoon Entrance", 15.4),
  Edge("Non-Food Stalls Building - Front Entrance", "Non-Food Stalls Building", 7.3),

  Edge("Non-Food Stalls Building - Rear Entrance", "Lagoon Sidewalk - W", 26.2),
  Edge("Non-Food Stalls Building - Rear Entrance", "Non-Food Stalls - Lagoon Entrance", 29.4),
  Edge("Non-Food Stalls Building - Rear Entrance", "Non-Food Stalls Building", 7.3),

  Edge("North Parking Area", "Physical Education Building", 10.5),
  Edge("North Parking Area", "PUP Obelisk - North Driveway", 55.8),
  Edge("North Parking Area", "PUP Obelisk - West Driveway", 49.8),
  Edge("North Parking Area", "Swimming Pool", 38.4),
  Edge("North Parking Area", "Swimming Pool - Pathwalk A", 17.5),
  Edge("North Parking Area", "Tahanan ng Alumni", 11.8),

  Edge("Nutrition and Food Science Building", "Interfaith Chapel - South Entrance", 1.0),

  Edge("Pedestrian Lane A", "Covered Walkway C", 13.3),
  Edge("Pedestrian Lane A", "Pedestrian Lane B", 13.7),
  Edge("Pedestrian Lane A", "Tennis Court - Entrance", 45.6),

  Edge("Pedestrian Lane B", "Covered Walkway A", 21.3),
  Edge("Pedestrian Lane B", "Souvenir Shop - Front", 19.8),
  Edge("Pedestrian Lane B", "Pedestrian Lane A", 13.7),

  Edge("Physical Education Building", "North Parking Area", 10.5),

  Edge("Printing Press Building", "Laboratory High School - Backside B", 20.2),
  Edge("Printing Press Building", "Linear Park Sidewalk - LHS", 32.4),
  Edge("Printing Press Building", "Property and Supply Building", 17.7),

  Edge("Property and Supply Building", "Laboratory High School - Backside A", 27.4),
  Edge("Property and Supply Building", "Laboratory High School - Backside B", 24.2),
  Edge("Property and Supply Building", "Printing Press Building", 17.7),

  Edge("PUP Obelisk - East Driveway", "Souvenir Shop - Front", 60.8),
  Edge("PUP Obelisk - East Driveway", "Interfaith Chapel - North Entrance", 94.4),
  Edge("PUP Obelisk - East Driveway", "Mabini Monument PUP Obelisk", 15.5),
  Edge("PUP Obelisk - East Driveway", "PUP Obelisk - North Driveway", 23.4),
  Edge("PUP Obelisk - East Driveway", "PUP Obelisk - South Driveway", 23.4),

  Edge("PUP Obelisk - North Driveway", "Mabini Monument PUP Obelisk", 16.2),
  Edge("PUP Obelisk - North Driveway", "North Parking Area", 55.8),
  Edge("PUP Obelisk - North Driveway", "PUP Obelisk - East Driveway", 23.4),
  Edge("PUP Obelisk - North Driveway", "PUP Obelisk - West Driveway", 21.8),
  Edge("PUP Obelisk - North Driveway", "Tennis Court - Entrance", 38.9),

  Edge("PUP Obelisk - South Driveway", "Lagoon - Entrance A", 14.8),
  Edge("PUP Obelisk - South Driveway", "Mabini Monument PUP Obelisk", 16.2),
  Edge("PUP Obelisk - South Driveway", "PUP Obelisk - East Driveway", 23.4),
  Edge("PUP Obelisk - South Driveway", "PUP Obelisk - West Driveway", 23.4),

  Edge("PUP Obelisk - West Driveway", "Mabini Monument PUP Obelisk", 16.2),
  Edge("PUP Obelisk - West Driveway", "North Parking Area", 49.8),
  Edge("PUP Obelisk - West Driveway", "PUP Obelisk - North Driveway", 23.4),
  Edge("PUP Obelisk - West Driveway", "PUP Obelisk - South Driveway", 23.4),

  Edge("PUP Sta Mesa Ferry Station", "Campus Development and Maintenance Building", 34.0),
  Edge("PUP Sta Mesa Ferry Station", "Linear Park Sidewalk - SW", 89.5),

  Edge("Tahanan ng Atleta", "Track and Field Oval - East", 19.9),

  Edge("Pylon", "VIC - Front", 26.7),

  Edge("R.C. Overhead Water Tank", "Laboratory High School - Backside A", 21.4),
  Edge("R.C. Overhead Water Tank", "Ninoy Aquino Library - Entrance", 36.3),
  Edge("R.C. Overhead Water Tank", "Ninoy Aquino Library - Parking Area A", 26.2),

  Edge("South Wing", "South Wing - Entrance", 22.2),

  Edge("South Wing - Entrance", "Dome - Entrance", 10.8),
  Edge("South Wing - Entrance", "East Wing - Stairs A", 4.7),
  Edge("South Wing - Entrance", "South Wing", 22.2),
  Edge("South Wing - Entrance", "West Wing - Corner C", 4.7),
  Edge("South Wing - Entrance", "West Wing - Stairs A", 32.6),

  Edge("Souvenir Shop", "Souvenir Shop - Front", 1.0),

  Edge("Souvenir Shop - Front", "Souvenir Shop", 1.0),
  Edge("Souvenir Shop - Front", "Pedestrian Lane B", 19.8),
  Edge("Souvenir Shop - Front", "PUP Obelisk - East Driveway", 60.8),

  Edge("Student Canteen", "Linear Park", 10.3),
  //Edge("Student Canteen", "Student Canteen - Front", 1.0),

  Edge("Student Canteen - Front", "Canteen - Pathwalk L", 4.7),
  Edge("Student Canteen - Front", "Canteen - Pathwalk R", 4.7),
  Edge("Student Canteen - Front", "Lagoon - Entrance B", 68.7),
  Edge("Student Canteen - Front", "Main Building - Entrance A", 76.1),
  //Edge("Student Canteen - Front", "Student Canteen", 1.0),
  Edge("Student Canteen - Front", "West Wing - Corner A", 15.1),

  Edge("Swimming Pool", "North Parking Area", 38.4),

  Edge("Swimming Pool - Pathwalk A", "North Parking Area", 17.5),
  Edge("Swimming Pool - Pathwalk A", "Swimming Pool - Pathwalk B", 47.9),

  Edge("Swimming Pool - Pathwalk B", "Covered Walkway D", 163.3),
  Edge("Swimming Pool - Pathwalk B", "Swimming Pool - Pathwalk A", 47.9),

  Edge("Tahanan ng Alumni", "North Parking Area", 11.8),

  Edge("Tennis Court", "Tennis Court - Entrance", 14.0),

  Edge("Tennis Court - Entrance", "Pedestrian Lane A", 45.6),
  Edge("Tennis Court - Entrance", "PUP Obelisk - North Driveway", 38.9),
  Edge("Tennis Court - Entrance", "Tennis Court", 14.0),

  Edge("Track and Field Oval", "Track and Field Oval - East", 43.7),
  Edge("Track and Field Oval", "Track and Field Oval - North", 79.8),
  Edge("Track and Field Oval", "Track and Field Oval - South", 80.2),
  Edge("Track and Field Oval", "Track and Field Oval - West", 42.6),
  Edge("Track and Field Oval", "Track and Field Oval - Southwest", 71.1),

  Edge("Track and Field Oval - East", "Track and Field Oval", 43.7),
  Edge("Track and Field Oval - East", "Tahanan ng Atleta", 19.9),
  Edge("Track and Field Oval - East", "Track and Field Oval - Northeast", 58.8),
  Edge("Track and Field Oval - East", "Track and Field Oval - South", 112.1),

  Edge("Track and Field Oval - North", "Track and Field Oval", 79.8),
  Edge("Track and Field Oval - North", "Track and Field Oval - Northeast", 41.3),
  Edge("Track and Field Oval - North", "Track and Field Oval - Northwest", 41.3),
  Edge("Track and Field Oval - North", "Track and Field Oval - North Entrance", 12.0),
  Edge("Track and Field Oval - North", "Track and Field Oval - West", 104.8),

  Edge("Track and Field Oval - Northeast", "Track and Field Oval - North", 41.3),
  Edge("Track and Field Oval - Northeast", "Track and Field Oval - East", 58.8),

  Edge("Track and Field Oval - Northwest", "Track and Field Oval - North", 41.3),
  Edge("Track and Field Oval - Northwest", "Track and Field Oval - West", 58.8),

  Edge("Oval Parking Area", "Covered Walkway A", 30.5),
  Edge("Track and Field Oval - North Entrance", "Track and Field Oval - North", 12.0),

  Edge("Track and Field Oval - South", "Track and Field Oval", 80.2),
  Edge("Track and Field Oval - South", "Track and Field Oval - East", 112.1),
  Edge("Track and Field Oval - South", "Track and Field Oval - Southwest", 43.3),

  Edge("Track and Field Oval - Southwest", "Track and Field Oval", 71.1),
  Edge("Track and Field Oval - Southwest", "Track and Field Oval - South", 43.3),
  Edge("Track and Field Oval - Southwest", "Track and Field Oval - South Entrance", 10.6),
  Edge("Track and Field Oval - Southwest", "Track and Field Oval - West", 60.9),

  Edge("Track and Field Oval - South Entrance", "Covered Walkway B", 20.5),
  Edge("Track and Field Oval - South Entrance", "Grandstand", 67.9),
  Edge("Track and Field Oval - South Entrance", "Interfaith Chapel - East Entrance", 23.3),
  Edge("Track and Field Oval - South Entrance", "Track and Field Oval - Southwest", 10.6),

  Edge("Track and Field Oval - West", "Grandstand", 11.5),
  Edge("Track and Field Oval - West", "Track and Field Oval", 42.6),
  Edge("Track and Field Oval - West", "Track and Field Oval - Northwest", 58.8),
  Edge("Track and Field Oval - West", "Track and Field Oval - Southwest", 60.9),

  Edge("VIC - Front", "Covered Walkway C", 20.7),
  Edge("VIC - Front", "Pylon", 26.7),
  Edge("VIC - Front", "Visitors Information Center", 5.7),
  Edge("Visitors Information Center", "VIC - Front", 5.7),

  Edge("West Wing", "West Wing - Stairs A", 30),
  Edge("West Wing", "West Wing - Stairs B", 30),

  Edge("West Wing - Corner A", "Canteen - Pathwalk L", 14.2),
  Edge("West Wing - Corner A", "Student Canteen - Front", 15.1),
  Edge("West Wing - Corner A", "West Wing - Stairs A", 59.8),
  Edge("West Wing - Corner A", "West Wing - Stairs B", 15.7),

  Edge("West Wing - Corner B", "Linear Park Sidewalk - SW", 20.2),
  Edge("West Wing - Corner B", "West Wing - Corner C", 59.8),
  Edge("West Wing - Corner B", "West Wing - Stairs B", 15.7),

  Edge("West Wing - Corner C", "Dome - Entrance", 12.5),
  Edge("West Wing - Corner C", "South Wing - Entrance", 4.7),
  Edge("West Wing - Corner C", "West Wing - Corner B", 59.8),
  Edge("West Wing - Corner C", "West Wing - Stairs A", 29.4),

  Edge("West Wing - Stairs A", "Dome - Entrance", 23.9),
  Edge("West Wing - Stairs A", "Main Building - Entrance A", 5.5),
  Edge("West Wing - Stairs A", "South Wing - Entrance", 32.6),
  Edge("West Wing - Stairs A", "West Wing", 30),
  Edge("West Wing - Stairs A", "West Wing - Corner A", 59.8),
  Edge("West Wing - Stairs A", "West Wing - Corner C", 29.4),

  Edge("West Wing - Stairs B", "West Wing", 30),
  Edge("West Wing - Stairs B", "West Wing - Corner A", 15.7),
  Edge("West Wing - Stairs B", "West Wing - Corner B", 15.7),

  Edge("Tarp Walkway", "Guard House", 5.3),
  Edge("Guard House", "Tarp Walkway", 5.3),

  Edge("Tarp Walkway", "Oval Parking Area", 8.5),

  Edge("Oval Parking Area", "Track and Field Oval - North Entrance", 15.6),
  Edge("Track and Field Oval - North Entrance", "Oval Parking Area", 15.6),

];

Map<String, Node> nodes = {
  "Amphitheater": Node("Amphitheater", 14.597315774401595, 121.01042679308465),
  "Amphitheater Entrance 1": Node("Amphitheater Entrance 1", 14.597411959689742, 121.01036387507604),
  "Amphitheater Entrance 2": Node("Amphitheater Entrance 2", 14.597401156098861, 121.01052017046753),
  "Campus Development and Maintenance Building": Node("Campus Development and Maintenance Building", 14.596330048069238, 121.01118273009989),
  "Canteen - Pathwalk L": Node("Canteen - Pathwalk L", 14.596914993951678, 121.00995399834156),
  "Canteen - Pathwalk R": Node("Canteen - Pathwalk R", 14.597055440902018, 121.00991572191914),
  "Charlie Del Rosario Hall": Node("Charlie Del Rosario Hall", 14.597109560457717, 121.00961913582897),
  "Charlie Del Rosario Hall - Entrance": Node("Charlie Del Rosario Hall - Entrance", 14.597168107072093, 121.00987904034767),
  "Covered Walkway A": Node("Covered Walkway A", 14.598849482766457, 121.0115540437406),
  "Covered Walkway B": Node("Covered Walkway B", 14.597545165550779, 121.01154150161861),
  "Covered Walkway C": Node("Covered Walkway C", 14.598867254336065, 121.01152139007337),
  "Covered Walkway D": Node("Covered Walkway D", 14.599214924794751, 121.01119605767396),
  "Dome": Node("Dome", 14.597002075341843, 121.0107718566613),
  "Dome - Entrance": Node("Dome - Entrance", 14.596941310719085, 121.01078069510886),
  "East Wing": Node("East Wing", 14.596726938008107, 121.01105080639991),
  "East Wing - Corner A": Node("East Wing - Corner A", 14.59643905490216, 121.01114547553601),
  "East Wing - Corner B": Node("East Wing - Corner B", 14.596618154004817, 121.01135334672311),
  "East Wing - Stairs A": Node("East Wing - Stairs A", 14.59678816823548, 121.01079008286125),
  "East Wing - Stairs B": Node("East Wing - Stairs B", 14.596532497930426, 121.01125678720393),
  "Engineering Science Research Center (ESRC) Building": Node("Engineering Science Research Center (ESRC) Building", 14.599530073486369, 121.01116898805368),
  "Food Stalls A": Node("Food Stalls A", 14.598068999886816, 121.0104655430922),
  "Food Stalls B": Node("Food Stalls B", 14.597682252014906, 121.01070291857448),
  "Food Stalls C": Node("Food Stalls C", 14.597314970691853, 121.01063049893509),
  "Grandstand": Node("Grandstand", 14.598053558950635, 121.01150327191559),
  "Guard House": Node("Guard House", 14.599050551259824, 121.01180349737167),
  "Gymnasium - Entrance": Node("Gymnasium - Entrance", 14.599397831387405, 121.0110274525707),
  "Gymnasium and Sports Center": Node("Gymnasium and Sports Center", 14.599212399115132, 121.01081100593235),
  "Interfaith Chapel": Node("Interfaith Chapel", 14.597176212062733, 121.0114370175715),
  "Interfaith Chapel - East Entrance": Node("Interfaith Chapel - East Entrance", 14.597231894591777, 121.01175930083491),
  "Interfaith Chapel - North Entrance": Node("Interfaith Chapel - North Entrance", 14.597488094086748, 121.011347829294),
  "Interfaith Chapel - South Entrance": Node("Interfaith Chapel - South Entrance", 14.596863028529851, 121.01156313417007),
  "Interfaith Chapel - West Entrance": Node("Interfaith Chapel - West Entrance", 14.59709144775408, 121.01111498105767),
  "Laboratory High School": Node("Laboratory High School", 14.597435545725938, 121.00909547607279),
  "Laboratory High School - Backside A": Node("Laboratory High School - Backside A", 14.597572243385358, 121.0087807384291),
  "Laboratory High School - Backside B": Node("Laboratory High School - Backside B", 14.597416505718874, 121.00880890162219),
  "Lagoon": Node("Lagoon", 14.59773344800478, 121.0105642196839),
  "Lagoon - Entrance A": Node("Lagoon - Entrance A", 14.597991131243392, 121.01060233573848),
  "Lagoon - Entrance B": Node("Lagoon - Entrance B", 14.597187784783666, 121.01052052837395),
  "Lagoon Sidewalk - E": Node("Lagoon Sidewalk - E", 14.597762809833762, 121.01040159353278),
  "Lagoon Sidewalk - N": Node("Lagoon Sidewalk - N", 14.598040541496259, 121.01033319719635),
  "Lagoon Sidewalk - S": Node("Lagoon Sidewalk - S", 14.597400719904003, 121.01034526713697),
  "Lagoon Sidewalk - W": Node("Lagoon Sidewalk - W", 14.597704408273339, 121.01025943645325),
  "Linear Park": Node("Linear Park", 14.596885051943044, 121.0094992503434),
  "Linear Park Sidewalk - LHS": Node("Linear Park Sidewalk - LHS", 14.597180303380963, 121.00885315806849),
  "Linear Park Sidewalk - SC": Node("Linear Park Sidewalk - SC", 14.596854551381213, 121.00939228207915),
  "Linear Park Sidewalk - SW": Node("Linear Park Sidewalk - SW", 14.596559946568558, 121.01003467113574),
  "Mabini Monument PUP Obelisk": Node("Mabini Monument PUP Obelisk", 14.598197971986368, 121.01075044155681),
  "Main Building - Entrance A": Node("Main Building - Entrance A", 14.597119310757739, 121.01062991908002),
  "Main Building - Entrance B": Node("Main Building - Entrance B", 14.597038846144832, 121.01096385408384),
  "Ninoy Aquino Library - Driveway A": Node("Ninoy Aquino Library - Driveway A", 14.597498218697536, 121.00979640103365),
  "Ninoy Aquino Library - Entrance": Node("Ninoy Aquino Library - Entrance", 14.59775270495819, 121.00968841244614),
  "Ninoy Aquino Library - Parking Area A": Node("Ninoy Aquino Library - Parking Area A", 14.597566548055626, 121.00962013844136),
  "R.C. Underground Water Tank": Node("R.C. Underground Water Tank", 14.597718392179178, 121.00912258868054),
  "Ninoy Aquino Library and Learning Resources Center": Node("Ninoy Aquino Library and Learning Resources Center", 14.597887499712517, 121.00975740230176),
  "Non-Food Stalls - Lagoon Entrance": Node("Non-Food Stalls - Lagoon Entrance", 14.597267207703277, 121.01016343691995),
  "Non-Food Stalls Building": Node("Non-Food Stalls Building", 14.597401122747984, 121.01007603247875),
  "Non-Food Stalls Building - Front Entrance": Node("Non-Food Stalls Building - Front Entrance", 14.597337289714396, 121.00999848107469),
  "Non-Food Stalls Building - Rear Entrance": Node("Non-Food Stalls Building - Rear Entrance", 14.597512494644539, 121.0101741657554),
  "North Parking Area": Node("North Parking Area", 14.598430772341226, 121.01025241703353),
  "Nutrition and Food Science Building": Node("Nutrition and Food Science Building", 14.596837658278444, 121.01165970026874),
  "Pedestrian Lane A": Node("Pedestrian Lane A", 14.598816356561512, 121.01141474559887),
  "Pedestrian Lane B": Node("Pedestrian Lane B", 14.598761848699054, 121.01147509529837),
  "Physical Education Building": Node("Physical Education Building", 14.598354211639286, 121.01013347295763),
  "Printing Press Building": Node("Printing Press Building", 14.597304092612367, 121.00872615883056),
  "Property and Supply Building": Node("Property and Supply Building", 14.59748248427277, 121.00864482143245),
  "PUP Obelisk - East Driveway": Node("PUP Obelisk - East Driveway", 14.598228530226846, 121.0108970792935),
  "PUP Obelisk - North Driveway": Node("PUP Obelisk - North Driveway", 14.598344035247047, 121.0107388289704),
  "PUP Obelisk - South Driveway": Node("PUP Obelisk - South Driveway", 14.598046836813902, 121.0107589455369),
  "PUP Obelisk - West Driveway": Node("PUP Obelisk - West Driveway", 14.59822204117896, 121.0106006952138),
  "PUP Sta Mesa Ferry Station": Node("PUP Sta Mesa Ferry Station", 14.596151031940266, 121.01083796544616),
  "Tahanan ng Atleta": Node("Tahanan ng Atleta", 14.5982492517254, 121.01258625022864),
  "Pylon": Node("Pylon", 14.599168446580144, 121.01179401369039),
  "R.C. Overhead Water Tank": Node("R.C. Overhead Water Tank", 14.597694229595374, 121.00933741907846),
  "South Wing": Node("South Wing", 14.596527073881502, 121.01065920390326),
  "South Wing - Entrance": Node("South Wing - Entrance", 14.596791897621172, 121.01073213073309),
  "Souvenir Shop": Node("Souvenir Shop", 14.598460826736897, 121.01123436569785),
  "Souvenir Shop - Front": Node("Souvenir Shop - Front", 14.59852362783944, 121.01118731753344),
  "Student Canteen": Node("Student Canteen", 14.5969542080325, 121.00980350685204),
  "Student Canteen - Front": Node("Student Canteen - Front", 14.596983971710637, 121.00994497525575),
  "Swimming Pool": Node("Swimming Pool", 14.59882074982841, 121.01030768996343),
  "Swimming Pool - Pathwalk A": Node("Swimming Pool - Pathwalk A", 14.598524543800526, 121.01038436124365),
  "Swimming Pool - Pathwalk B": Node("Swimming Pool - Pathwalk B", 14.59883229637099, 121.01069223150915),
  "Tahanan ng Alumni": Node("Tahanan ng Alumni", 14.598511651410037, 121.01011642902255),
  "Tennis Court": Node("Tennis Court", 14.598635292281834, 121.01085427985609),
  "Tennis Court - Entrance": Node("Tennis Court - Entrance", 14.59847694037271, 121.01102618735169),
  "Track and Field Oval": Node("Track and Field Oval", 14.59812960213433, 121.01204848293952),
  "Track and Field Oval - East": Node("Track and Field Oval - East", 14.598191698155967, 121.01240278093826),
  "Track and Field Oval - North": Node("Track and Field Oval - North", 14.598824903407934, 121.01193242213498),
  "Track and Field Oval - Northeast": Node("Track and Field Oval - Northeast", 14.598649155692462, 121.01232681546747),
  "Track and Field Oval - Northwest": Node("Track and Field Oval - Northwest", 14.59859724340333, 121.0116307822628),
  "Track and Field Oval - North Entrance": Node("Track and Field Oval - North Entrance", 14.598958206826328, 121.0119496777557),
  "Track and Field Oval - South": Node("Track and Field Oval - South", 14.597384129383713, 121.01211259990289),
  "Track and Field Oval - Southwest": Node("Track and Field Oval - Southwest", 14.59749058179936, 121.01181103921851),
  "Track and Field Oval - South Entrance": Node("Track and Field Oval - South Entrance", 14.597384129383713, 121.01170482916618),
  "Track and Field Oval - West": Node("Track and Field Oval - West", 14.598079739926959, 121.01165362074808),
  "VIC - Front": Node("VIC - Front", 14.599015742691037, 121.01164169764422),
  "Visitors Information Center": Node("Visitors Information Center", 14.599089989173187, 121.01156921461765),
  "West Wing": Node("West Wing", 14.596885271797717, 121.01042853393947),
  "West Wing - Corner A": Node("West Wing - Corner A", 14.59692693755792, 121.0100932727169),
  "West Wing - Corner B": Node("West Wing - Corner B", 14.596670737409488, 121.0101538770524),
  "West Wing - Corner C": Node("West Wing - Corner C", 14.596808097767127, 121.01067539330772),
  "West Wing - Stairs A": Node("West Wing - Stairs A", 14.597068927873133, 121.01062116837599),
  "West Wing - Stairs B": Node("West Wing - Stairs B", 14.596805011018468, 121.01012676458652),
  "Tarp Walkway": Node("Tarp Walkway", 14.599029753820439, 121.01175617277391),
  "Oval Parking Area": Node("Oval Parking Area", 14.59900444662481, 121.01179171204161),
};