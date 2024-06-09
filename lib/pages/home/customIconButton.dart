import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onPressed;

  const CustomIconButton({
    super.key,
    required this.imagePath,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 65.0, // Adjust the size as needed
            height: 65.0, // Adjust the size as needed
          ),
          const SizedBox(
            height: 4.0,
          ), // Adjust the spacing as needed
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'SanomatGrab',
              fontSize: 14.0
            ), // Adjust the text size as needed
          ),
        ],
      ),
    );
  }
}