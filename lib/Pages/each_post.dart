import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  final String child;

  MyPost({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey[800],
            boxShadow: [
              BoxShadow(color: Colors.blueGrey, spreadRadius: 2),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'User Name',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,

                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 65,
                  ),
                  Text(
                    'Community Name',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_upward),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_downward),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.messenger_outline),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
