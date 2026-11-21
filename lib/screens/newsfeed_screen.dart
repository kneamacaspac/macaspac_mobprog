import 'package:flutter/material.dart';

import 'package:macaspac_mobprog/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Newsfeed'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0167F8),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: const [
          NewsfeedCard(
            userName: 'Steve Rogers',
            postContent: 'I can do this all day! #AvengersAssemble',
            date: '2 hours ago',
            numOfLikes: 10,
          ),
          NewsfeedCard(
            userName: 'Tony Stark',
            postContent:
                'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
            date: 'December 1, 2023',
            numOfLikes: 3000,
            hasImage: true,
          ),
        ],
      ),
    );
  }
}
