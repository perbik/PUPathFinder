import java.util.*;

public class Main {
	
	  // making an edge class that stores the vertex and its neighbor along with the weight
	  public static class Edge {
	    int source;
	    int nbr;
	    int weight;
	 
	    Edge(int source, int nbr, int weight) {
	      this.source = source;
	      this.nbr = nbr;
	      this.weight = weight;
	    }
	  }
	  
	  //making a pair class
	 public static class Pair implements Comparable<Pair> {
	    int vertex;
	    int wsf; //weight so far
	 
	    Pair(int vertex, int wsf) {
	      this.vertex = vertex;
	      this.wsf = wsf;
	    }
	    // using CompareTo function so that priority queue arranges the element in terms of weight so far
	    public int compareTo(Pair other) {
	      return this.wsf - other.wsf;
	    }
	  }
	  
	  public static void main(String[] args) {
	    
	    // building the graph
		// the graph is an array of ArrayList (of Object,Edge)
		// length of array = the vertices present in graph.
		  
	    ArrayList<Edge> [] graph =  new ArrayList[20];
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
		map.put(22, "Gazebo");
		map.put(23, "Gazebo - Front");
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
	    graph[0].add(new Edge(1, 2, ));
		graph[0].add(new Edge(1, 3, ));

		// Ampitheater Entrance 1
	    graph[1].add(new Edge(2, 1, ));
		graph[1].add(new Edge(2, 3, ));
		graph[1].add(new Edge(2, 39, ));
		graph[1].add(new Edge(2, 41, ));

		// Ampitheater Entrance 2
	    graph[2].add(new Edge(3, 1, ));
		graph[2].add(new Edge(3, 2, ));
		graph[2].add(new Edge(3, 21, ));
		graph[2].add(new Edge(3, 36, ));

		// Campus Development and Maintenance Building
	    graph[3].add(new Edge(4, 14, ));
		graph[3].add(new Edge(4, 15, ));
		graph[3].add(new Edge(4, 70, ));

		// Canteen - Pathwalk L
		graph[4].add(new Edge(5, 43, ));
		graph[4].add(new Edge(5, 77, ));
		graph[4].add(new Edge(5, 93, ));

		// Canteen - Pathwalk R
	    graph[5].add(new Edge(6, 43, ));
		graph[5].add(new Edge(6, 77, ));
		graph[5].add(new Edge(6, 99, ));

		// Covered Walkway A
		graph[6].add(new Edge(7, 8, ));
	    graph[6].add(new Edge(7, 25, ));
		graph[6].add(new Edge(7, 62, ));
		graph[6].add(new Edge(7, 86, ));

		// Covered Walkway B
	    graph[7].add(new Edge(8, 7, ));
		graph[7].add(new Edge(8, 30, ));
		graph[7].add(new Edge(8, 87, ));

		// Covered Walkway C
	    graph[8].add(new Edge(9, 10, ));
		graph[8].add(new Edge(9, 61, ));
		graph[8].add(new Edge(9, 90, ));

		// Covered Walkway D
	    graph[9].add(new Edge(10, 9, ));
		graph[9].add(new Edge(10, 18, ));
		graph[9].add(new Edge(10, 26, ));
		graph[9].add(new Edge(10, 80, ));

		// Dome
	    graph[10].add(new Edge(11, 12, ));

		// Dome - Entrance
	    graph[11].add(new Edge(12, 11, ));
		graph[11].add(new Edge(12, 16,));
		graph[11].add(new Edge(12, 49,));
		graph[11].add(new Edge(12, 75,));
		graph[11].add(new Edge(12, 95,));
		graph[11].add(new Edge(12, 96,));

		// East Wing
	    graph[12].add(new Edge(13, 16,));
		graph[12].add(new Edge(13, 17,));

		// East Wing - Corner A
	    graph[13].add(new Edge(14, 4, ));
		graph[13].add(new Edge(14, 16, ));
		graph[13].add(new Edge(14, 17, ));

		// East Wing - Corner B
	    graph[14].add(new Edge(15, 4, ));
		graph[14].add(new Edge(15, 17, ));
		graph[14].add(new Edge(15, 31, ));
		graph[14].add(new Edge(15, 49, ));

		// East Wing - Stairs A
	    graph[15].add(new Edge(16, 12,));
		graph[15].add(new Edge(16, 13,));
		graph[15].add(new Edge(16, 14,));
		graph[15].add(new Edge(16, 49,));
		graph[15].add(new Edge(16, 75,));

		// East Wing - Stairs B
		graph[16].add(new Edge(17, 13,));
		graph[16].add(new Edge(17, 14,));
		graph[16].add(new Edge(17, 15,));

		// Engineering Science Research Center (ESRC) Building
		graph[17].add(new Edge(18, 10,));
		graph[17].add(new Edge(18, 26,));

		// Food Stalls A
		graph[18].add(new Edge(19, 36,));
		graph[18].add(new Edge(19, 40,));

		// Food Stalls B
		graph[19].add(new Edge(20, 21,));
		graph[19].add(new Edge(20,36,));
		graph[19].add(new Edge(20, 37,));
		
		// Food Stalls C
		graph[20].add(new Edge(21, 3,));
		graph[20].add(new Edge(21, 20,));
		graph[20].add(new Edge(21, 38,));

		// Gazebo
		graph[21].add(new Edge(22, 23,));

		// Gazebo - Front
		graph[22].add(new Edge(23, 22,));
		graph[22].add(new Edge(23, 62,));
		graph[22].add(new Edge(23, 66,));

		// Grandstand
		graph[23].add(new Edge(24, 88,));
		graph[23].add(new Edge(24, 89,));

		// Guard House
		graph[24].add(new Edge(25, 7,));

		// Gymnasium - Entrance
		graph[25].add(new Edge(26, 10,));
		graph[25].add(new Edge(26, 18,));
		graph[25].add(new Edge(26, 27,));

		// Gymnasium and Sports Center
		graph[26].add(new Edge(27, 26,));

		// Interfaith Chapel
		graph[27].add(new Edge(28, 29,));
		graph[27].add(new Edge(28, 30,));
		graph[27].add(new Edge(28, 31,));
		graph[27].add(new Edge(28, 32,));

		// Interfaith Chapel - East Entrance
		graph[28].add(new Edge(29, 28,));
		graph[28].add(new Edge(29, 31,));
		graph[28].add(new Edge(29, 88,));

		// Interfaith Chapel - North Entrance
		graph[29].add(new Edge(30, 8,));
		graph[29].add(new Edge(30, 28,));
		graph[29].add(new Edge(30, 32,));

		// Interfaith Chapel - South Entrance
		graph[30].add(new Edge(31, 15,));
		graph[30].add(new Edge(31, 28,));
		graph[30].add(new Edge(31, 29,));
		graph[30].add(new Edge(31, 32,));
		graph[30].add(new Edge(31, 60,));

		// Interfaith Chapel - West Entrance
		graph[31].add(new Edge(32, 28,));
		graph[31].add(new Edge(32, 30,));
		graph[31].add(new Edge(32, 31,));
		graph[31].add(new Edge(32, 49,));

		// Laboratory High School
		graph[32].add(new Edge(33, 52,));
		graph[32].add(new Edge(33, 73,));
		
		// Laboratory High School - Backside A
		graph[33].add(new Edge(34, 35,));
		graph[33].add(new Edge(34, 65,));
		graph[33].add(new Edge(34, 73,));

		// Laboratory High School - Backside B
		graph[34].add(new Edge(35, 34,));
		graph[34].add(new Edge(35, 44,));
		graph[34].add(new Edge(35, 64,));
		graph[34].add(new Edge(35, 65,));

		// Lagoon
		graph[35].add(new Edge(36, 3,));
		graph[35].add(new Edge(36, 19,));
		graph[35].add(new Edge(36, 20,));
		graph[35].add(new Edge(36, 37,));
		graph[35].add(new Edge(36, 39,));

		// Lagoon - Entrance A
		graph[36].add(new Edge(37, 20,));
		graph[36].add(new Edge(37, 36,));
		graph[36].add(new Edge(37, 68,));

		// Lagoon - Entrance B
		graph[37].add(new Edge(38, 21,));
		graph[37].add(new Edge(38, 41,));
		graph[37].add(new Edge(38, 48,));
		graph[37].add(new Edge(38, 54,));
		graph[37].add(new Edge(38, 77,));

		// Lagoon Sidewalk - E
		graph[38].add(new Edge(39, 2,));
		graph[38].add(new Edge(39, 36,));
		graph[38].add(new Edge(39, 40,));
		
		// Lagoon Sidewalk - N
		graph[39].add(new Edge(40, 19,));
		graph[39].add(new Edge(40, 39,));
		graph[39].add(new Edge(40, 42,));

		// Lagoon Sidewalk - S
		graph[40].add(new Edge(41, 2,));
		graph[40].add(new Edge(41, 38,));
		graph[40].add(new Edge(41, 54,));

		// Lagoon Sidewalk - W
		graph[41].add(new Edge(42, 40,));
		graph[41].add(new Edge(42, 58,));

		// Linear Park - Dining and Meeting Area
		graph[42].add(new Edge(43, 5,));
		graph[42].add(new Edge(43, 6,));
		graph[42].add(new Edge(43, 45,));
		graph[42].add(new Edge(43, 76,));

		// Linear Park Sidewalk - LHS
		graph[43].add(new Edge(44, 35,));
		graph[43].add(new Edge(44, 45,));
		graph[43].add(new Edge(44, 64,));

		// Linear Park Sidewalk - SC
		graph[44].add(new Edge(45, 43,));
		graph[44].add(new Edge(45, 44,));
		graph[44].add(new Edge(45, 46,));
		
		// Linear Park Sidewalk - SW
		graph[45].add(new Edge(46, 45,));
		graph[45].add(new Edge(46, 70,));
		graph[45].add(new Edge(46, 94,));

		// Mabini Monument PUP Obelisk
		graph[46].add(new Edge(47, 66,));
		graph[46].add(new Edge(47, 67,));
		graph[46].add(new Edge(47, 68,));
		graph[46].add(new Edge(47, 69,));

		// Main Building - Entrance A
		graph[47].add(new Edge(48, 38,));
		graph[47].add(new Edge(48, 77,));
		graph[47].add(new Edge(48, 96,));

		// Main Building - Entrance B
		graph[48].add(new Edge(49, 12,));
		graph[48].add(new Edge(49, 15,));
		graph[48].add(new Edge(49, 16,));
		graph[48].add(new Edge(49, 32,));

		// Ninoy Aquino Library - Driveway A
		graph[49].add(new Edge(50, 51,));
		graph[49].add(new Edge(50, 52,));
		graph[49].add(new Edge(50, 57,));
		graph[49].add(new Edge(50, 99,));

		// Ninoy Aquino Library - Entrance
		graph[50].add(new Edge(51, 50,));
		graph[50].add(new Edge(51, 53,));
		graph[50].add(new Edge(51, 73,));
		
		// Ninoy Aquino Library - Parking Area
		graph[51].add(new Edge(52, 33,));
		graph[51].add(new Edge(52, 50,));
		graph[51].add(new Edge(52, 73,));

		// Ninoy Aquino Library and Learning Resources Center
		graph[52].add(new Edge(53, 51,));

		// Non-Food Stalls - Lagoon Entrance
		graph[53].add(new Edge(54, 38,));
		graph[53].add(new Edge(54, 41,));
		graph[53].add(new Edge(54, 56,));
		graph[53].add(new Edge(54, 57,));
		graph[53].add(new Edge(54, 58,));
		graph[53].add(new Edge(54, 99,));

		// Track and Field Oval - Southwest
		
		graph[54].add(new Edge(55, 84,));
		graph[54].add(new Edge(55, 85,));
		graph[54].add(new Edge(55, 87,));
		graph[54].add(new Edge(55, 89,));
		graph[54].add(new Edge(55, 100,));

		// Non-Food Stalls Building
		graph[55].add(new Edge(56, 54,));
		graph[55].add(new Edge(56, 57,));
		graph[55].add(new Edge(56, 58,));

		// Non-Food Stalls Building - Front Entrance
		graph[56].add(new Edge(57, 50,));
		graph[56].add(new Edge(57, 54,));
		graph[56].add(new Edge(57, 56,));

		// Non-Food Stalls Building - Rear Entrance
		graph[57].add(new Edge(58, 42,));
		graph[57].add(new Edge(58, 54,));
		graph[57].add(new Edge(58, 56,));

		// North Parking Area
		graph[58].add(new Edge(59, 63,));
		graph[58].add(new Edge(59, 67,));
		graph[58].add(new Edge(59, 69,));
		graph[58].add(new Edge(59, 78,));
		graph[58].add(new Edge(59, 79,));
		graph[58].add(new Edge(59, 81,));

		// Nutrition and Food Science Building
		graph[59].add(new Edge(60, 31,));

		// Pedestrian Lane A
		graph[60].add(new Edge(61, 9,));
		graph[60].add(new Edge(61, 62,));
		graph[60].add(new Edge(61, 83,));

		// Pedestrian Lane B
		graph[61].add(new Edge(62, 7,));
		graph[61].add(new Edge(62, 23,));
		graph[61].add(new Edge(62, 61,));

		// Physical Education Building
		graph[62].add(new Edge(63, 59,));

		// Printing Press Building
		graph[63].add(new Edge(64, 35,));
		graph[63].add(new Edge(64, 44,));
		graph[63].add(new Edge(64, 65,));

		// Property and Supply Building
		graph[64].add(new Edge(65, 34,));
		graph[64].add(new Edge(65, 35,));
		graph[64].add(new Edge(65, 64,));

		// PUP Obelisk - East Driveway
		graph[65].add(new Edge(66, 23,));
		graph[65].add(new Edge(66, 47,));
		graph[65].add(new Edge(66, 67,));
		graph[65].add(new Edge(66, 68,));
		
		// PUP Obelisk - North Driveway
		graph[66].add(new Edge(67, 47,));
		graph[66].add(new Edge(67, 59,));
		graph[66].add(new Edge(67, 66,));
		graph[66].add(new Edge(67, 69,));
		graph[66].add(new Edge(67, 83,));

		// PUP Obelisk - South Driveway
		graph[67].add(new Edge(68, 37,));
		graph[67].add(new Edge(68, 47,));
		graph[67].add(new Edge(68, 66,));
		graph[67].add(new Edge(68, 69,));

		// PUP Obelisk - West Driveway
		graph[68].add(new Edge(69, 47,));
		graph[68].add(new Edge(69, 59,));
		graph[68].add(new Edge(69, 67,));
		graph[68].add(new Edge(69, 68,));
		
		// PUP Sta Mesa Ferry Station
		graph[69].add(new Edge(70, 4,));
		graph[69].add(new Edge(70, 46,));

		// PUP Tahanan ng Atleta
		graph[70].add(new Edge(71, 84,));

		// Pylon
		graph[71].add(new Edge(72, 90,));

		// R.C. Overhead Water Tank
		graph[72].add(new Edge(73, 33,));
		graph[72].add(new Edge(73, 34,));
		graph[72].add(new Edge(73, 51,));
		graph[72].add(new Edge(73, 52,));

		// South Wing
		graph[73].add(new Edge(74, 75,));

		// South Wing - Entrance
		graph[74].add(new Edge(75, 12,));
		graph[74].add(new Edge(75, 16,));
		graph[74].add(new Edge(75, 74,));
		graph[74].add(new Edge(75, 95,));
		graph[74].add(new Edge(75, 96,));
		

		// Student Canteen
		graph[75].add(new Edge(76, 43,));
		graph[75].add(new Edge(76, 77,));

		// Student Canteen - Front
		graph[76].add(new Edge(77, 5,));
		graph[76].add(new Edge(77, 6,));
		graph[76].add(new Edge(77, 38,));
		graph[76].add(new Edge(77, 48,));
		graph[76].add(new Edge(77, 76,));
		graph[76].add(new Edge(77, 93,));
		

		// Swimming Pool
		graph[77].add(new Edge(78, 59,));

		// Swimming Pool - Pathwalk A
		graph[78].add(new Edge(79, 59,));
		graph[78].add(new Edge(79, 80,));

		// Swimming Pool - Pathwalk B
		graph[79].add(new Edge(80, 10,));
		graph[79].add(new Edge(80, 79,));
		
		// Tahanan ng Alumni 
		graph[80].add(new Edge(81, 59,));

		// Tennis Court
		graph[81].add(new Edge(82, 83,));

		// Tennis Court - Entrance
		graph[82].add(new Edge(83, 61,));
		graph[82].add(new Edge(83, 67,));
		graph[82].add(new Edge(83, 82,));

		// Track and Field Oval - East
		graph[83].add(new Edge(84, 55,));
		graph[83].add(new Edge(84, 71,));
		graph[83].add(new Edge(84, 85,));
		graph[83].add(new Edge(84, 87,));

		// Track and Field Oval - North
		graph[84].add(new Edge(85, 55,));
		graph[84].add(new Edge(85, 84,));
		graph[84].add(new Edge(85, 86,));
		graph[84].add(new Edge(85, 89,));

		// Track and Field Oval - North Entrance
		graph[85].add(new Edge(86, 7,));
		graph[85].add(new Edge(86, 85,));
		
		// Track and Field Oval - South 
		graph[86].add(new Edge(87, 55,));
		graph[86].add(new Edge(87, 84,));
		graph[86].add(new Edge(87, 100,));

		// Track and Field Oval - South Entrance
		graph[87].add(new Edge(88, 8,));
		graph[87].add(new Edge(88, 24,));
		graph[87].add(new Edge(88, 29,));
		graph[87].add(new Edge(88, 100,));

		// Track and Field Oval - West
		graph[88].add(new Edge(89, 24,));
		graph[88].add(new Edge(89, 55,));
		graph[88].add(new Edge(89, 85,));
		graph[88].add(new Edge(89, 100,));

		// VIC - Front
		graph[89].add(new Edge(90, 9,));
		graph[89].add(new Edge(90, 72,));
		graph[89].add(new Edge(90, 91,));

		// Visitors Information Center
		graph[90].add(new Edge(91, 90,));

		// West Wing
		graph[91].add(new Edge(92, 96,));
		graph[91].add(new Edge(92, 97,));

		// West Wing - Corner A
		graph[92].add(new Edge(93, 5,));
		graph[92].add(new Edge(93, 77,));
		graph[92].add(new Edge(93, 96,));
		graph[92].add(new Edge(93, 97,));

		// West Wing - Corner B
		graph[93].add(new Edge(94, 46,));
		graph[93].add(new Edge(94, 95,));
		graph[93].add(new Edge(94, 97,));

		// West Wing - Corner C
		graph[94].add(new Edge(95, 12,));
		graph[94].add(new Edge(95, 75,));
		graph[94].add(new Edge(95, 94,));
		graph[94].add(new Edge(95, 96,));

		// West Wing - Stairs A
		graph[95].add(new Edge(96, 12,));
		graph[95].add(new Edge(96, 48,));
		graph[95].add(new Edge(96, 75,));
		graph[95].add(new Edge(96, 92,));
		graph[95].add(new Edge(96, 93,));
		graph[95].add(new Edge(96, 95,));
		
		// West Wing - Stairs B
		graph[96].add(new Edge(97, 92,));
		graph[96].add(new Edge(97, 93,));
		graph[96].add(new Edge(97, 94,));

		// Charlie Del Rosario Hall
		graph[97].add(new Edge(98, 99,));

		// Charlie Del Rosario Hall - Entrance
		graph[98].add(new Edge(99, 6,));
		graph[98].add(new Edge(99, 50,));
		graph[98].add(new Edge(99, 54,));
		graph[98].add(new Edge(99, 98,));

		// Track and Field Oval - Southwest
		graph[99].add(new Edge(100, 55,));
		graph[99].add(new Edge(100, 87,));
		graph[99].add(new Edge(100, 88,));
		graph[99].add(new Edge(100, 89,));
	    
	    //taking Pylon as source node
	    int src = 72;
	    
	    //creating a visited boolean array
	    boolean[] visited = new boolean[graph.length];
	    
	    //Initialising a priority Queue of object Pair
	    PriorityQueue< Pair> prioQue = new PriorityQueue<>();
	    prioQue.add(new Pair(src, 0));
	    
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
	      System.out.println("Vertex :" + " " +map.get(topEle.vertex) + " & " + "Weight so far :" + " " +topEle.wsf);
	      
	      //adding all the unvisited neighbor of vertex in queue
	      for (Edge edge : graph[topEle.vertex]) {
	        if (visited[edge.nbr] == false) {
	          prioQue.add(new Pair(edge.nbr, topEle.wsf + edge.weight ));
	        }
	      }
	    }
	  }
}