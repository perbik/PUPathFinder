import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:pupathfinder/pages/home/sectionSearch.dart';
import 'sectionTitle.dart';
import 'pageAddIcon.dart';
import 'bookmark_icons_list.dart';  // Import the file that contains the icon list

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
    TextEditingController labelController = TextEditingController(text: bookmark['label']);
    String? selectedIconPath = bookmark['icon'];

    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.grey[300],
                    child: Placeholder(),
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,  // Set the height of the container to the screen height
              color: Colors.white,
            ),
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.grey,
                child: Text('Test'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bookmarks extends StatelessWidget {
  final List<Map<String, dynamic>> bookmarks;
  final Function(Map<String, dynamic>) onAdd;
  final Function(BuildContext, int) onEdit;

  const Bookmarks({super.key, required this.bookmarks, required this.onAdd, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // Align column to the start (left)
        children: [
          Row(
            children: [
              const Text(
                'Bookmarks',
                style: TextStyle(
                  fontFamily: 'SanomatGrab',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: 30,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(50, 20),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      fontFamily: 'SanomatGrab',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...bookmarks.map((bookmark) {
                  int index = bookmarks.indexOf(bookmark);
                  return Padding(
                    padding: const EdgeInsets.only(right: 20), // Add spacing between icons
                    child: Column(
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            onEdit(context, index);
                          },
                          icon: Image.asset(
                            bookmark['icon'],
                            width: 70,
                            height: 70,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 70,
                          child: Center(
                            child: Text(
                              bookmark['label'],
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color(0xFF545454),
                                fontFamily: 'SanomatGrab',
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                              maxLines: 1, // Ensure label is on a single line
                              textAlign: TextAlign.center, // Center-align text within the container
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                Column(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddIconPage(),
                          ),
                        );

                        if (result != null) {
                          onAdd(result);
                        }
                      },
                      icon: Image.asset(
                        'assets/icons/Add.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Add Place',
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontFamily: 'SanomatGrab',
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
