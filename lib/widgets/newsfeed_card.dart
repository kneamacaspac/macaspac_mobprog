import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:macaspac_new_mobprog/constants.dart';
import 'package:macaspac_mobprog/widgets/custom_text.dart';
import 'package:macaspac_mobprog/widgets/post_image.dart';
import 'package:macaspac_mobprog/widgets/profile_avatar.dart';
import 'package:macaspac_mobprog/widgets/post_like_button.dart';
import 'package:macaspac_mobprog/widgets/post_action_button.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;
  final String? imagePath;
  final String? avatarPath;
  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
    this.imagePath,
    this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileAvatar(imagePath: avatarPath, radius: 20),
                SizedBox(width: screenUtilWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            // post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            if (hasImage == true && imagePath != null)
              PostImage(imagePath: imagePath!),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PostLikeButton(initialLikes: numOfLikes ?? 0),

                PostActionButton(
                  icon: Icons.comment_outlined,
                  label: 'Comment',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Comment button pressed!')),
                    );
                  },
                ),

                PostActionButton(
                  icon: Icons.share_outlined,
                  label: 'Share',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Share button pressed!')),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Container(
                  padding: EdgeInsets.fromLTRB(
                    ScreenUtil().setWidth(10),
                    0,
                    0,
                    0,
                  ),
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(330),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setSp(10)),
                    ),
                  ),
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
