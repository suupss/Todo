import 'package:flutter/material.dart';
import 'package:todo_app/Models/get_todos.dart';
import 'package:todo_app/Services/api_service.dart';
import 'package:todo_app/screens/add_and_update_todo.dart';
import 'package:todo_app/screens/todo_screens.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {

  List<Items> isCompleted = []; 
  List<Items> isIncomplete = [];
  GetTodos getTodos = GetTodos();
 late Future<GetTodos> fetchData;
 final ApiService _apiService = ApiService();
 bool isLoading = false;
  
  fetchDataTodo () async
  {
    isLoading = true;
await _apiService.fetchData().then((value)
{

setState(() {
  
});

getTodos = value;
for(var todo in value.items!)
{
  if(todo.isCompleted == true)
  {
isCompleted.add(todo);
  }
  else{
    isIncomplete.add(todo);
  }
  setState(() {});
}
isLoading = false;



}


).onError((error, stackTrace) {
  debugPrint(error.toString());
},);
  }



@override
  void initState() {
    fetchDataTodo();
   fetchData = _apiService.fetchData();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: const Text('Todo List',style: TextStyle(color: Colors.white),),

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
      body: isLoading? Center(child: const CircularProgressIndicator.adaptive())  : TabBarView(children: [
        TodoScreens(todoList: getTodos.items ?? [],),
       TodoScreens(todoList: isCompleted,),
       TodoScreens(todoList: isIncomplete,)
      ]),
      backgroundColor: Theme.of(context).colorScheme.secondary,

      floatingActionButton: FloatingActionButton(onPressed: () async{
       bool loading = await Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddAndUpdateTodo()));
if(loading == true){
  fetchDataTodo();
}
      }, backgroundColor: Theme.of(context).colorScheme.primary,
      child: const Icon(Icons.add),),
      ),
      
    );
  }
}