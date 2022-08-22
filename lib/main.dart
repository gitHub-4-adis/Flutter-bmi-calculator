import 'package:flutter/material.dart';

import 'create_app.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Activity(),
    ),
  );
}

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {

  @override
  Widget build(BuildContext context) {
    return const CreateApp();
  }
}
