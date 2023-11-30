import 'package:flutter/material.dart';

import 'WorkFlowCard.dart';
import 'customcard.dart';

class WorkflowContainer extends StatefulWidget {
  const WorkflowContainer({super.key});

  @override
  State<WorkflowContainer> createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<WorkflowContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.195,
      height: MediaQuery.of(context).size.height * 0.50,
      child: Card(
          color: Color.fromARGB(255, 79, 59, 51),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(
                      color: Color.fromARGB(255, 254, 100, 0),
                      Icons.rebase_edit,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Workflow',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Expanded(
                child: ListView(
                  children: [
                    WorkflowCard(),
                    WorkflowCard(),
                    WorkflowCard(),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Text(
                        "Update",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
