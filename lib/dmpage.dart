import 'package:flutter/material.dart';
import 'package:sosmed_bypragata/main.dart';
import 'package:sosmed_bypragata/searchpage.dart';
import 'package:sosmed_bypragata/notifpage.dart';
import 'package:sosmed_bypragata/profilepage.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        title: Center( 
        child: Text('Direct Message',
        style: TextStyle(
        color: Colors.black,
        fontSize: 23,
        fontFamily: "Content",
        )
        )
        ),
        leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
          iconSize: 28,
          padding: new EdgeInsets.only(left: 10),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return MyApp();
          }));
          },
          );
        },
      ),
        actions: <Widget>[
        IconButton(
          iconSize: 28,
          padding: new EdgeInsets.only(right: 20),
          icon: Icon(
            Icons.create_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            // do something
          },
        ),
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
                        hintText: 'Search Message'
                      ),
                    ),
                    // trailing: Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ListTile(
                  minVerticalPadding: 20,
                  minLeadingWidth: 0,
                  leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/image1.jpeg'),
                      ),
                  // trailing: Icon(Icons.more_horiz),
                  title: Text('nidlaazurl'),
                  subtitle: Text(
                        'Hi my ex, this is azurl, how are ...',
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                  trailing: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          ),
          SizedBox(
            height: 100,
            child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ListTile(
                  minVerticalPadding: 20,
                  minLeadingWidth: 0,
                  leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/image1.jpeg'),
                      ),
                  // trailing: Icon(Icons.more_horiz),
                  title: Text('nidlaazurl'),
                  subtitle: Text(
                        'Hi my ex, this is azurl, how are ...',
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                  trailing: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          ),
          SizedBox(
            height: 100,
            child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ListTile(
                  minVerticalPadding: 20,
                  minLeadingWidth: 0,
                  leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/image1.jpeg'),
                      ),
                  // trailing: Icon(Icons.more_horiz),
                  title: Text('nidlaazurl'),
                  subtitle: Text(
                        'Hi my ex, this is azurl, how are ...',
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                  trailing: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          ),
          SizedBox(
            height: 100,
            child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ListTile(
                  minVerticalPadding: 20,
                  minLeadingWidth: 0,
                  leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/image1.jpeg'),
                      ),
                  // trailing: Icon(Icons.more_horiz),
                  title: Text('nidlaazurl'),
                  subtitle: Text(
                        'Hi my ex, this is azurl, how are ...',
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                  trailing: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          ),
          SizedBox(
            height: 100,
            child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ListTile(
                  minVerticalPadding: 20,
                  minLeadingWidth: 0,
                  leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/image1.jpeg'),
                      ),
                  // trailing: Icon(Icons.more_horiz),
                  title: Text('nidlaazurl'),
                  subtitle: Text(
                        'Hi my ex, this is azurl, how are ...',
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                  trailing: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          ),
          SizedBox(
            height: 100,
            child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ListTile(
                  minVerticalPadding: 20,
                  minLeadingWidth: 0,
                  leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/image1.jpeg'),
                      ),
                  // trailing: Icon(Icons.more_horiz),
                  title: Text('nidlaazurl'),
                  subtitle: Text(
                        'Hi my ex, this is azurl, how are ...',
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                  trailing: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          ),
          SizedBox(
            height: 100,
            child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), 
            borderSide: BorderSide(color: Colors.white)
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ListTile(
                  minVerticalPadding: 20,
                  minLeadingWidth: 0,
                  leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/image1.jpeg'),
                      ),
                  // trailing: Icon(Icons.more_horiz),
                  title: Text('nidlaazurl'),
                  subtitle: Text(
                        'Hi my ex, this is azurl, how are ...',
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                  trailing: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
      ),
    );
  }
}