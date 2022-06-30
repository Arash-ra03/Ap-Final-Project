import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunityPageSearch extends SearchDelegate {
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);

    return theme.copyWith(
      backgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey,
        iconTheme: theme.primaryIconTheme.copyWith(color: Colors.white),
      ),
      inputDecorationTheme: searchFieldDecorationTheme ??
          InputDecorationTheme(
            fillColor: Colors.grey,
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
    bool getBool(int num) {
      if (num % 2 == 0) {
        return true;
      }
      return false;
    }

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
            Navigator.pushNamed(context, '/communitydetail');
          },
          leading: CircleAvatar(
            radius: 15,
            child: ClipRect(
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/F1.svg/2560px-F1.svg.png"),
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
          tileColor: getBool(index) ? Colors.black87 : Colors.black,
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    bool getBool(int num) {
      if (num % 2 == 0) {
        return true;
      }
      return false;
    }

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
            Navigator.pushNamed(context, '/communitydetail');
          },
          leading: CircleAvatar(
            radius: 15,
            child: ClipRect(
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/F1.svg/2560px-F1.svg.png"),
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
          tileColor: getBool(index) ? Colors.black87 : Colors.black,
        );
      },
    );
  }

/*@override
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
  }*/
}

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<String> list = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  bool getBool(int num) {
    if (num % 2 == 0) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Community'),
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
                Navigator.pushNamed(context, '/communitydetail');
              },
              leading: CircleAvatar(
                radius: 15,
                child: ClipRect(
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/F1.svg/2560px-F1.svg.png"),
                ),
              ),
              tileColor: getBool(index) ? Colors.black54 : Colors.black,
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
