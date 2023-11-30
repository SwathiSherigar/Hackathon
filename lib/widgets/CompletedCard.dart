import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/model.dart';

class CompletedCard extends StatelessWidget {
  const CompletedCard({super.key, required this.title, required this.index});
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoModel>(builder: (context, todoModel, _) {
      return Card(
        color: Colors.grey[800],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  maxLines: 2,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
              IconButton(
                
                icon: Icon(Icons.delete),
                onPressed: () {
                  todoModel.removeTodo(index);
                },
              )
            ],
          ),
        ),
      );
    });
  }
}
