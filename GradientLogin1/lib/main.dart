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
                    SizedBox(height: 20),
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
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[200]))),
                          child: TextField(
                              autofocus: true,
                              decoration: InputDecoration(
                                  hintText: "Email or username",
                                  border: InputBorder.none,
                                  hintStyle:
                                      TextStyle(color: Colors.grey[500]))),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[200]))),
                          child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  border: InputBorder.none,
                                  hintStyle:
                                      TextStyle(color: Colors.grey[500]))),
                        ),
                      ]),
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              // begin: Alignment.topCenter,
                              colors: [
                                Colors.orange[900],
                                Colors.orange[800],
                                Colors.orange[600]
                              ])),
                      child: Container(
                        width: 350,
                        child: FlatButton(
                            onPressed: () => {print("Sign in button pressed")},
                            child: Text("Sign In",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            height: 50,
                            child: FlatButton(
                              onPressed: () => {},
                              child: Text("Sign in with Facebook",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12)),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(40))),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                           child: FlatButton(
                              onPressed: () => {},
                              child: Text("Sign in with Github",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12)),
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ]),
                  ])),
            )),
          ]),
        ),
      ),
    );
  }
}
