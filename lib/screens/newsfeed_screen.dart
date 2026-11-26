import 'package:flutter/material.dart';
import 'package:macaspac_mobprog/constants.dart';
import 'package:macaspac_mobprog/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  Color? get appBackground => null;

  @override
  Widget build(BuildContext context) {
    // List of post data
    final List<Map<String, dynamic>> posts = [
      {
        'userName': 'Steve Rogers',
        'postContent': 'I can do this all day! #AvengersAssemble',
        'date': 'October 11, 2026',
        'numOfLikes': 100,
        'hasImage': false,
        'imagePath': null,
        'avatarPath': 'assets/images/steve.jpg',
      },
      {
        'userName': 'Tony Stark',
        'postContent': 'I am Iron Man.',
        'date': 'October 12, 2026',
        'numOfLikes': 3000,
        'hasImage': true,
        'imagePath': 'assets/images/iron_man.jpg',
        'avatarPath': 'assets/images/tony.jpg',
      },
      {
        'userName': 'Steve Rogers',
        'postContent': 'Avengers, assemble!',
        'date': 'October 15, 2026',
        'numOfLikes': 500,
        'hasImage': true,
        'imagePath': null,
        'avatarPath': 'assets/images/steve.jpg',
      },
    ];

    return Container(
      color: appBackground,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];

          return NewsfeedCard(
            userName: post['userName'],
            postContent: post['postContent'],
            date: post['date'],
            numOfLikes: post['numOfLikes'],
            hasImage: post['hasImage'],
            imagePath: post['imagePath'],
            avatarPath: post['avatarPath'],
          );
        },
      ),
    );
  }
}
