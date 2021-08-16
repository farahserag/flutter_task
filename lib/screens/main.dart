import 'package:flutter/material.dart';
import 'package:flutter_task001/screens/page2.dart';
import 'package:flutter_task001/screens/userScreen.dart';
import 'package:flutter_task001/utlis.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: UserScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void printincremntValue() {
    _counter++;
    print(_counter);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.only(top: 20),
        children: [
          Container(
            height: 60,
            width: 60,
            child: Image.asset('assets/flutter.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Phone number',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: MaterialButton(
                color: Colors.red,
                child: Text("Login in"),
                onPressed: () {
                  pushPage(
                      context,
                      PageTwo(
                        counterFromPage1: _counter,
                      ));
                }),
          ),
          Center(
              child: Text(
            "$_counter",
            style: TextStyle(fontSize: 60, color: Colors.green),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
