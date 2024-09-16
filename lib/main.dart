import 'package:flutter/material.dart';
import 'package:todo_app/screens/todo_list_screen.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 122, 18, 141),
  primary: Colors.indigo[200],
  secondary:const Color.fromARGB(255, 218, 221, 240)
 ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    titleMedium: TextStyle(fontSize: 16, )
  ),
  appBarTheme: AppBarTheme(
    
    color: Colors.indigo[200],
    toolbarHeight: 60,
    foregroundColor: Colors.white
    
  )

  
  

),
home: TodoListScreen(),
    );
  }
}