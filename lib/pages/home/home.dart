import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pupathfinder/pages/home/pageBookmarks.dart';
import 'package:pupathfinder/pages/home/sectionSearch.dart';
import '../map/map.dart';
import 'sectionTitle.dart';
import '../../model/bookmark_icons_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> bookmarks = [];

  void _addBookmark(Map<String, dynamic> newBookmark) {
    setState(() {
      bookmarks.add(newBookmark);
    });
  }

  void _updateBookmark(int index, Map<String, dynamic> updatedBookmark) {
    setState(() {
      bookmarks[index] = updatedBookmark;
    });
  }

  void _deleteBookmark(int index) {
    setState(() {
      bookmarks.removeAt(index);
    });
  }

  void _showBookmarkDetails(BuildContext context, int index) {
    final bookmark = bookmarks[index];
    TextEditingController labelController =
        TextEditingController(text: bookmark['label']);
    String? selectedIconPath = bookmark['icon'];

    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    bookmark['facility'].facility_name!,
                    style: const TextStyle(
                      fontFamily: 'SanomatGrab',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},                 // ...
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.grey[300],
                      child: Image.asset(
                        bookmark['facility'].imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    controller: labelController,
                    decoration: const InputDecoration(
                      labelText: 'Label',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    crossAxisCount: 4,
                    children: iconPaths.map((iconPath) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIconPath = iconPath;
                          });
                        },
                        child: Opacity(
                          opacity: selectedIconPath == iconPath ? 1.0 : 0.4,
                          child: Image.asset(iconPath),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                            _deleteBookmark(index);
                          },
                          label: const Text(
                            'Delete',
                            style: TextStyle(
                              fontFamily: 'SanomatGrab',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFFfb5377),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFFfb5377),
                              width: 1.5,
                            ),
                            minimumSize: const Size(double.infinity, 55),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                            _updateBookmark(index, {
                              'icon': selectedIconPath,
                              'facility': bookmark['facility'],
                              'label': labelController.text,
                            });
                          },
                          label: const Text(
                            'Save',
                            style: TextStyle(
                              fontFamily: 'SanomatGrab',
                              fontSize: 16,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFfb5377),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 55),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/img/Banner.png',
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: AppTitle(),
                    ),
                    const SizedBox(height: 23),
                    const Destination(),
                    const SizedBox(height: 35),
                    Bookmarks(
                      bookmarks: bookmarks,
                      onAdd: _addBookmark,
                      onEdit: _showBookmarkDetails,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFFfb5377),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 65),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MapPage(
                              destination: '',
                              origin: '',
                            )),
                  );
                },
                child: const Text(
                  'Choose from map',
                  style: TextStyle(
                    fontFamily: 'SanomatGrab',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
