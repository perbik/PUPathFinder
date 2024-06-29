import 'package:flutter/material.dart';
import 'package:pupathfinder/pages/home/pageAddIcon.dart';

class Bookmarks extends StatelessWidget {
  final List<Map<String, dynamic>> bookmarks;
  final Function(Map<String, dynamic>) onAdd;
  final Function(BuildContext, int) onEdit;

  const Bookmarks(
      {super.key,
      required this.bookmarks,
      required this.onAdd,
      required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align column to the start (left)
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
                    padding: const EdgeInsets.only(
                        right: 20), // Add spacing between icons
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
                              textAlign: TextAlign
                                  .center, // Center-align text within the container
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
                      // To go to another page
                      onPressed: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AddIconPage(), // Name of the page
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
