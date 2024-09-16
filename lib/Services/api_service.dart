import 'package:todo_app/Models/get_todos.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
class ApiService {
  Future<GetTodos> fetchData() async{
    try{
final response = await  http.get(Uri.parse('https://api.nstack.in/v1/todos'));
debugPrint(response.body);

if(response.statusCode == 200)
{
debugPrint(jsonDecode(response.body).toString());
  final data = jsonDecode(response.body);
  return GetTodos.fromJson(data);
}
else {
  throw 'No response from API';
}

    }
    catch(e)
    {
      debugPrint('Error: $e');
      throw'An exception occured $e';
    }

  }
}