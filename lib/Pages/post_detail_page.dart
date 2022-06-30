import 'package:ap_final_project/Pages/each_comment.dart';
import 'package:ap_final_project/Pages/each_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'each_post_detail.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({Key? key}) : super(key: key);

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  final List _comments = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.grey[900],

        ),
      ),
      body: Column(
        children: [
          MyPostDetail(child: "child"),
          Expanded(
            child: ListView.builder(
              itemCount: _comments.length,
              itemBuilder: (context, index) {
                return MyComment(
                  child: _comments[index],
                );
              },
            ),
          ),

        ]
      ),
      bottomSheet: Container(
        color: Colors.black87,
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
        child: TextField(
          style: TextStyle(color: Colors.grey),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            filled: true,
            fillColor: Colors.black26,
            hintText: 'Add a comment',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.black26,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.black26,
              ),
            ),
            prefixIcon: Icon(
              Icons.comment,
              color: Colors.white,
            ),
          ),
        ),
      ),

    );
  }
}
