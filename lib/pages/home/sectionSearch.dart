import 'package:flutter/material.dart';
import '../../model/facilities_model.dart';
import '../../model/facilities_list.dart';
import '../map/map.dart';

class Destination extends StatefulWidget {
  const Destination({super.key});

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  List<FacilitiesModel> displayList = List.from(main_facilities_list);

  void updateList(String value) {
    setState(() {
      displayList = main_facilities_list
          .where((element) => element.facilityName
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          // color: Colors.brown,
          child: Material(
            elevation: 10,
            shadowColor: Colors.black38,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: TextField(
              onChanged: (value) => updateList(value),
              style: const TextStyle(
                fontFamily: 'SanomatGrab',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search Destination...",
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'SanomatGrab',
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/icons/Search.png',
                    color: const Color(0xFF676a65),
                    width: 24,
                    height: 24,
                  ),
                ),
                prefixIconConstraints: const BoxConstraints(minWidth: 70),
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          height: 285,
          //color: Colors.grey,
          child: ListView.builder(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            itemCount: displayList.length,
            itemBuilder: (context, index) {
              final facility = displayList[index];
              return Column(
                children: [
                  GestureDetector(
                    onTap: facility.isAvailable
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapPage(
                                  origin: "",
                                  destination:
                                      displayList[index].facilityName,
                                ),
                              ),
                            );
                          }
                        : null,
                    child: Opacity(
                      opacity: facility.isAvailable ? 1.0 : 0.4,
                      child: ListTile(
                        contentPadding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                        leading: Image.asset(
                          'assets/icons/LocationFill.png',
                          width: 35,
                          height: 35,
                        ),
                        title: Text(
                          displayList[index].facilityName,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontFamily: 'SanomatGrab',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          displayList[index].facilityDesc,
                          style: const TextStyle(
                            color: Color(0xFF545454),
                            fontSize: 13,
                            fontFamily: 'SanomatGrab',
                          ),
                        ),
                        trailing: Image.asset(
                          'assets/icons/ArrowRight.png',
                          width: 19,
                          height: 19,
                        ),
                      ),
                    ),
                  ),
                  if (index < displayList.length - 1)
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.black26,
                      indent: 5,
                      endIndent: 5,
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
