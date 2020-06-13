import 'package:flutter/material.dart';
import 'ColorPalette.dart';
void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "News App",
        home: new Scaffold(
          backgroundColor: darkColor,
          appBar: AppBar(backgroundColor: darkGreyColor,
            title: const Text('News App'),
          ),
          drawer: Drawer(
            
            child: ListView(
              padding: EdgeInsets.zero,
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
          body: Stack(
            children: <Widget>[
              SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 Center(child: Text(' Breaking News')),
                  SizedBox(height: 40,),
                   Center(child: Text(' Article')),
                  SizedBox(height: 40,),
                   Center(child: Text(' Article')),
                  SizedBox(height: 40,),
                   Center(child: Text(' Article')),
                  SizedBox(height: 40,),
                   Center(child: Text(' Article')),
                  SizedBox(height: 40,),
                   Center(child: Text(' Article')),
                  SizedBox(height: 40,),
                   Center(child: Text(' Article')),
                  SizedBox(height: 40,),
                 

                  ],
              )),
              SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.15,
              maxChildSize: 0.9,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: darkGreyColor,
                    border: Border.all(color: greyColor),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  // color: Colors.grey[600],
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(title: Text('Item $index', style: TextStyle(color: Colors.white)));
                    },
                  ),
                );
              },
            ),
          ),
            ],
          ),
        ));
  }
}
