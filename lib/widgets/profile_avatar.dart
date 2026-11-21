import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String? imagePath;
  final double radius;
  final VoidCallback? onTap;

  const ProfileAvatar({
    super.key,
    this.imagePath,
    this.radius = 20,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.grey[300],
        backgroundImage: imagePath != null ? AssetImage(imagePath!) : null,
        child: imagePath == null
            ? const Icon(Icons.person, color: Colors.white)
            : null,
      ),
    );
  }
}
