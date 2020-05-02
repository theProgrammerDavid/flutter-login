import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatelessWidget {
  final double borderRadiusValue = 40;
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orange[900],
            Colors.orange[800],
            Colors.orange[600]
          ])),
          child: Column(children: <Widget>[
            SizedBox(height: 80),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Login",
                          style: TextStyle(color: Colors.white, fontSize: 50)),
                      SizedBox(height: 10),
                      Text("Welcome Back",
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ])),
            SizedBox(height: 20),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(borderRadiusValue),
                      topRight: Radius.circular(borderRadiusValue))),
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(children: <Widget>[
                    SizedBox(height:20),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                          child: Column(children: <Widget>[
                            Container()
                          ]),
                    ),
                  ])),
            )),
          ]),
        ),
      ),
    );
  }
}
