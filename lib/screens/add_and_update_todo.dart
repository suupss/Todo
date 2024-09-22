import 'package:flutter/material.dart';
import 'package:todo_app/Models/get_todos.dart';
import 'package:todo_app/Services/api_service.dart';

class AddAndUpdateTodo extends StatefulWidget {
  const AddAndUpdateTodo({super.key});

  @override
  State<AddAndUpdateTodo> createState() => _AddAndUpdateTodoState();
}

class _AddAndUpdateTodoState extends State<AddAndUpdateTodo> {
    bool isOn = false;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  // final ApiService _apiService = ApiService();
  //  Future<GetTodos>? _future;
//  void onFloatingPress()
//  {
//   setState(() {
//     _future = _apiService.postTodo(titleController.text.toString(), descriptionController.text.toString(), isOn);
//   });

//  }



  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
          title: const Text('Add Todo'),
          centerTitle: true,
         
        ),
        body:  Center(
          child: SizedBox(
            height: 400,
            width: 350,
            child: Card(
            elevation: 8,
              child:  Column(
            children: [
               TextField(
                controller: titleController,
        decoration: const InputDecoration(
          labelText: 'Title',
          labelStyle: TextStyle(color:Color.fromARGB(255, 147, 145, 145) )
          
        ),
      
              ),
               TextField(
          controller: descriptionController,
          decoration: const InputDecoration(
          labelText: 'Description',
          labelStyle: TextStyle(color: Color.fromARGB(255, 147, 145, 145),),
      
        ),
        maxLines: null,
              ),
              Row(
                children: [
                  Text('Complete' , style: Theme.of(context).textTheme.titleMedium,), const Spacer(),  Switch(value: isOn , onChanged: (bool value)=>{ 
      setState(() {
        
        isOn = value;
      }
      ),
      },
      inactiveThumbColor: Theme.of(context).colorScheme.primary,)
                ],
              )
            ],

              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed:(){ ApiService().postTodo(titleController.text.toString(), descriptionController.text.toString(), isOn).then((value){
          Navigator.pop(context,true);
        });}
        ),
      ),
    );
  }
}