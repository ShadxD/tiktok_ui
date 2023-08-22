import 'package:flutter/material.dart';

import 'button.dart';

class PostTemplate extends StatelessWidget {
  const PostTemplate({
    super.key,
    required this.username,
    required this.videoDescription,
    required this.videoTags,
    required this.numberofLikes,
    required this.numberofComments,
    required this.numberofShares,
    this.userPost,
  });

  final String username;
  final String videoDescription;
  final String videoTags;
  final String numberofLikes;
  final String numberofComments;
  final String numberofShares;
  final userPost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //user post
          userPost,
          //user name and caption
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@$username',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: videoDescription),
                        TextSpan(
                            text: videoTags,
                            style: const TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //buttons
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: const Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    number: numberofLikes,
                    icon: Icons.favorite,
                  ),
                  MyButton(
                    number: numberofComments,
                    icon: Icons.chat_bubble_outlined,
                  ),
                  MyButton(
                    number: numberofShares,
                    icon: Icons.send,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
