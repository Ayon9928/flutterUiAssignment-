import 'package:assignment_1/Card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  var data = [
    [
      "Task One",
      "Your Personal task management and planning solution for planning your day, week & months",
      DateFormat('h:mm a d MMM, yyyy').format(DateTime.now())
    ],
    [
      "Task Two",
      "Your Personal task management and planning solution for planning your day, week & months",
      DateFormat('h:mm a d MMM, yyyy').format(DateTime.now())
    ],
    [
      "Task Three",
      "Your Personal task management and planning solution for planning your day, week & months",
      DateFormat('h:mm a d MMM, yyyy').format(DateTime.now())
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Board"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return CustomeCard(
              tittle: data[index][0],
              description: data[index][1],
              date: data[index][2],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(56, 56, 56, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
