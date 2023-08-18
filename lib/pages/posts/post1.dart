import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Md Shad Fiasal',
      videoDescription: "Flutter Developer",
      videoTags: '\n#flutter_developer #frontend_developer',
      numberofLikes: '1.2M',
      numberofComments: '8446',
      numberofShares: '20K',
      userPost: Container(
        color: Colors.deepPurple[300],
      ),
    );
  }
}
