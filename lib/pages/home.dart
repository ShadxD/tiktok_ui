import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/posts/post1.dart';
import 'package:tiktok_ui/pages/posts/post2.dart';
import 'package:tiktok_ui/pages/posts/post3.dart';

class UserHomePage extends StatelessWidget {
  UserHomePage({super.key});
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        // ignore: prefer_const_constructors
        children: const [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
