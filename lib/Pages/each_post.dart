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
        child: Container(height: 300,
          color: Colors.blue,
          child: Column(
            children: [
              Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'User Name',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}