import java.util.*;

public class Main {
	
	  // making an edge class that stores the vertex and its neighbor along with the weight
	  public static class Edge {
	    int source;
	    int nbr;
	    double weight;
	 
	    Edge(int source, int nbr, double weight) {
	      this.source = source;
	      this.nbr = nbr;
	      this.weight = weight;
	    }
	  }
	  
	  //making a pair class
	 public static class Pair implements Comparable<Pair> {
	    int vertex;
	    double wsf; //weight so far
	 
	    Pair(int vertex, double wsf) {
	      this.vertex = vertex;
	      this.wsf = wsf;
	    }
	    // using CompareTo function so that priority queue arranges the element in terms of weight so far
	    public int compareTo(Pair other) {
			return Double.compare(this.wsf, other.wsf);
	    }
	  }
	  
	  public static void main(String[] args) {
	    
	    // building the graph
		// the graph is an array of ArrayList (of Object,Edge)
		// length of array = the vertices present in graph.
		  
	    ArrayList<Edge> [] graph =  new ArrayList[200];
	    for(int i = 0; i < graph.length; i++){
	        graph[i] = new ArrayList<>();
	    }
	    
	    //creating a hashmap to store mapped values
	    HashMap<Integer, String> map= new HashMap<>();
	    
	    // if graph vertices consisted of strings rather than numbers
	    map.put(1, "Amphitheater");
	    map.put(2, "Amphitheater Entrance 1");
	    map.put(3, "Amphitheater Entrance 2");
	    map.put(4, "Campus Development and Maintenance Building");
	    map.put(5, "Canteen - Pathwalk L");
	    map.put(6, "Canteen - Pathwalk R");
	    map.put(7, "Covered Walkway A");
		map.put(8, "Covered Walkway B");
		map.put(9, "Covered Walkway C");
		map.put(10, "Covered Walkway D");
		map.put(11, "Dome");
		map.put(12, "Dome - Entrance");
		map.put(13, "East Wing");
		map.put(14, "East Wing - Corner A");
		map.put(15, "East Wing - Corner B");
		map.put(16, "East Wing - Stairs A");
		map.put(17, "East Wing - Stairs B");
		map.put(18, "Engineering Science Research Center (ESRC) Building");
		map.put(19, "Food Stalls A");
		map.put(20, "Food Stalls B");
		map.put(21, "Food Stalls C");
		map.put(22, "Souvenir Shop");
		map.put(23, "Souvenir Shop - Front");
		map.put(24, "Grandstand");
		map.put(25, "Guard House");
		map.put(26, "Gymnasium - Entrance");
		map.put(27, "Gymnasium and Sports Center");
		map.put(28, "Interfaith Chapel");
		map.put(29, "Interfaith Chapel - East Entrance");
		map.put(30, "Interfaith Chapel - North Entrance");
		map.put(31, "Interfaith Chapel - South Entrance");
		map.put(32, "Interfaith Chapel - West Entrance");
		map.put(33, "Laboratory High School");
		map.put(34, "Laboratory High School - Backside A");
		map.put(35, "Laboratory High School - Backside B");
		map.put(36, "Lagoon");
		map.put(37, "Lagoon - Entrance A");
		map.put(38, "Lagoon - Entrance B");
		map.put(39, "Lagoon Sidewalk - E");
		map.put(40, "Lagoon Sidewalk - N");
		map.put(41, "Lagoon Sidewalk - S");
		map.put(42, "Lagoon Sidewalk - W");
		map.put(43, "Linear Park - Dining and Meeting Area");
		map.put(44, "Linear Park Sidewalk - LHS");
		map.put(45, "Linear Park Sidewalk - SC");
		map.put(46, "Linear Park Sidewalk - SW");
		map.put(47, "Mabini Monument PUP Obelisk");
		map.put(48, "Main Building - Entrance A");
		map.put(49, "Main Building - Entrance B");
		map.put(50, "Ninoy Aquino Library - Driveway A");
		map.put(51, "Ninoy Aquino Library - Entrance");
		map.put(52, "Ninoy Aquino Library - Parking Area");
		map.put(53, "Ninoy Aquino Library and Learning Resources Center");
		map.put(54, "Non-Food Stalls - Lagoon Entrance");
		map.put(55, "Track and Field Oval");
		map.put(56, "Non-Food Stalls Building");
		map.put(57, "Non-Food Stalls Building - Front Entrance");
		map.put(58, "Non-Food Stalls Building - Rear Entrance");
		map.put(59, "North Parking Area");
		map.put(60, "Nutrition and Food Science Building");
		map.put(61, "Pedestrian Lane A");
		map.put(62, "Pedestrian Lane B");
		map.put(63, "Physical Education Building");
		map.put(64, "Printing Press Building");
		map.put(65, "Property and Supply Building");
		map.put(66, "PUP Obelisk - East Driveway");
		map.put(67, "PUP Obelisk - North Driveway");
		map.put(68, "PUP Obelisk - South Driveway");
		map.put(69, "PUP Obelisk - West Driveway");
		map.put(70, "PUP Sta Mesa Ferry Station");
		map.put(71, "PUP Tahanan ng Atleta");
		map.put(72, "Pylon");
		map.put(73, "R.C. Overhead Water Tank");
		map.put(74, "South Wing");
		map.put(75, "South Wing - Entrance");
		map.put(76, "Student Canteen");
		map.put(77, "Student Canteen - Front");
		map.put(78, "Swimming Pool");
		map.put(79, "Swimming Pool - Pathwalk A");
		map.put(80, "Swimming Pool - Pathwalk B");
		map.put(81, "Tahanan ng Alumni ");
		map.put(82, "Tennis Court");
		map.put(83, "Tennis Court - Entrance");
		map.put(84, "Track and Field Oval - East");
		map.put(85, "Track and Field Oval - North");
		map.put(86, "Track and Field Oval - North Entrance");
		map.put(87, "Track and Field Oval - South");
		map.put(88, "Track and Field Oval - South Entrance");
		map.put(89, "Track and Field Oval - West");
		map.put(90, "VIC - Front");
		map.put(91, "Visitors Information Center");
		map.put(92, "West Wing");
		map.put(93, "West Wing - Corner A");
		map.put(94, "West Wing - Corner B");
		map.put(95, "West Wing - Stairs C");
		map.put(96, "West Wing - Stairs A");
		map.put(97, "West Wing - Stairs B");
		map.put(98, "Charlie Del Rosario Hall");
		map.put(99, "Charlie Del Rosario Hall - Entrance");
		map.put(100, "Track and Field Oval - Southwest");
		
	    
	    // Adding all the vertices and its members along with weights
	    
		// Ampitheater
	    graph[0].add(new Edge(1, 2, 1.0)); // Amphitheater Entrance 1
		graph[0].add(new Edge(1, 3, 1.0)); // Amphitheater Entrance 2

		// Ampitheater Entrance 1
	    graph[1].add(new Edge(2, 1, 1.0)); // Amphitheater
		graph[1].add(new Edge(2, 3, 17.2)); // Amphitheater Entrance 2
		graph[1].add(new Edge(2, 39, 38.0)); // Lagoon Sidewalk - E
		graph[1].add(new Edge(2, 41, 21.0)); // Lagoon Sidewalk - S

		// Ampitheater Entrance 2
	    graph[2].add(new Edge(3, 1, 1.0)); // Ampitheater
		graph[2].add(new Edge(3, 2, 17.2)); // Amphitheater Entrance 1
		graph[2].add(new Edge(3, 21, 9.5)); // Food Stalls C
		graph[2].add(new Edge(3, 36, 34.3)); // Lagoon

		// Campus Development and Maintenance Building
	    graph[3].add(new Edge(4, 14, 8.0)); // East Wing - Corner A
		graph[3].add(new Edge(4, 15, 34.7)); // East Wing - Corner B
		graph[3].add(new Edge(4, 70, 34.0)); // PUP Sta Mesa Ferry Station

		// Canteen - Pathwalk L
		graph[4].add(new Edge(5, 43, 31.3)); // Linear Park - Dining and Meeting Area
		graph[4].add(new Edge(5, 77, 4.7)); // Student Canteen - Front
		graph[4].add(new Edge(5, 93, 14.2)); // West Wing - Corner A

		// Canteen - Pathwalk R
	    graph[5].add(new Edge(6, 43, 31.3)); // Linear Park - Dining and Meeting Area
		graph[5].add(new Edge(6, 77, 4.7)); // Student Canteen - Front
		graph[5].add(new Edge(6, 99, 15.0)); // Charlie Del Rosario Hall - Entrance

		// Covered Walkway A
		graph[6].add(new Edge(7, 8, 146.5)); // Covered Walkway B
	    graph[6].add(new Edge(7, 25, 33.2)); // Guard House
		graph[6].add(new Edge(7, 62, 21.3)); // Pedestrian Lane B
		graph[6].add(new Edge(7, 86, 40.9)); // Track and Field Oval - North Entrance

		// Covered Walkway B
	    graph[7].add(new Edge(8, 7, 146.5)); // Covered Walkway A
		graph[7].add(new Edge(8, 30, 23.7)); // Interfaith Chapel - North Entrance
		graph[7].add(new Edge(8, 87, 20.5)); // Track and Field Oval - South

		// Covered Walkway C
	    graph[8].add(new Edge(9, 10, 54.5)); // Covered Walkway D
		graph[8].add(new Edge(9, 61, 13.3)); // Pedestrian Lane A
		graph[8].add(new Edge(9, 90, 20.7)); // VIC - Front

		// Covered Walkway D
	    graph[9].add(new Edge(10, 9, 54.5)); // Covered Walkway C
		graph[9].add(new Edge(10, 18, 30.3)); // Engineering Science Research Center (ESRC) Building
		graph[9].add(new Edge(10, 26, 22.7)); // Gymnasium - Entrance
		graph[9].add(new Edge(10, 80, 163.3)); // Swimming Pool - Pathwalk B

		// Dome
	    graph[10].add(new Edge(11, 12, 1.0)); // Dome - Entrance

		// Dome - Entrance
	    graph[11].add(new Edge(12, 11, 1.0)); // Dome
		graph[11].add(new Edge(12, 16, 11.7)); // East Wing - Stairs A
		graph[11].add(new Edge(12, 49, 24.8)); // Main Building - Entrance B
		graph[11].add(new Edge(12, 75, 10.8)); // South Wing - Entrance
		graph[11].add(new Edge(12, 95, 12.5)); // West Wing - Corner C
		graph[11].add(new Edge(12, 96, 23.9)); // West Wing - Stairs A

		// East Wing
	    graph[12].add(new Edge(13, 16, 1.0)); // East Wing - Stairs A
		graph[12].add(new Edge(13, 17, 1.0)); // East Wing - Stairs B

		// East Wing - Corner A
	    graph[13].add(new Edge(14, 4, 8.0)); // Campus Development and Maintenance Building
		graph[13].add(new Edge(14, 16, 56.0)); // East Wing - Stairs A
		graph[13].add(new Edge(14, 17, 13.4)); // East Wing - Stairs B

		// East Wing - Corner B
	    graph[14].add(new Edge(15, 4, 34.7)); // Campus Development and Maintenance Building
		graph[14].add(new Edge(15, 17, 13.4)); // East Wing - Stairs B
		graph[14].add(new Edge(15, 31, 28.5)); // Interfaith Chapel - South Entrance
		graph[14].add(new Edge(15, 49, 56.0)); // Main Building - Entrance B

		// East Wing - Stairs A
	    graph[15].add(new Edge(16, 12, 11.7)); // Dome - Entrance
		graph[15].add(new Edge(16, 13, 1.0)); // East Wing
		graph[15].add(new Edge(16, 14, 56.0)); // East Wing - Corner A
		graph[15].add(new Edge(16, 49, 30.2)); // Main Building - Entrance B
		graph[15].add(new Edge(16, 75, 4.7)); // South Wing - Entrance

		// East Wing - Stairs B
		graph[16].add(new Edge(17, 13, 1.0)); // East Wing
		graph[16].add(new Edge(17, 14, 13.4)); // East Wing - Corner A
		graph[16].add(new Edge(17, 15, 13.4)); // East Wing - Corner B

		// Engineering Science Research Center (ESRC) Building
		graph[17].add(new Edge(18, 10, 30.3)); // Covered Walkway D
		graph[17].add(new Edge(18, 26, 18.3)); // Gymnasium - Entrance

		// Food Stalls A
		graph[18].add(new Edge(19, 36, 37.8)); // Lagoon
		graph[18].add(new Edge(19, 37, 17.4)); // Lagoon - Entrance A
		graph[18].add(new Edge(19, 40, 41.1)); // Lagoon Sidewalk - N

		// Food Stalls B
		graph[19].add(new Edge(20, 21, 47.5)); // Food Stalls C
		graph[19].add(new Edge(20,36, 16.4)); // Lagoon
		graph[19].add(new Edge(20, 37, 19.0)); // Lagoon - Entrance A
		
		// Food Stalls C
		graph[20].add(new Edge(21, 3, 9.5)); // Amphitheater Entrance 2
		graph[20].add(new Edge(21, 20, 47.5)); // Food Stalls B
		graph[20].add(new Edge(21, 38, 17.3)); // Lagoon - Entrance B

		// Souvenir Shop
		graph[21].add(new Edge(22, 23, 1.0)); // Souvenir Shop - Front

		// Souvenir Shop - Front
		graph[22].add(new Edge(23, 22, 1.0)); // Souvenir Shop
		graph[22].add(new Edge(23, 62, 19.8)); // Pedestrian Lane B
		graph[22].add(new Edge(23, 66, 60.8)); // PUP Obelisk - East Driveway

		// Grandstand
		graph[23].add(new Edge(24, 88, 67.9)); // Track and Field Oval - South  Entrance
		graph[23].add(new Edge(24, 89, 11.5)); // Track and Field Oval - West

		// Guard House
		graph[24].add(new Edge(25, 7, 33.2)); // Covered Walkway A

		// Gymnasium - Entrance 
		graph[25].add(new Edge(26, 10, 22.7)); // Covered Walkway D
		graph[25].add(new Edge(26, 18, 18.3)); // Engineering Science Research Center (ESRC) Building
		graph[25].add(new Edge(26, 27, 1.0)); // Gymnasium and Sports Center

		// Gymnasium and Sports Center
		graph[26].add(new Edge(27, 26, 1.0)); // Gymnasium - Entrance

		// Interfaith Chapel
		graph[27].add(new Edge(28, 29, 24.1)); // Interfaith Chapel - East Entrance
		graph[27].add(new Edge(28, 30, 24.1)); // Interfaith Chapel - North Entrance
		graph[27].add(new Edge(28, 31, 24.1)); // Interfaith Chapel - South Entrance
		graph[27].add(new Edge(28, 32, 24.1)); // Interfaith Chapel - West Entrance

		// Interfaith Chapel - East Entrance
		graph[28].add(new Edge(29, 28, 24.1)); // Interfaith Chapel
		graph[28].add(new Edge(29, 31, 60.0)); // Interfaith Chapel - South Entrance
		graph[28].add(new Edge(29, 88, 23.3)); // Track and Field Oval - South  Entrance

		// Interfaith Chapel - North Entrance
		graph[29].add(new Edge(30, 8, 23.7)); // Covered Walkway B
		graph[29].add(new Edge(30, 28, 24.1)); // Interfaith Chapel
		graph[29].add(new Edge(30, 32, 60.0)); // Interfaith Chapel - West Entrance
		graph[29].add(new Edge(30, 66, 94.4)); // PUP Obelisk - East Driveway

		// Interfaith Chapel - South Entrance
		graph[30].add(new Edge(31, 15, 28.5)); // East Wing - Corner B
		graph[30].add(new Edge(31, 28, 24.1)); // Interfaith Chapel
		graph[30].add(new Edge(31, 29, 60.0)); // Interfaith Chapel - East Entrance
		graph[30].add(new Edge(31, 32, 60.0)); // Interfaith Chapel - West Entrance
		graph[30].add(new Edge(31, 60, 1.0)); // Nutrition and Food Science Building

		// Interfaith Chapel - West Entrance
		graph[31].add(new Edge(32, 28, 24.1)); // Interfaith Chapel
		graph[31].add(new Edge(32, 30, 60.0)); // Interfaith Chapel - North Entrance
		graph[31].add(new Edge(32, 31, 60.0)); // Interfaith Chapel - South Entrance
		graph[31].add(new Edge(32, 49, 12.8)); // Main Building - Entrance B

		// Laboratory High School
		graph[32].add(new Edge(33, 52, 32.1)); // Ninoy Aquino Library - Parking Area
		
		// Laboratory High School - Backside A
		graph[33].add(new Edge(34, 35, 23.9)); // Laboratory High School - Backside B
		graph[33].add(new Edge(34, 52, 50.1)); // Ninoy Aquino Library - Parking Area
		graph[33].add(new Edge(34, 65, 27.4)); // Property and Supply Building

		// Laboratory High School - Backside B
		graph[34].add(new Edge(35, 34, 23.9)); // Laboratory High School - Backside A
		graph[34].add(new Edge(35, 44, 36.7)); // Linear Park Sidewalk - LHS
		graph[34].add(new Edge(35, 64, 20.2)); // Printing Press Building
		graph[34].add(new Edge(35, 65, 24.2)); // Property and Supply Building

		// Lagoon
		graph[35].add(new Edge(36, 3, 34.3)); // Amphitheater Entrance 2
		graph[35].add(new Edge(36, 19, 37.8)); // Food Stalls A
		graph[35].add(new Edge(36, 20, 16.4)); // Food Stalls B
		graph[35].add(new Edge(36, 37, 27.2)); // Lagoon - Entrance A
		graph[35].add(new Edge(36, 39, 14.3)); // Lagoon Sidewalk - E

		// Lagoon - Entrance A
		graph[36].add(new Edge(37, 19, 17.4)); // Food Stalls A
		graph[36].add(new Edge(37, 20, 19.0)); // Food Stalls B
		graph[36].add(new Edge(37, 36, 27.2)); // Lagoon
		graph[36].add(new Edge(37, 68, 14.8)); // PUP Obelisk - South Driveway

		// Lagoon - Entrance B
		graph[37].add(new Edge(38, 21, 17.3)); // Food Stalls C
		graph[37].add(new Edge(38, 41, 38.1)); // Lagoon Sidewalk - S
		graph[37].add(new Edge(38, 48, 14.3)); // Main Building - Entrance A
		graph[37].add(new Edge(38, 54, 52.1)); // Non-Food Stalls - Lagoon Entrance
		graph[37].add(new Edge(38, 77, 68.7)); // Student Canteen - Front

		// Lagoon Sidewalk - E
		graph[38].add(new Edge(39, 2, 38.0)); // Amphitheater Entrance 1
		graph[38].add(new Edge(39, 36, 14.3)); // Lagoon
		graph[38].add(new Edge(39, 40, 40.6)); // Lagoon Sidewalk - N
		
		// Lagoon Sidewalk - N
		graph[39].add(new Edge(40, 19, 41.1)); // Food Stalls A
		graph[39].add(new Edge(40, 39, 40.6)); // Lagoon Sidewalk - E
		graph[39].add(new Edge(40, 42, 57.0)); // Lagoon Sidewalk - W

		// Lagoon Sidewalk - S
		graph[40].add(new Edge(41, 2, 21.0)); // Amphitheater Entrance 1
		graph[40].add(new Edge(41, 38, 38.1)); // Lagoon - Entrance B
		graph[40].add(new Edge(41, 54, 8.1)); // Non-Food Stalls - Lagoon Entrance

		// Lagoon Sidewalk - W
		graph[41].add(new Edge(42, 40, 57.0)); // Lagoon Sidewalk - N
		graph[41].add(new Edge(42, 58, 26.2)); // Non-Food Stalls Building - Rear Entrance

		// Linear Park - Dining and Meeting Area
		graph[42].add(new Edge(43, 5, 31.3)); // Canteen - Pathwalk L
		graph[42].add(new Edge(43, 6, 31.1)); // Canteen - Pathwalk R
		graph[42].add(new Edge(43, 45, 25.3)); // Linear Park Sidewalk - SC
		graph[42].add(new Edge(43, 76, 10.3)); // Student Canteen

		// Linear Park Sidewalk - LHS
		graph[43].add(new Edge(44, 35, 36.7)); // Laboratory High School - Backside B
		graph[43].add(new Edge(44, 45, 56.2)); // Linear Park Sidewalk - SC
		graph[43].add(new Edge(44, 64, 32.4)); // Printing Press Building

		// Linear Park Sidewalk - SC
		graph[44].add(new Edge(45, 43, 25.3)); // Linear Park - Dining and Meeting Area
		graph[44].add(new Edge(45, 44, 56.2)); // Linear Park Sidewalk - LHS
		graph[44].add(new Edge(45, 46, 64.2)); // Linear Park Sidewalk - SW
		
		// Linear Park Sidewalk - SW
		graph[45].add(new Edge(46, 45, 64.2)); // Linear Park Sidewalk - SC
		graph[45].add(new Edge(46, 70, 89.5)); // PUP Sta Mesa Ferry Station
		graph[45].add(new Edge(46, 94, 20.2)); // West Wing - Corner B

		// Mabini Monument PUP Obelisk
		graph[46].add(new Edge(47, 66, 16.2)); // PUP Obelisk - East Driveway
		graph[46].add(new Edge(47, 67, 16.2)); // PUP Obelisk - North Driveway
		graph[46].add(new Edge(47, 68, 16.2)); // PUP Obelisk - South Driveway
		graph[46].add(new Edge(47, 69, 16.2)); // PUP Obelisk - West Driveway

		// Main Building - Entrance A
		graph[47].add(new Edge(48, 38, 14.3)); // Lagoon - Entrance B
		graph[47].add(new Edge(48, 77, 76.1)); // Student Canteen - Front
		graph[47].add(new Edge(48, 96, 5.5)); // West Wing - Stairs A

		// Main Building - Entrance B
		graph[48].add(new Edge(49, 12, 24.8)); // Dome - Entrance
		graph[48].add(new Edge(49, 15, 56.0)); // East Wing - Corner B
		graph[48].add(new Edge(49, 16, 30.2)); // East Wing - Stairs A
		graph[48].add(new Edge(49, 32, 12.8)); // Interfaith Chapel - West Entrance

		// Ninoy Aquino Library - Driveway A
		graph[49].add(new Edge(50, 51, 36.7)); // Ninoy Aquino Library - Entrance
		graph[49].add(new Edge(50, 52, 28.5)); // Ninoy Aquino Library - Parking Area
		graph[49].add(new Edge(50, 57, 24.0)); // Non-Food Stalls Building - Front Entrance
		graph[49].add(new Edge(50, 99, 32.6)); // Charlie Del Rosario Hall - Entrance

		// Ninoy Aquino Library - Entrance
		graph[50].add(new Edge(51, 50, 36.7)); // Ninoy Aquino Library - Driveway A
		graph[50].add(new Edge(51, 53, 1.0)); // Ninoy Aquino Library and Learning Resources Center
		graph[50].add(new Edge(51, 73, 36.3)); // R.C. Overhead Water Tank
		
		// Ninoy Aquino Library - Parking Area
		graph[51].add(new Edge(52, 50, 28.5)); // Ninoy Aquino Library - Driveway A
		graph[51].add(new Edge(52, 73, 26.2)); // R.C. Overhead Water Tank

		// Ninoy Aquino Library and Learning Resources Center
		graph[52].add(new Edge(53, 51, 1.0)); // Ninoy Aquino Library - Entrance

		// Non-Food Stalls - Lagoon Entrance
		graph[53].add(new Edge(54, 38, 52.1)); // Lagoon - Entrance B
		graph[53].add(new Edge(54, 41, 8.1)); // Lagoon Sidewalk - S
		graph[53].add(new Edge(54, 56, 17.0)); // Non-Food Stalls Building
		graph[53].add(new Edge(54, 57, 15.4)); // Non-Food Stalls Building - Front Entrance
		graph[53].add(new Edge(54, 58, 29.4)); // Non-Food Stalls Building - Rear Entrance
		graph[53].add(new Edge(54, 99, 27.6)); // Charlie Del Rosario Hall - Entrance

		// Track and Field Oval
		graph[54].add(new Edge(55, 84, 43.7)); // Track and Field Oval - East
		graph[54].add(new Edge(55, 85, 79.8)); // Track and Field Oval - North
		graph[54].add(new Edge(55, 87, 80.2)); // Track and Field Oval - South
		graph[54].add(new Edge(55, 89, 42.6)); // Track and Field Oval - West
		graph[54].add(new Edge(55, 100, 71.1)); // Track and Field Oval - Southwest

		// Non-Food Stalls Building
		graph[55].add(new Edge(56, 54, 17.0)); // Non-Food Stalls - Lagoon Entrance
		graph[55].add(new Edge(56, 57, 7.3)); // Non-Food Stalls Building - Front Entrance
		graph[55].add(new Edge(56, 58, 7.3)); // Non-Food Stalls Building - Rear Entrance

		// Non-Food Stalls Building - Front Entrance
		graph[56].add(new Edge(57, 50, 24.0)); // Ninoy Aquino Library - Driveway A
		graph[56].add(new Edge(57, 54, 15.4)); // Non-Food Stalls - Lagoon Entrance
		graph[56].add(new Edge(57, 56, 7.3)); // Non-Food Stalls Building

		// Non-Food Stalls Building - Rear Entrance
		graph[57].add(new Edge(58, 42, 26.2)); // Lagoon Sidewalk - W
		graph[57].add(new Edge(58, 54, 29.4)); // Non-Food Stalls - Lagoon Entrance
		graph[57].add(new Edge(58, 56, 7.3)); // Non-Food Stalls Building

		// North Parking Area
		graph[58].add(new Edge(59, 63, 10.5)); // Physical Education Building
		graph[58].add(new Edge(59, 67, 55.8)); // PUP Obelisk - North Driveway
		graph[58].add(new Edge(59, 69, 49.8)); // PUP Obelisk - West Driveway
		graph[58].add(new Edge(59, 78, 38.4)); // Swimming Pool
		graph[58].add(new Edge(59, 79, 17.5)); // Swimming Pool - Pathwalk A
		graph[58].add(new Edge(59, 81, 11.8)); // Tahanan ng Alumni 

		// Nutrition and Food Science Building
		graph[59].add(new Edge(60, 31, 1.0)); // Interfaith Chapel - South Entrance

		// Pedestrian Lane A
		graph[60].add(new Edge(61, 9, 13.3)); // Covered Walkway C
		graph[60].add(new Edge(61, 62, 13.7)); // Pedestrian Lane B
		graph[60].add(new Edge(61, 83, 45.6)); // Tennis Court - Entrance

		// Pedestrian Lane B
		graph[61].add(new Edge(62, 7, 21.3)); // Covered Walkway A
		graph[61].add(new Edge(62, 23, 19.8)); // Souvenir Shop - Front
		graph[61].add(new Edge(62, 61, 13.7)); // Pedestrian Lane A

		// Physical Education Building
		graph[62].add(new Edge(63, 59, 10.5)); // North Parking Area

		// Printing Press Building
		graph[63].add(new Edge(64, 35, 20.2)); // Laboratory High School - Backside B
		graph[63].add(new Edge(64, 44, 32.4)); // Linear Park Sidewalk - LHS
		graph[63].add(new Edge(64, 65, 17.7)); // Property and Supply Building

		// Property and Supply Building
		graph[64].add(new Edge(65, 34, 27.4)); // Laboratory High School - Backside A
		graph[64].add(new Edge(65, 35, 24.2)); // Laboratory High School - Backside B
		graph[64].add(new Edge(65, 64, 17.7)); // Printing Press Building

		// PUP Obelisk - East Driveway
		graph[65].add(new Edge(66, 23, 60.8)); // Souvenir Shop - Front
		graph[65].add(new Edge(66, 30, 94.4)); // Interfaith Chapel - North Entrance
		graph[65].add(new Edge(66, 47, 15.5)); // Mabini Monument PUP Obelisk
		graph[65].add(new Edge(66, 67, 23.4)); // PUP Obelisk - North Driveway
		graph[65].add(new Edge(66, 68, 23.4)); // PUP Obelisk - South Driveway
		
		// PUP Obelisk - North Driveway
		graph[66].add(new Edge(67, 47, 16.2)); // Mabini Monument PUP Obelisk
		graph[66].add(new Edge(67, 59, 55.8)); // North Parking Area
		graph[66].add(new Edge(67, 66, 23.4)); // PUP Obelisk - East Driveway
		graph[66].add(new Edge(67, 69, 21.8)); // PUP Obelisk - West Driveway
		graph[66].add(new Edge(67, 83, 38.9)); // Tennis Court - Entrance

		// PUP Obelisk - South Driveway
		graph[67].add(new Edge(68, 37, 14.8)); // Lagoon - Entrance A
		graph[67].add(new Edge(68, 47, 16.2)); // Mabini Monument PUP Obelisk
		graph[67].add(new Edge(68, 66, 23.4)); // PUP Obelisk - East Driveway
		graph[67].add(new Edge(68, 69, 23.4)); // PUP Obelisk - West Driveway

		// PUP Obelisk - West Driveway
		graph[68].add(new Edge(69, 47, 16.2)); // Mabini Monument PUP Obelisk
		graph[68].add(new Edge(69, 59, 49.8)); // North Parking Area
		graph[68].add(new Edge(69, 67, 23.4)); // PUP Obelisk - North Driveway
		graph[68].add(new Edge(69, 68, 23.4)); // PUP Obelisk - South Driveway
		
		// PUP Sta Mesa Ferry Station
		graph[69].add(new Edge(70, 4, 34.0)); // Campus Development and Maintenance Building
		graph[69].add(new Edge(70, 46, 89.5)); // Linear Park Sidewalk - SW

		// PUP Tahanan ng Atleta
		graph[70].add(new Edge(71, 84, 19.9)); // Track and Field Oval - East

		// Pylon
		graph[71].add(new Edge(72, 90, 26.7)); // VIC - Front

		// R.C. Overhead Water Tank
		graph[72].add(new Edge(73, 34, 21.4)); // Laboratory High School - Backside A
		graph[72].add(new Edge(73, 51, 36.3)); // Ninoy Aquino Library - Entrance
		graph[72].add(new Edge(73, 52, 26.2)); // Ninoy Aquino Library - Parking Area

		// South Wing
		graph[73].add(new Edge(74, 75, 22.2)); // South Wing - Entrance

		// South Wing - Entrance
		graph[74].add(new Edge(75, 12, 10.8)); // Dome - Entrance
		graph[74].add(new Edge(75, 16, 4.7)); // East Wing - Stairs A
		graph[74].add(new Edge(75, 74, 22.2)); // South Wing
		graph[74].add(new Edge(75, 95, 4.7)); // West Wing - Corner C
		graph[74].add(new Edge(75, 96, 32.6)); // West Wing - Stairs A
		

		// Student Canteen
		graph[75].add(new Edge(76, 43, 10.3)); // Linear Park - Dining and Meeting Area
		graph[75].add(new Edge(76, 77, 1.0)); // Student Canteen - Front

		// Student Canteen - Front
		graph[76].add(new Edge(77, 5, 4.7)); // Canteen - Pathwalk L
		graph[76].add(new Edge(77, 6, 4.7)); // Canteen - Pathwalk R
		graph[76].add(new Edge(77, 38, 68.7)); // Lagoon - Entrance B
		graph[76].add(new Edge(77, 48, 76.1)); // Main Building - Entrance A
		graph[76].add(new Edge(77, 76, 1.0)); // Student Canteen
		graph[76].add(new Edge(77, 93, 15.1)); // West Wing - Corner A

		// Swimming Pool
		graph[77].add(new Edge(78, 59, 38.4)); // North Parking Area

		// Swimming Pool - Pathwalk A
		graph[78].add(new Edge(79, 59, 17.5)); // North Parking Area
		graph[78].add(new Edge(79, 80, 47.9)); // Swimming Pool - Pathwalk B

		// Swimming Pool - Pathwalk B
		graph[79].add(new Edge(80, 10, 163.3)); // Covered Walkway D
		graph[79].add(new Edge(80, 79, 47.9)); // Swimming Pool - Pathwalk A
		
		// Tahanan ng Alumni 
		graph[80].add(new Edge(81, 59, 11.8)); // North Parking Area

		// Tennis Court
		graph[81].add(new Edge(82, 83, 14.0)); // Tennis Court - Entrance

		// Tennis Court - Entrance
		graph[82].add(new Edge(83, 61, 45.6)); // Pedestrian Lane A
		graph[82].add(new Edge(83, 67, 38.9)); // PUP Obelisk - North Driveway
		graph[82].add(new Edge(83, 82, 14.0)); // Tennis Court

		// Track and Field Oval - East
		graph[83].add(new Edge(84, 55, 43.7)); // Track and Field Oval
		graph[83].add(new Edge(84, 71, 19.9)); // PUP Tahanan ng Atleta
		graph[83].add(new Edge(84, 85, 101.3)); // Track and Field Oval - North
		graph[83].add(new Edge(84, 87, 112.1)); // Track and Field Oval - South

		// Track and Field Oval - North
		graph[84].add(new Edge(85, 55, 79.8)); // Track and Field Oval
		graph[84].add(new Edge(85, 84, 101.3)); // Track and Field Oval - East
		graph[84].add(new Edge(85, 86, 12.0)); // Track and Field Oval - North Entrance
		graph[84].add(new Edge(85, 89, 104.8)); // Track and Field Oval - West

		// Track and Field Oval - North Entrance
		graph[85].add(new Edge(86, 7, 40.9)); // Covered Walkway A
		graph[85].add(new Edge(86, 85, 12.0)); // Track and Field Oval - North
		
		// Track and Field Oval - South 
		graph[86].add(new Edge(87, 55, 80.2)); // Track and Field Oval
		graph[86].add(new Edge(87, 84, 112.1)); // Track and Field Oval - East
		graph[86].add(new Edge(87, 100, 43.3)); // Track and Field Oval - Southwest

		// Track and Field Oval - South Entrance
		graph[87].add(new Edge(88, 8, 20.5)); // Covered Walkway B
		graph[87].add(new Edge(88, 24, 67.9)); // Grandstand
		graph[87].add(new Edge(88, 29, 23.3)); // Interfaith Chapel - East Entrance
		graph[87].add(new Edge(88, 100, 10.6)); // Track and Field Oval - Southwest

		// Track and Field Oval - West
		graph[88].add(new Edge(89, 24, 11.5)); // Grandstand
		graph[88].add(new Edge(89, 55, 42.6)); // Track and Field Oval
		graph[88].add(new Edge(89, 85, 104.8)); // Track and Field Oval - North
		graph[88].add(new Edge(89, 100, 60.9)); // Track and Field Oval - Southwest

		// VIC - Front
		graph[89].add(new Edge(90, 9, 20.7)); // Covered Walkway C
		graph[89].add(new Edge(90, 72, 26.7)); // Pylon
		graph[89].add(new Edge(90, 91, 5.7)); // Visitors Information Center

		// Visitors Information Center
		graph[90].add(new Edge(91, 90, 5.7)); // VIC - Front

		// West Wing
		graph[91].add(new Edge(92, 96, 1.0)); // West Wing - Stairs A
		graph[91].add(new Edge(92, 97, 1.0)); // West Wing - Stairs B

		// West Wing - Corner A
		graph[92].add(new Edge(93, 5, 14.2)); // Canteen - Pathwalk L
		graph[92].add(new Edge(93, 77, 15.1)); // Student Canteen - Front
		graph[92].add(new Edge(93, 96, 59.8)); // West Wing - Stairs A
		graph[92].add(new Edge(93, 97, 15.7)); // West Wing - Stairs B

		// West Wing - Corner B
		graph[93].add(new Edge(94, 46, 20.2)); // Linear Park Sidewalk - SW
		graph[93].add(new Edge(94, 95, 59.8)); // West Wing - Corner C
		graph[93].add(new Edge(94, 97, 15.7)); // West Wing - Stairs B

		// West Wing - Corner C
		graph[94].add(new Edge(95, 12, 12.5)); // Dome - Entrance
		graph[94].add(new Edge(95, 75, 4.7)); // South Wing - Entrance
		graph[94].add(new Edge(95, 94, 59.8)); // West Wing - Corner B
		graph[94].add(new Edge(95, 96, 29.4)); // West Wing - Stairs A

		// West Wing - Stairs A
		graph[95].add(new Edge(96, 12, 23.9)); // Dome - Entrance
		graph[95].add(new Edge(96, 48, 5.5)); // Main Building - Entrance A
		graph[95].add(new Edge(96, 75, 32.6)); // South Wing - Entrance
		graph[95].add(new Edge(96, 92, 1.0)); // West Wing
		graph[95].add(new Edge(96, 93, 59.8)); // West Wing - Corner A
		graph[95].add(new Edge(96, 95, 29.4)); // West Wing - Corner C
		
		// West Wing - Stairs B
		graph[96].add(new Edge(97, 92, 1.0)); // West Wing
		graph[96].add(new Edge(97, 93, 15.7)); // West Wing - Corner A
		graph[96].add(new Edge(97, 94, 15.7)); // West Wing - Corner B

		// Charlie Del Rosario Hall
		graph[97].add(new Edge(98, 99, 1.0)); // Charlie Del Rosario Hall - Entrance

		// Charlie Del Rosario Hall - Entrance
		graph[98].add(new Edge(99, 6, 15.0)); // Canteen - Pathwalk R
		graph[98].add(new Edge(99, 50, 32.6)); // Ninoy Aquino Library - Driveway A
		graph[98].add(new Edge(99, 54, 27.6)); // Non-Food Stalls - Lagoon Entrance
		graph[98].add(new Edge(99, 98, 1.0)); // Charlie Del Rosario Hall

		// Track and Field Oval - Southwest
		graph[99].add(new Edge(100, 55, 71.1)); // Track and Field Oval
		graph[99].add(new Edge(100, 87, 43.3)); // Track and Field Oval - South
		graph[99].add(new Edge(100, 88, 10.6)); // Track and Field Oval - South  Entrance
		graph[99].add(new Edge(100, 89, 60.9)); // Track and Field Oval - West
	    
	    //taking Pylon as source node
	    int src = 72;
	    
	    //creating a visited boolean array
	    boolean[] visited = new boolean[graph.length];
	    
	    //Initialising a priority Queue of object Pair
	    PriorityQueue<Pair> prioQue = new PriorityQueue<>();
	    prioQue.add(new Pair(src, 0.0));
	    
	    // while queue is not empty following the procedure remove,mark,print,add
	    
	    while (prioQue.size() > 0) {
	    	
	      // removing the topmost element and storing it in topEle
	      Pair topEle = prioQue.remove();
	      
	      //checking if vertex already visited
	      if (visited[topEle.vertex] == true) {
	        continue;
	      }
	      // marking true if  vertex not visited
	      visited[topEle.vertex] = true;
	      
	      //Printing the vertex and weight to reach that vertex
	      System.out.println("Vertex :" + " " +map.get(topEle.vertex) + " & " + "Weight so far :" + " " +String.format("%.2f", topEle.wsf));
	      
	      //adding all the unvisited neighbor of vertex in queue
	      for (Edge edge : graph[topEle.vertex]) {
	        if (visited[edge.nbr] == false) {
	          prioQue.add(new Pair(edge.nbr, topEle.wsf + edge.weight ));
	        }
	      }
	    }
	  }
}