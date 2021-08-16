import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageTwo extends StatefulWidget {
  int counterFromPage1;
  PageTwo({this.counterFromPage1 = 1});
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "${widget.counterFromPage1}",
            style: TextStyle(fontSize: 60, color: Colors.green),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                color: Colors.red,
                child: Text("back to page 1"),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ],
      ),
    );
  }
}
