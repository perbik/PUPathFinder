import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/facilities_list.dart';
import '../../model/facilities_model.dart';
import '../../model/bookmark_icons_list.dart';

class AddIconPage extends StatefulWidget {
  const AddIconPage({super.key});

  @override
  AddIconPageState createState() => AddIconPageState();
}

class AddIconPageState extends State<AddIconPage> {
  String? selectedIconPath;
  FacilitiesModel? selectedFacility;
  TextEditingController labelController = TextEditingController();

  void _selectIcon(String iconPath) {
    setState(() {
      selectedIconPath = iconPath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      appBar: AppBar(
        backgroundColor:
            const Color(0xFFfb5377), // Background color of the AppBar
        foregroundColor: Colors.white, // Color of the title and icons
        elevation: 0, // Remove shadow
        centerTitle: true, // Center the title
        titleSpacing: 0, // Adjust spacing for the title
        toolbarHeight: 80, // Adjust height of the AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
          padding: const EdgeInsets.only(
              left: 16.0), // Adjust the padding for the back button
        ),
        title: const Text(
          'Add Bookmark',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'SanomatGrab', // Adjust the title style
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select an Icon:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 4,
                children: iconPaths.map((iconPath) {
                  return GestureDetector(
                    onTap: () => _selectIcon(iconPath),
                    child: Opacity(
                      opacity: selectedIconPath == iconPath ? 1.0 : 0.4,
                      child: Image.asset(iconPath),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Select a Facility:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.fromLTRB(20, 5, 27, 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blueAccent, width: 2),
                ),
                child: DropdownButton<FacilitiesModel>(
                  hint: const Text("Select Facility"),
                  value: selectedFacility,
                  items: main_facilities_list.map((facility) {
                    return DropdownMenuItem(
                      value: facility,
                      child: Text(facility.facility_name!),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedFacility = value;
                    });
                  },
                  icon: const Icon(Icons.arrow_drop_down,
                      color: Colors.blueAccent),
                  dropdownColor: Colors.white.withOpacity(0.9),
                  style: const TextStyle(
                    fontFamily: 'SanomatGrab',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(20),
                  menuMaxHeight: 600,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: labelController,
                decoration: InputDecoration(
                  labelText: 'Label',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFFfb5377),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 60),
                ),
                onPressed: () {
                  if (selectedIconPath != null &&
                      selectedFacility != null &&
                      labelController.text.isNotEmpty) {
                    Navigator.pop(context, {
                      'icon': selectedIconPath,
                      'facility': selectedFacility,
                      'label': labelController.text,
                    });
                  }
                },
                child: const Text(
                  'Add Bookmark',
                  style: TextStyle(
                    fontFamily: 'SanomatGrab',
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
