import 'package:flutter/material.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 57, 0, 0),
      // color: Colors.grey,
      width: 250,
      height: 60,
      child: const Stack (
        children: [
          Positioned(
            child: Text(
              'PUPathFinder',
              style: TextStyle(
                fontFamily: 'SanomatGrab',
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 41,
            child: Text(
              'Get there quick with Dijkstra\'s logic!',
              style: TextStyle(
                fontFamily: 'SanomatGrab',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}