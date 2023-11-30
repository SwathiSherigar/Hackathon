import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/services.dart';
import 'package:hackathon/widgets/CardBox.dart';
import 'package:hackathon/widgets/Completed.dart';
import 'package:hackathon/widgets/OngoingContainer.dart';

import '../widgets/WorkflowContainer.dart';
import '../widgets/Todo.dart';
import '../widgets/customcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Dashboard"),
          backgroundColor: Color.fromARGB(255, 254, 100, 0)),
      backgroundColor: Color.fromARGB(255, 41, 34, 29),
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Expanded(
                child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Projects',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                CustomCard(),
                CustomCard(),
              ],
            )),
          ),
          const VerticalDivider(
            color: Colors.black,
            thickness: 0.2,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.78,
            child: ListView(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Project title',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Deadline: 12-12-2023',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Progress',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.63, // Set the desired width here
                    child: const LinearProgressIndicator(
                      // Other properties for the LinearProgressIndicator can be set here
                      backgroundColor: Colors.white,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(255, 254, 100, 0)),
                      value: 0.6, // Example value
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(
                      child: Row(
                        children: [
                          Icon(
                            color: Color.fromARGB(255, 254, 100, 0),
                            Icons.copy,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Copy Git Repo',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        _copyToClipboard("textToCopy");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Text copied to clipboard'),
                          ),
                        );
                      }),
                  TextButton(
                      child: Row(
                        children: [
                          Icon(
                            Icons.visibility,
                            color: Color.fromARGB(255, 254, 100, 0),
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Show Description',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          isOpen = !isOpen;
                        });
                      })
                ],
              ),
              SizedBox(
                height: 8.5,
              ),
              isOpen
                  ? card_box(
                      title: 'Description',
                      icon: Icons.description,
                    )
                  : Container(),
              isOpen
                  ? card_box(
                      title: 'Purpose',
                      icon: Icons.apartment,
                    )
                  : Container(),
              isOpen
                  ? SizedBox(
                      height: 6,
                    )
                  : Container(),
              const Divider(
                height: 0.5,
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  WorkflowContainer(),
                  Todo(),
                  OngoingContainer(),
                  CompletedContainer()
                ],
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        child: const Text(">"),
      ),
    );
  }

  void _copyToClipboard(String text) {
    FlutterClipboard.copy(text).then((value) => print('Text copied'));
  }
}
