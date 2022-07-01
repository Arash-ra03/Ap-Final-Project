import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: const Text('Settings'),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[900],
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              ListTile(
                tileColor: Colors.black26,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.black26,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: Icon(Icons.group_add, color: Colors.orange),
                title: Text(
                  'Create Community',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/createcommunity');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.black26,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: Icon(Icons.save, color: Colors.orange),
                title: Text(
                  'Saved Posts',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/savepost');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.black26,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: Icon(Icons.info_outline, color: Colors.orange),
                title: Text(
                  'About Us',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/aboutus');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.black26,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: Icon(Icons.exit_to_app, color: Colors.orange),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ));
  }
}

class ProfilePage extends StatefulWidget {
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10.0,
                ),
                const Card(
                  color: Colors.black26,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
                  child: ListTile(

                    leading: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    title: Text(
                      ' f1@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                const Card(
                  color: Colors.black26,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
                  child: ListTile(

                    leading: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    title: Text(
                      ' Zeitmaestro',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                const Card(
                  color: Colors.black26,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
                  child: ListTile(

                    leading: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    title: Text(
                      ' Reddit1401',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),

                const SizedBox(
                  height: 5.0,
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
                      hintText: 'Enter new email',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
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
                      hintText: 'Enter new username',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    obscureText: _isHidden,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      hintText: 'Enter new password',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isHidden
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            _isHidden = !_isHidden;
                          });
                        },
                      ),
                    ),
                  ),
                  /*
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(

                      filled: true,
                      fillColor: Colors.black26,
                      hintText: 'Enter new password',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  */
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey[900]),
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
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.grey[800],
        body: SafeArea(
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mainpage');
                  },
                  child: Text(
                    'Create',
                    style: TextStyle(
                      color: Colors.black,
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
                  color: Colors.white,
                ),
                decoration: InputDecoration(

                  hintText: 'Add a Title',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Colors.black26,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                        width: 2,
                      )
                  ),
                  prefixIcon: Icon(
                    Icons.title,
                    color: Colors.white,
                  ),
                ),
              ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 8,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: 'Add a Description',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,

                  ),
                  fillColor: Colors.black26,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.description,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text('About Us'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[900],
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            CircleAvatar(
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
                color: Colors.grey,
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
                color: Colors.white,
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
              color: Colors.black26,
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
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.black26,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'Arash Rezaali',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
