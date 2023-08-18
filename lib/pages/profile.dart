import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //profile photo
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
            height: 120,
            width: 120,
          ),

          //username
          Text(
            '@CreatedByShad',
            style: TextStyle(color: Colors.black, fontSize: 20),
          )
          //number of following, followers, likes

          //buttons-> edit profile, insta link, bookmark

          //bio

          //default tab controller
        ],
      ),
    );
  }
}
