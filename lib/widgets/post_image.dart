import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String imagePath;

  const PostImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
