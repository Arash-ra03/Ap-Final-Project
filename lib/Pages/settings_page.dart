import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            ListTile(
              leading: Icon(Icons.person, color: Colors.orange,),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.group_add, color: Colors.orange),
              title: Text('Create Community'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.save, color: Colors.orange),
              title: Text('Saved Posts'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.orange),
              title: Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, '/aboutus');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.orange),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      )
    );
  }
}

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
    );
  }
}

class AboutUsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CircleAvatar (
              radius: 50.0,
              backgroundImage: AssetImage('images/reddit_icon.webp'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Flutter Project - Reddit',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Dr.Vahidi - Summer 1401',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.black,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'Arshia Paridari',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'Arash Reza Ali',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}