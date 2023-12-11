import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:provider_project_1/Views/apiViews/get.dart';
import 'package:http/http.dart' as http;
import 'package:provider_project_1/models/postModel.dart';

class APIProvider extends ChangeNotifier {
  List<PostModel> postList = [];

  Future<List<PostModel>> getPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      // var data = response.body;
      var data = jsonDecode(response.body);
      // print("${data}");
      for (var i in data) {
        postList.add(PostModel.fromJson(i));
      }
    } else {
      print("api failed");
    }
    return postList;
  }
}
