import 'package:flutter/material.dart';
import 'package:macaspac_mobprog/constants.dart';
import 'package:macaspac_mobprog/widgets/custom_text.dart';

class PostActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const PostActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: fbDarkPrimary),
      label: CustomText(text: label, fontSize: 12, color: fbDarkPrimary),
    );
  }
}
