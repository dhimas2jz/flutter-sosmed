import 'package:flutter/material.dart';
import 'package:sosmed_bypragata/main.dart';
// import 'package:sosmed_bypragata/dmpage.dart';
import 'package:sosmed_bypragata/notifpage.dart';
import 'package:sosmed_bypragata/profilepage.dart';

void main() {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bypragata',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'bypragata'),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/first': (context) => MyApp(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => MyApp3(),
        '/third': (context) => MyApp4(),
        '/fourth': (context) => MyApp5(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
      int _selectedIndex = 0;
      void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/first');
          break;
          case 1:
            Navigator.pushNamed(context, '/second');
          break;
          case 2:
            Navigator.pushNamed(context, '/third');
          break;
          case 3:
            Navigator.pushNamed(context, '/fourth');
          break;
        }
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        titleSpacing: 20,
        title: const Text('Search',
        style: TextStyle(
        color: Colors.black,
        fontSize: 23,
        fontFamily: "Content",
        )
        ),
        actions: <Widget>[
        IconButton(
          iconSize: 28,
          padding: new EdgeInsets.only(right: 20),
          icon: Icon(
            Icons.tune,
            color: Colors.black,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
      ),

      body: SafeArea(
        child : ListView(
        children: <Widget>[
          SizedBox(
            height: 88,
            child: Card(
              elevation: 5,
              shadowColor: Colors.black,
              margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
              shape:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), 
              borderSide: BorderSide(color: Colors.white)
              ),
              child: Column(
                children: <Widget>[
                  const ListTile(
                    minVerticalPadding: 0,
                    minLeadingWidth: 0,
                    leading: Icon(Icons.search,),
                    title: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search Account, Post, etc'
                      ),
                    ),
                    // trailing: Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  minLeadingWidth: 0,
                  leading: Text(
                        'Search History',
                        style: const TextStyle(
                          height: 1.5,
                          color: Colors.grey,
                        ),
                      ),
                  trailing: Icon(Icons.more_horiz),
                ),

                const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 7, left: 17, right: 17),
                  child: Text(
                    'Very Funny Cat',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 17, right: 17),
                  child: Text(
                    '#facetofacechallenge',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 17, right: 17),
                  child: Text(
                    '@xxxibglion',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 17, right: 17),
                  child: Text(
                    '@tothebone',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 17, right: 17, bottom: 19),
                  child: Text(
                    '#playlistforyou',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  minLeadingWidth: 0,
                  leading: Text(
                        'Hashtag Trending',
                        style: const TextStyle(
                          height: 1.5,
                          color: Colors.grey,
                        ),
                      ),
                  trailing: Icon(Icons.more_horiz),
                ),

                const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 7, left: 17, right: 17),
                  child: Text(
                    '#facetofacechallenge',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 17, right: 17),
                  child: Text(
                    '#playlistforyou',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 17, right: 17),
                  child: Text(
                    '#foryourinformation',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 17, right: 17),
                  child: Text(
                    '#catvscucumber',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 17, right: 17, bottom: 19),
                  child: Text(
                    '#bedmannewmovie',
                    style: const TextStyle(
                      height: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedIconTheme: IconThemeData(
        color: Colors.black,
        ),
        iconSize: 28,
        elevation: 12,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'notif',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'account',
          ),
        ],
        currentIndex: _selectedIndex, //New
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,         //New
      ),
    );
  }
}