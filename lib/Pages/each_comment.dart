import 'package:flutter/material.dart';

class MyComment extends StatelessWidget {
  final String child;

  MyComment({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
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
                      child: ClipRect(
                        child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/F1.svg/2560px-F1.svg.png"),
                      ),
                      backgroundColor: Colors.black26,
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

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: Text(
                    'Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic ',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_upward,
                        color: Colors.grey,
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_downward,
                        color: Colors.grey,
                      ),
                      onTap: () {},
                    ),

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
