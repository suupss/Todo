import 'package:flutter/material.dart';
import 'package:todo_app/screens/add_and_update_todo.dart';
import 'package:todo_app/screens/todo_screens.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: const Text('Todo List',style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).colorScheme.primary,
        toolbarHeight: 50,
        bottom: const TabBar(
          labelStyle: TextStyle(fontSize: 17),
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 8,
          labelColor: Colors.white,

          tabs: [
          Text('All' ),
          Text('Complete'),
          Text('Incomplete')
        ]),
    

        
      ),
      body: const TabBarView(children: [
        TodoScreens(),
        Text('Complete'),
        Text('Incomplete'),
      ]),
      backgroundColor: Theme.of(context).colorScheme.secondary,

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> AddAndUpdateTodo()));
      }, backgroundColor: Theme.of(context).colorScheme.primary,
      child: const Icon(Icons.add),),
      ),
      
    );
  }
}