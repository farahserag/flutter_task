import 'package:flutter/material.dart';
import 'package:flutter_task001/models/users.dart';
import 'package:flutter_task001/screens/userDetails.dart';
import 'package:flutter_task001/screens/widget/Card.dart';
import 'package:flutter_task001/services/userServices.dart';
import 'package:flutter_task001/utlis.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool loading = true;

  List<User> users = [];
  getUserlist() async {
    users = await UserServices().getUsers();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserlist();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Users Screen'))),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        pushPage(context, UserDetails(users[index]));
                      },
                      child: MyCard(
                        content: "${users[index].name}",
                      ),
                    ));
              },
            ),
    );
  }
}
