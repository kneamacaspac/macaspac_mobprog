import 'package:flutter/material.dart';
import 'package:macaspac_mobprog/constants.dart';
import 'package:macaspac_mobprog/widgets/notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  Color? get appBackground => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackground,
      child: ListView(
        children: [
          NotificationWidget(
            description: "Sample description to",
            post: "Sample Post",
            name: "Sample Name",
          ),
          const Divider(),

          NotificationWidget(
            description: "Sample description to",
            post: "Sample Post",
            name: "Sample Name",
          ),
          const Divider(),

          NotificationWidget(
            description: "Sample description to",
            post: "Sample Post",
            name: "Sample Name",
          ),
          const Divider(),

          NotificationWidget(
            description: "Sample description to",
            post: "Sample Post",
            name: "Sample Name",
          ),
          const Divider(),

          NotificationWidget(
            description: "Sample description to",
            post: "Sample Post",
            name: "Sample Name",
          ),
          const Divider(),

          NotificationWidget(
            description: "Sample description to",
            post: "Sample Post",
            name: "Sample Name",
          ),
          const Divider(),

          NotificationWidget(
            description: "Sample description to",
            post: "Sample Post",
            name: "Sample Name",
          ),
          const Divider(),

          NotificationWidget(
            description: "Sample description to",
            post: "Sample Post",
            name: "Sample Name",
          ),
          const Divider(),

          NotificationWidget(
            description: "Sample description to",
            post: "Sample Post",
            name: "Sample Name",
          ),
        ],
      ),
    );
  }
}
