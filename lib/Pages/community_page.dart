import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  "image.png",
                ),
              ),
              tileColor: Colors.black,
              title: Text('Title'),
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, '/');
              },

            );
          },
        ),
      ),
    );
  }
}
