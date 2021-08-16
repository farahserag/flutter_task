import 'package:flutter/cupertino.dart';
import 'package:flutter_task001/models/users.dart';
import 'package:dio/dio.dart';

class UserServices {
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  String users = "users";

  Future<List<User>> getUsers() async {
    List<User> userslist = [];
    Response response = await Dio().get("$baseUrl$users");
    var data = response.data;

    data.forEach((element) {
      userslist.add(User.fromJson(element));
    });
    return userslist;
  }
}
