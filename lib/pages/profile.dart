import 'package:flutter/material.dart';

import '../utils/profiletab_1.dart';
import '../utils/profiletab_2.dart';
import '../utils/profiletab_3.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Shad',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.person_add,
            color: Colors.black,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.menu, color: Colors.black),
            )
          ],
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //profile photo
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[200]),
              height: 120,
              width: 120,
            ),

            //username
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '@CreatedByShad',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),

            //number of following, followers, likes

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: const Column(
                      children: [
                        Text(
                          '37',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: const Column(
                      children: [
                        Text(
                          '25',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Column(
                      children: [
                        Text(
                          '169',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' Likes ',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //buttons-> edit profile, insta link, bookmark

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.grey[800],
                    ),
                  ),
                )
              ],
            ),

            //bio
            const SizedBox(
              height: 15,
            ),
            Text(
              "bio here",
              style: TextStyle(color: Colors.grey[700]),
            ),

            //default tab controller

            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_3x3,
                    color: Colors.black,
                  ),
                ),
                Tab(
                    icon: Icon(
                  Icons.favorite,
                  color: Colors.black,
                )),
                Tab(
                    icon: Icon(
                  Icons.lock_clock_rounded,
                  color: Colors.black,
                )),
              ],
            ),

            const Expanded(
                child: TabBarView(children: [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
            ]))
          ],
        ),
      ),
    );
  }
}
