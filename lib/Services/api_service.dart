import 'package:todo_app/Models/get_todos.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
class ApiService {

  //get todos
  Future<GetTodos> fetchData() async{
    try{
final response = await  http.get(Uri.parse('https://api.nstack.in/v1/todos'));
print(response.body);


if(response.statusCode == 200)
{ 
  

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

  Future<GetTodos> postTodo( String title , String description, bool is_completed) async {
    try{
      final response = await http.post(Uri.parse('https://api.nstack.in/v1/todos'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode( {
  "title": title,
  "description": description,
  "is_completed": is_completed,
})
      );

      if(response.statusCode == 201)
      {
        final data = jsonDecode(response.body);
        print(data);
        return GetTodos.fromJson(data);
      }
      else{
        throw 'No value from API';
      }
    }
    catch(e)
    {
      throw 'An error occured';
    }
  }
 
}