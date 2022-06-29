import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
List<String> list=['1','2','3','4','5','6','7','8','9','10'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  "image.png",
                ),
              ),
              tileColor: Colors.black,
              title: Text(
                '${list[index]}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Colors.white,
              trailing: GestureDetector(
                child: Icon(
                  Icons.star_border_outlined,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
