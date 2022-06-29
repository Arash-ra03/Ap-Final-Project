import 'package:ap_final_project/Pages/each_post.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
