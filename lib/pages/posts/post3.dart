import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Sahil K26',
      videoDescription: "React Developer",
      videoTags: '\n#React_developer #frontend_developer #backend_developer',
      numberofLikes: '1M',
      numberofComments: '10357',
      numberofShares: '12K',
      userPost: Container(
        color: Colors.blue[300],
      ),
    );
  }
}
