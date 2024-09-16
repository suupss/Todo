import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/switch_button.dart';

class AddAndUpdateTodo extends StatelessWidget {
  const AddAndUpdateTodo({super.key});

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
              const TextField(
        decoration: InputDecoration(
          labelText: 'Title',
          labelStyle: TextStyle(color:Color.fromARGB(255, 147, 145, 145) )
          
        ),
      
              ),
             const  TextField(
                
                      decoration: InputDecoration(
          labelText: 'Description',
          labelStyle: TextStyle(color: Color.fromARGB(255, 147, 145, 145),),
      
        ),
        maxLines: null,
              ),
              Row(
                children: [
                  Text('Complete' , style: Theme.of(context).textTheme.titleMedium,), const Spacer(), const SwitchButton()
                ],
              )
            ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}