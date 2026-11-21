import 'package:flutter/material.dart';
import 'package:macaspac_mobprog/constants.dart';
import 'package:macaspac_mobprog/widgets/custom_text.dart';

class PostLikeButton extends StatefulWidget {
  final int initialLikes;

  const PostLikeButton({super.key, required this.initialLikes});

  @override
  State<PostLikeButton> createState() => _PostLikeButtonState();
}

class _PostLikeButtonState extends State<PostLikeButton> {
  late int likes;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    likes = widget.initialLikes;
  }

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
      likes += isLiked ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: toggleLike,
      icon: Icon(
        isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
        color: isLiked ? fbPrimary : fbDarkPrimary,
      ),
      label: CustomText(
        text: likes.toString(),
        fontSize: 12,
        color: fbDarkPrimary,
      ),
    );
  }
}
