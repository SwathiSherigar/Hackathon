import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 79, 59, 51),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text("project title",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white)),
      ),
    );
  }
}
