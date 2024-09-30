import 'package:flutter/material.dart';
import 'package:todo_app/Models/get_todos.dart';
import 'package:todo_app/Services/api_service.dart';
import 'package:todo_app/Widgets/delete_button.dart';
import 'package:todo_app/screens/add_and_update_todo.dart';


class TodoScreens extends StatelessWidget {
 final List<Items> todoList;

  const TodoScreens({super.key, required this.todoList}); 

  @override
  Widget build(BuildContext context) {
 
//     void onButtonPress(id, data ) async
//     {
    
// await ApiService().deleteTodo(id).then((value) {
//   widget.todoList.remove(data);
//   setState(() {});

// },);


// setState(() {});
    
// }
    
 return todoList.isEmpty? const Center(child: Text('Press + to add TODO', style: TextStyle(color: Colors.grey),)) :
  ListView.separated(
        shrinkWrap: true,
      itemCount: todoList.length,
      
      itemBuilder: (context,index){
         final data = todoList[index];
        
         return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return  AddAndUpdateTodo(item: data,);
            }));
          },
           child: Padding(
            padding: EdgeInsets.only(right: 10,left: 10),
             child: Card(
              
                     
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
                  child: DeleteButton(id: data.sId ?? '' ,)
                ),
                   
             ]),
              Text(data.description.toString(), style: Theme.of(context).textTheme.titleMedium,),
              
                  Chip(label: data.isCompleted == true ? const Text('Complete') : const Text('Incomplete') ,backgroundColor: data.isCompleted == true? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
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
                 ),
           ),
         );},
     separatorBuilder: (context,i){
      
       return const SizedBox(height: 3);
      
      });
    
      }
}