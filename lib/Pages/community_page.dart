import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunityPageSearch extends SearchDelegate {
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    assert(theme != null);
    return theme.copyWith(
      appBarTheme: AppBarTheme(
        brightness: colorScheme.brightness,
        backgroundColor: Colors.black,
        iconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
        textTheme: theme.textTheme,

      ),
      inputDecorationTheme: searchFieldDecorationTheme ??
          InputDecorationTheme(
            hintStyle: searchFieldStyle ?? theme.inputDecorationTheme.hintStyle,
            border: InputBorder.none,
          ),
    );
  }
  List<String> list = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in list) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(
            result,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          leading: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(
              "image.png",
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
          tileColor: Colors.black,
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in list) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(
            result,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          leading: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(
              "image.png",
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
          tileColor: Colors.black,
        );
      },
    );
  }

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

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<String> list = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CommunityPageSearch());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
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
