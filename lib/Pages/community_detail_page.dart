import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityDetail extends StatelessWidget {
  const CommunityDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 45,
          backgroundColor: Colors.grey,
          child: CircleAvatar(
            radius: 40,
            child: ClipRect(
              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/F1.svg/2560px-F1.svg.png"),
            ),
            backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
