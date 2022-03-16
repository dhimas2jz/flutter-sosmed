import 'package:flutter/material.dart';
import 'package:sosmed_bypragata/dmpage.dart';
import 'package:sosmed_bypragata/searchpage.dart';
import 'package:sosmed_bypragata/notifpage.dart';
import 'package:sosmed_bypragata/profilepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        title: const Text('bypragata',
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
            Icons.mail_outline,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return MyApp2();
          }));
          },
        )
      ],
      ),

      body: SafeArea(
        child : ListView(
        children: <Widget>[
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.all(20),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
              child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.account_circle_outlined),
                  title: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'What`s happening today?'
                    ),
                  ),
                ),

                  const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Row(          
                  children: <Widget>[
                    IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15),
                    icon: Icon(
                      Icons.photo_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15),
                    icon: Icon(
                      Icons.photo_camera_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  IconButton(
                  iconSize: 25,
                  padding: new EdgeInsets.only(left: 15),
                  icon: Icon(
                    Icons.tune,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
                ]),

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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.more_horiz),
                  title: Text('nidlaazurl'),
                ),

                const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20, bottom: 20),
                  child: Text(
                    'Hi my ex, this is azurl, how are you? are you okay? I hope youre happy, but not like how you were with me',
                    style: const TextStyle(
                      height: 1.8,
                    ),
                  ),
                ),

                  const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Row(          
                  children: <Widget>[
                    IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15),
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15, top: 3.5),
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                ]),

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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.more_horiz),
                  title: Text('zaraaffvv'),
                ),

                const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Column(
                  children: [
                    Padding (
                      padding: EdgeInsets.all(20),
                    child : AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                        'assets/images/image1.jpeg',
                        fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                  ],
                ),

                  const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Row(          
                  children: <Widget>[
                    IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15),
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15, top: 3.5),
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                ]),

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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.more_horiz),
                  title: Text('brielblue'),
                ),

                const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20, bottom: 20),
                  child: Text(
                    'Im playing Fall Out Run, and ive killed 10 times, cool right?',
                    style: const TextStyle(
                      height: 1.8,
                    ),
                  ),
                ),

                  const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Row(          
                  children: <Widget>[
                    IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15),
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15, top: 3.5),
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                ]),
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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.more_horiz),
                  title: Text('mrmpotato'),
                ),

                const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20, bottom: 20),
                  child: Text(
                    "maybe im the worst, the worst youve ever had :'(",
                    style: const TextStyle(
                      height: 1.8,
                    ),
                  ),
                ),

                  const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Row(          
                  children: <Widget>[
                    IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15),
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15, top: 3.5),
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                ]),
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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.account_circle_outlined),
                  trailing: Icon(Icons.more_horiz),
                  title: Text('dmskiivdr'),
                ),

                const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Column(
                  children: [
                    Padding (
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
                    child : AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                        'assets/images/image1.jpeg',
                        fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Text(
                    "im waiting for my friend, drink americano, and read a book, ofc im alone bro...",
                    style: const TextStyle(
                      height: 1.8,
                    ),
                  ),
                ),

                  const Divider(
                  height: 1,
                  thickness: 1.2,
                  indent: 9,
                  endIndent: 9,
                ),

                Row(          
                  children: <Widget>[
                    IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15),
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  IconButton(
                    iconSize: 25,
                    padding: new EdgeInsets.only(left: 15, top: 3.5),
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                ]),
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
        // unselectedItemColor: Colors.grey,
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
        currentIndex: _selectedIndex, 
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,         
      ),
    );
  }
}