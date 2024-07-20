import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/post_model.dart';
import 'drawer.dart';

class home extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: ClipOval(
                child: Image.asset(
                  'assets/image/waqasimage.jpg',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Container(
          height: 35,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Search',
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: IconButton(
                icon: Icon(Icons.message_outlined),
                onPressed: () {
                  // Handle notification icon press
                },
              ),
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView.separated(
        itemCount: posts.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 2,
            color: Colors.grey[300],
          );
        },
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            elevation: 6.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: double.infinity,
              height: 520,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage(post.logoUrl),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post.userName,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 1),
                            Text(
                              post.userPosition,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              post.postedTime,
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 2),
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.more_vert, color: Colors.black),
                              onPressed: () {
                                showHalfScreenModal(context, post);
                              },
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.close, size: 25, color: Colors.black),
                        onPressed: () {
                          Get.back(); // Close the bottom sheet
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          post.textContent,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 7),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          child: Image.asset(
                            post.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.thumb_up_alt_outlined),
                                  onPressed: () {
                                    // Handle like button press
                                  },
                                ),
                                SizedBox(width: 2),
                                Text(
                                  '${post.likes}',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Text(
                              '${post.comments} comments . ${post.shares} reports',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Divider(
                          height: 2,
                          color: Colors.grey[400],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_alt_outlined),
                                    onPressed: () {
                                      // Handle like button press
                                    },
                                  ),
                                  Text(
                                    'Like',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.comment_outlined),
                                    onPressed: () {
                                      // Handle comments button press
                                    },
                                  ),
                                  Text(
                                    'Comments',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.share),
                                    onPressed: () {
                                      // Handle share button press
                                    },
                                  ),
                                  Text(
                                    'Share',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.bookmark_border),
                                    onPressed: () {
                                      // Handle save button press
                                    },
                                  ),
                                  Text(
                                    'Save',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showHalfScreenModal(BuildContext context, PostModel post) {
    // Implementation of showHalfScreenModal
  }
}
