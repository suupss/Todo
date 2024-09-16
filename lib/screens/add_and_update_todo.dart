import 'package:flutter/material.dart';

class AddAndUpdateTodo extends StatelessWidget {
  const AddAndUpdateTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: const Text('Add Todo'),
        centerTitle: true,
       
      ),
      body: const Center(
        child: SizedBox(
          height: 400,
          width: 350,
          child: Card(
          elevation: 8,
            child:  Column(
          children: [
            TextField(
      

            ),
            TextField()
          ],
            ),
          ),
        ),
      ),
    );
  }
}