import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Pavan Suthar',
      videoDescription: "React Developer",
      videoTags: '\n#react_developer #frontend_developer #backend_developer',
      numberofLikes: '500K',
      numberofComments: '3545',
      numberofShares: '5473',
      userPost: Container(
        color: Colors.pink[300],
      ),
    );
  }
}
