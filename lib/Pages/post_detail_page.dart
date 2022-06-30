import 'package:ap_final_project/Pages/each_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({Key? key}) : super(key: key);

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
          MyPost(child: "child"),
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
