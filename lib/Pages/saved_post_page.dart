import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'each_post.dart';

class SavedPost extends StatefulWidget {
  const SavedPost({Key? key}) : super(key: key);

  @override
  State<SavedPost> createState() => _SavedPostState();
}

class _SavedPostState extends State<SavedPost> {
  final List _posts = [
    'post 1',
    'post 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Posts'),
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[800],
      body: ListView.builder(
          itemCount: _posts.length,
          itemBuilder: (context, index){
            return MyPost(
              child: _posts[index],
            );
          }),
    );
  }
}
