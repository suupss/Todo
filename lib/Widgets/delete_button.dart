import 'package:flutter/material.dart';
import 'package:todo_app/Services/api_service.dart';
import 'package:todo_app/screens/todo_list_screen.dart';
import 'package:todo_app/utils/snackbar.dart';

class DeleteButton extends StatefulWidget {
  final String id;
  const DeleteButton({super.key,required this.id});

  @override
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  void onDeleteButtonPress()
  {
ApiService().deleteTodo(widget.id).then((value){
Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=> TodoListScreen() )));
snackbar(context, 'Deleted successfully');
});



  }
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onDeleteButtonPress
                  
                  
                   
                    
                
                 
           
                 
                , icon: const Icon(Icons.delete_outline, color: Color.fromARGB(255, 214, 42, 29),));
  }
}