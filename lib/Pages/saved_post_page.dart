import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'each_post.dart';

class SavedPost extends StatelessWidget {
  const SavedPost({Key? key}) : super(key: key);
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
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
