import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'each_post.dart';

class CommunityDetail extends StatefulWidget {
  const CommunityDetail({Key? key}) : super(key: key);

  @override
  State<CommunityDetail> createState() => _CommunityDetailState();
}

class _CommunityDetailState extends State<CommunityDetail> {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(170),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://d10yn8o4stjvjq.cloudfront.net/wp-content/uploads/2022/06/f1-22-physics.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 43,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 40,
                    child: ClipRect(
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/F1.svg/2560px-F1.svg.png"),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Community Name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 7),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'About:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black26,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Text(
                    'This is f1 Community for f1 fans!!',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return MyPost(
                    child: _posts[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
