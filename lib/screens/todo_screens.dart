import 'package:flutter/material.dart';

class TodoScreens extends StatelessWidget {
  const TodoScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index)=> Card(
      child: Container(
      padding: const EdgeInsets.all(10),
      
        decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(14) 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [Text('Title', style: Theme.of(context).textTheme.titleLarge, ),const Spacer(),
            Container(
      width: 65,
height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.secondary
                
              ),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.delete_outline, color: Color.fromARGB(255, 214, 42, 29),)),
            )
      
         ]),
          Text('Description', style: Theme.of(context).textTheme.titleMedium,),
          
              Chip(label: const Text('Complete'), backgroundColor: Theme.of(context).colorScheme.primary,
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
    ), separatorBuilder: (context,i)=> const SizedBox(height: 15,), itemCount: 10);
  }
}