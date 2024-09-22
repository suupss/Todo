import 'package:flutter/material.dart';
import 'package:todo_app/Models/get_todos.dart';


class TodoScreens extends StatelessWidget {
 final List<Items> todoList;

  const TodoScreens({super.key, required this.todoList}); 

  @override
  Widget build(BuildContext context) {
    
 return ListView.separated(
        shrinkWrap: true,
      itemCount: todoList.length,
      
      itemBuilder: (context,index){
         final data = todoList[index];
        
         return Card(
        
      child: Container(
      padding: const EdgeInsets.all(10),
      
        decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(14) 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [Text(data.title.toString(), style: Theme.of(context).textTheme.titleLarge, ),const Spacer(),
            Container(
      width: 65,
    height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.secondary
                
              ),
              child: IconButton(onPressed: (){
               
              }, icon: const Icon(Icons.delete_outline, color: Color.fromARGB(255, 214, 42, 29),)),
            )
      
         ]),
          Text(data.description.toString(), style: Theme.of(context).textTheme.titleMedium,),
          
              Chip(label: data.isCompleted == true ? const Text('Complete') : const Text('Incomplete') ,backgroundColor: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.all(5),
              side: const BorderSide(
                color: Colors.transparent
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25),
                )
    
              ),
              ),
          
          ],
          
        ),
      ),
    );},
     separatorBuilder: (context,i){
      
       return const SizedBox(height: 15);
      
      });
    
      }
}