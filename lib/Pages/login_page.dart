import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 150.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'pacifico',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.orange,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.orange,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange[700]),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mainpage');
                  },
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text(
                    'Have no account? SignUp here',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
