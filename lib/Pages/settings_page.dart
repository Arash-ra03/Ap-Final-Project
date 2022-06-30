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
                Navigator.pushNamed(context, '/createcommunity');
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Specifications',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                const Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      'Email: f1@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),

                const Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      'Username: Zeitmaestro',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),

                const Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.lock,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      'Password: Reddit1401',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 5.0,
                ),

                const Text(
                  'Change Specifications',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                const SizedBox(
                  height: 5.0,
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: false,
                      fillColor: Colors.cyan[100],
                      hintText: 'Enter new email',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: false,
                      fillColor: Colors.cyan[100],
                      hintText: 'Enter new username',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: false,
                      fillColor: Colors.cyan[100],
                      hintText: 'Enter new password',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                  child: Text(
                    'Change',
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
              ],
            ),
          ),
        ),
      ),

    );
  }
}

class CreateCommunityPage extends StatefulWidget {
  const CreateCommunityPage({Key? key}) : super(key: key);

  @override
  State<CreateCommunityPage> createState() => _CreateCommunityPageState();
}

class _CreateCommunityPageState extends State<CreateCommunityPage> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Community'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),

        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: Colors.deepOrange,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mainpage');
                  },
                  child: Text(
                    'Create',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Write the name of the community',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                  prefixIcon: Icon(
                    Icons.title,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 12,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Add a Description to the community',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.description,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),
          ]),
        )
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