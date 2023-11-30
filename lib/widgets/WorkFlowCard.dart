import 'package:flutter/material.dart';

class WorkflowCard extends StatefulWidget {
  const WorkflowCard({super.key});

  @override
  State<WorkflowCard> createState() => _WorkflowCardState();
}

class _WorkflowCardState extends State<WorkflowCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("project title project \ntitle project title",
                maxLines: 2,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 254, 100, 0),
                )),
            Checkbox(
              value: true,
              onChanged: (bool? val) {},
              fillColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 254, 100, 0)),
            )
          ],
        ),
      ),
    );
  }
}
