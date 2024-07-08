// graph_data.dart

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
  // Define your edges here
  Edge("Ampitheater", "Amphitheater Entrance 1", 1.0),
  Edge("Ampitheater", "Amphitheater Entrance 2", 1.0),

  Edge("Ampitheater Entrance 1", "Amphitheater", 1.0),
  Edge("Ampitheater Entrance 1", "Amphitheater Entrance 2", 17.2),
  Edge("Ampitheater Entrance 1", "Lagoon Sidewalk - E", 38.0),
  Edge("Ampitheater Entrance 1", "Lagoon Sidewalk - S", 21.0),

  Edge("Ampitheater Entrance 2", "Amphitheater", 1.0),
  Edge("Ampitheater Entrance 2", "Amphitheater Entrance 1", 17.2),
  Edge("Ampitheater Entrance 2", "Food Stalls C", 9.5),
  Edge("Ampitheater Entrance 2", "Lagoon", 34.3),

  Edge("Campus Development and Maintenance Building", "East Wing - Corner A", 8.0),
  Edge("Campus Development and Maintenance Building", "East Wing - Corner B", 34.7),
  Edge("Campus Development and Maintenance Building", "PUP Sta Mesa Ferry Station", 34.0),

  Edge("Canteen - Pathwalk L", "Linear Park - Dining and Meeting Area", 31.3),
  Edge("Canteen - Pathwalk L", "Student Canteen - Front", 4.7),
  Edge("Canteen - Pathwalk L", "West Wing - Corner A", 14.2),

  Edge("Canteen - Pathwalk R", "Linear Park - Dining and Meeting Area", 31.3),
  Edge("Canteen - Pathwalk R", "Student Canteen - Front", 4.7),
  Edge("Canteen - Pathwalk R", "Charlie Del Rosario Hall - Entrance", 15.0),

  Edge("Covered Walkway A", "Covered Walkway B", 146.5),
  Edge("Covered Walkway A", "Guard House", 33.2),
  Edge("Covered Walkway A", "Pedestrian Lane B", 21.3),
  Edge("Covered Walkway A", "Track and Field Oval - North Entrance", 40.9),

  Edge("Covered Walkway B", "Covered Walkway A", 146.5),
  Edge("Covered Walkway B", "Interfaith Chapel - North Entrance", 23.7),
  Edge("Covered Walkway B", "Track and Field Oval - South", 20.5),

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

  Edge("East Wing", "East Wing - Stairs A", 1.0),
  Edge("East Wing", "East Wing - Stairs B", 1.0),

  Edge("East Wing - Corner A", "Campus Development and Maintenance Building", 8.0),
  Edge("East Wing - Corner A", "East Wing - Stairs A", 56.0),
  Edge("East Wing - Corner A", "East Wing - Stairs B", 13.4),

  Edge("East Wing - Corner B", "Campus Development and Maintenance Building", 34.7),
  Edge("East Wing - Corner B", "East Wing - Stairs B", 13.4),
  Edge("East Wing - Corner B", "Interfaith Chapel - South Entrance", 28.5),
  Edge("East Wing - Corner B", "Main Building - Entrance B", 56.0),

  Edge("East Wing - Stairs A", "Dome - Entrance", 11.7),
  Edge("East Wing - Stairs A", "East Wing", 1.0),
  Edge("East Wing - Stairs A", "East Wing - Corner A", 56.0),
  Edge("East Wing - Stairs A", "Main Building - Entrance B", 30.2),
  Edge("East Wing - Stairs A", "South Wing - Entrance", 4.7),

  Edge("East Wing - Stairs B", "East Wing", 1.0),
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

  Edge("Souvenir Shop", "Souvenir Shop - Front", 1.0),

  Edge("Souvenir Shop - Front", "Souvenir Shop", 1.0),
  Edge("Souvenir Shop - Front", "Pedestrian Lane B", 19.8),
  Edge("Souvenir Shop - Front", "PUP Obelisk - East Driveway", 60.8),

  Edge("Grandstand", "Track and Field Oval - South  Entrance", 67.9),
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
  Edge("Interfaith Chapel - East Entrance", "Track and Field Oval - South  Entrance", 23.3),

  Edge("Interfaith Chapel - North Entrance", "Covered Walkway B", 23.7),
  Edge("Interfaith Chapel - North Entrance", "Interfaith Chapel", 24.1),
  Edge("Interfaith Chapel - North Entrance", "Interfaith Chapel - West Entrance", 60.0),
  Edge("Interfaith Chapel - North Entrance", "PUP Obelisk - East Driveway", 94.4),

  Edge("Interfaith Chapel - South Entrance", "East Wing - Corner B", 28.5),
  Edge("Interfaith Chapel - South Entrance", "Interfaith Chapel", 24.1),
  Edge("Interfaith Chapel - South Entrance", "Interfaith Chapel - East Entrance", 60.0),
  Edge("Interfaith Chapel - South Entrance", "Interfaith Chapel - West Entrance", 60.0),
  Edge("Interfaith Chapel - South Entrance", "Nutrition and Food Science Building", 1.0),

  Edge("Interfaith Chapel - West Entrance", "Interfaith Chapel", 24.1),
  Edge("Interfaith Chapel - West Entrance", "Interfaith Chapel - North Entrance", 60.0),
  Edge("Interfaith Chapel - West Entrance", "Interfaith Chapel - South Entrance", 60.0),
  Edge("Interfaith Chapel - West Entrance", "Main Building - Entrance B", 12.8),

  Edge("Laboratory High School", "Ninoy Aquino Library - Parking Area", 32.1),

  Edge("Laboratory High School - Backside A", "Laboratory High School - Backside B", 23.9),
  Edge("Laboratory High School - Backside A", "Ninoy Aquino Library - Parking Area", 50.1),
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

  Edge("Linear Park - Dining and Meeting Area", "Canteen - Pathwalk L", 31.3),
  Edge("Linear Park - Dining and Meeting Area", "Canteen - Pathwalk R", 31.1),
  Edge("Linear Park - Dining and Meeting Area", "Linear Park Sidewalk - SC", 25.3),
  Edge("Linear Park - Dining and Meeting Area", "Student Canteen", 10.3),

  Edge("Linear Park Sidewalk - LHS", "Laboratory High School - Backside B", 36.7),
  Edge("Linear Park Sidewalk - LHS", "Linear Park Sidewalk - SC", 56.2),
  Edge("Linear Park Sidewalk - LHS", "Printing Press Building", 32.4),

  Edge("Linear Park Sidewalk - SC", "Linear Park - Dining and Meeting Area", 25.3),
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
  Edge("Ninoy Aquino Library - Driveway A", "Ninoy Aquino Library - Parking Area", 28.5),
  Edge("Ninoy Aquino Library - Driveway A", "Non-Food Stalls Building - Front Entrance", 24.0),
  Edge("Ninoy Aquino Library - Driveway A", "Charlie Del Rosario Hall - Entrance", 32.6),

  Edge("Ninoy Aquino Library - Entrance", "Ninoy Aquino Library - Driveway A", 36.7),
  Edge("Ninoy Aquino Library - Entrance", "Ninoy Aquino Library and Learning Resources Center", 1.0),
  Edge("Ninoy Aquino Library - Entrance", "R.C. Overhead Water Tank", 36.3),

  Edge("Ninoy Aquino Library - Parking Area", "Ninoy Aquino Library - Driveway A", 28.5),
  Edge("Ninoy Aquino Library - Parking Area", "R.C. Overhead Water Tank", 26.2),

  Edge("Ninoy Aquino Library and Learning Resources Center", "Ninoy Aquino Library - Entrance", 1.0),

  Edge("Non-Food Stalls - Lagoon Entrance", "Lagoon - Entrance B", 52.1),
  Edge("Non-Food Stalls - Lagoon Entrance", "Lagoon Sidewalk - S", 8.1),
  Edge("Non-Food Stalls - Lagoon Entrance", "Non-Food Stalls Building", 17.0),
  Edge("Non-Food Stalls - Lagoon Entrance", "Non-Food Stalls Building - Front Entrance", 15.4),
  Edge("Non-Food Stalls - Lagoon Entrance", "Non-Food Stalls Building - Rear Entrance", 29.4),
  Edge("Non-Food Stalls - Lagoon Entrance", "Charlie Del Rosario Hall - Entrance", 27.6),

  Edge("Track and Field Oval", "Track and Field Oval - East", 43.7),
  Edge("Track and Field Oval", "Track and Field Oval - North", 79.8),
  Edge("Track and Field Oval", "Track and Field Oval - South", 80.2),
  Edge("Track and Field Oval", "Track and Field Oval - West", 42.6),
  Edge("Track and Field Oval", "Track and Field Oval - Southwest", 71.1),

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

  Edge("PUP Tahanan ng Atleta", "Track and Field Oval - East", 19.9),

  Edge("Pylon", "VIC - Front", 26.7),

  Edge("R.C. Overhead Water Tank", "Laboratory High School - Backside A", 21.4),
  Edge("R.C. Overhead Water Tank", "Ninoy Aquino Library - Entrance", 36.3),
  Edge("R.C. Overhead Water Tank", "Ninoy Aquino Library - Parking Area", 26.2),

  Edge("South Wing", "South Wing - Entrance", 22.2),

  Edge("South Wing - Entrance", "Dome - Entrance", 10.8),
  Edge("South Wing - Entrance", "East Wing - Stairs A", 4.7),
  Edge("South Wing - Entrance", "South Wing", 22.2),
  Edge("South Wing - Entrance", "West Wing - Corner C", 4.7),
  Edge("South Wing - Entrance", "West Wing - Stairs A", 32.6),

  Edge("Student Canteen", "Linear Park - Dining and Meeting Area", 10.3),
  Edge("Student Canteen", "Student Canteen - Front", 1.0),

  Edge("Student Canteen - Front", "Canteen - Pathwalk L", 4.7),
  Edge("Student Canteen - Front", "Canteen - Pathwalk R", 4.7),
  Edge("Student Canteen - Front", "Lagoon - Entrance B", 68.7),
  Edge("Student Canteen - Front", "Main Building - Entrance A", 76.1),
  Edge("Student Canteen - Front", "Student Canteen", 1.0),
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

  Edge("Track and Field Oval - East", "Track and Field Oval", 43.7),
  Edge("Track and Field Oval - East", "PUP Tahanan ng Atleta", 19.9),
  Edge("Track and Field Oval - East", "Track and Field Oval - North", 101.3),
  Edge("Track and Field Oval - East", "Track and Field Oval - South", 112.1),

  Edge("Track and Field Oval - North", "Track and Field Oval", 79.8),
  Edge("Track and Field Oval - North", "Track and Field Oval - East", 101.3),
  Edge("Track and Field Oval - North", "Track and Field Oval - North Entrance", 12.0),
  Edge("Track and Field Oval - North", "Track and Field Oval - West", 104.8),

  Edge("Track and Field Oval - North Entrance", "Covered Walkway A", 40.9),
  Edge("Track and Field Oval - North Entrance", "Track and Field Oval - North", 12.0),

  Edge("Track and Field Oval - South", "Track and Field Oval", 80.2),
  Edge("Track and Field Oval - South", "Track and Field Oval - East", 112.1),
  Edge("Track and Field Oval - South", "Track and Field Oval - Southwest", 43.3),

  Edge("Track and Field Oval - South Entrance", "Covered Walkway B", 20.5),
  Edge("Track and Field Oval - South Entrance", "Grandstand", 67.9),
  Edge("Track and Field Oval - South Entrance", "Interfaith Chapel - East Entrance", 23.3),
  Edge("Track and Field Oval - South Entrance", "Track and Field Oval - Southwest", 10.6),

  Edge("Track and Field Oval - West", "Grandstand", 11.5),
  Edge("Track and Field Oval - West", "Track and Field Oval", 42.6),
  Edge("Track and Field Oval - West", "Track and Field Oval - North", 104.8),
  Edge("Track and Field Oval - West", "Track and Field Oval - Southwest", 60.9),

  Edge("VIC - Front", "Covered Walkway C", 20.7),
  Edge("VIC - Front", "Pylon", 26.7),
  Edge("VIC - Front", "Visitors Information Center", 5.7),

  Edge("Visitors Information Center", "VIC - Front", 5.7),

  Edge("West Wing", "West Wing - Stairs A", 1.0),
  Edge("West Wing", "West Wing - Stairs B", 1.0),

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
  Edge("West Wing - Stairs A", "West Wing", 1.0),
  Edge("West Wing - Stairs A", "West Wing - Corner A", 59.8),
  Edge("West Wing - Stairs A", "West Wing - Corner C", 29.4),

  Edge("West Wing - Stairs B", "West Wing", 1.0),
  Edge("West Wing - Stairs B", "West Wing - Corner A", 15.7),
  Edge("West Wing - Stairs B", "West Wing - Corner B", 15.7),

  Edge("Charlie Del Rosario Hall", "Charlie Del Rosario Hall - Entrance", 1.0),

  Edge("Charlie Del Rosario Hall - Entrance", "Canteen - Pathwalk R", 15.0),
  Edge("Charlie Del Rosario Hall - Entrance", "Ninoy Aquino Library - Driveway A", 32.6),
  Edge("Charlie Del Rosario Hall - Entrance", "Non-Food Stalls - Lagoon Entrance", 27.6),
  Edge("Charlie Del Rosario Hall - Entrance", "Charlie Del Rosario Hall", 1.0),

  Edge("Track and Field Oval - Southwest", "Track and Field Oval", 71.1),
  Edge("Track and Field Oval - Southwest", "Track and Field Oval - South", 43.3),
  Edge("Track and Field Oval - Southwest", "Track and Field Oval - South  Entrance", 10.6),
  Edge("Track and Field Oval - Southwest", "Track and Field Oval - West", 60.9),
  
];

Map<String, Node> nodes = {
  'Node1': Node('Ampitheather', 14.598, 121.011),
  'Node2': Node('Node2', 14.599, 121.012),
  'Node3': Node('Node3', 14.600, 121.013),
  // Add all other nodes
};