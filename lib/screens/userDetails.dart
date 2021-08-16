import 'package:flutter/material.dart';
import 'package:flutter_task001/models/users.dart';
import 'package:flutter_task001/screens/widget/Card.dart';
import 'package:flutter_task001/utlis.dart';

class UserDetails extends StatefulWidget {
  User user;
  UserDetails(this.user);
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          MyCard(
            content: "${widget.user.name}",
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
              onTap: () {
                launchURL("mailto:${widget.user.email}");
              },
              child: Text("Email: ${widget.user.email}")),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                launchURL("tel:${widget.user.phone}");
              },
              child: Text(
                "phone: ${widget.user.phone}",
              )),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                launchURL("https://${widget.user.website}");
              },
              child: Text("web: ${widget.user.website}"))
        ],
      ),
    );
  }
}
