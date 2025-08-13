import 'package:flutter/material.dart';
import 'package:to_do/Widgets/List_card.dart';
import 'package:to_do/Widgets/top_card.dart';
import 'package:to_do/core/app_colors.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  bool isDarkMode = false;
  bool task1 = false;
  bool task2 = false;
  bool task3 = false;
  bool task4 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsManger.appBarColor,
          title: Column(
            children: [
              Text(
                'Hello, Marwa ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              child: Icon(
                isDarkMode ? Icons.light_mode : Icons.dark_mode,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(width: 17),
            Icon(Icons.notifications_none, color: Colors.white, size: 30),
            SizedBox(width: 17),
            Icon(Icons.list, color: Colors.white, size: 30),
            SizedBox(width: 17),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TopCard(
                      'Today',
                      '5',
                      Icons.notifications_on,
                      ColorsManger.appBarColor,
                    ),
                    SizedBox(width: 20),
                    TopCard(
                      'Project',
                      '1',
                      Icons.work_outline,
                      ColorsManger.appBarColor,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    TopCard(
                      'All',
                      '10',
                      Icons.check_outlined,
                      ColorsManger.appBarColor,
                    ),
                    SizedBox(width: 20),
                    TopCard(
                      'Overdue',
                      '3',
                      Icons.error_outline,
                      ColorsManger.appBarColor,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 20),
                  child: Text(
                    "Today's Tasks",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Listcard(
                  theDay: 'Today',
                  theTime: '9:00 AM',
                  listTitle: 'Morning Standup Meeting',
                  backgroundColor: Color.fromARGB(255, 191, 163, 247),
                  value: task1,
                  onChanged: (val) {
                    setState(() {
                      task1 = val ?? false;
                    });
                  },
                ),
                SizedBox(height: 20),
                Listcard(
                  theDay: 'Today',
                  theTime: '9:30 AM',
                  listTitle: 'Project Review Meeting',
                  backgroundColor: Color.fromARGB(255, 210, 186, 250),
                  value: task2,
                  onChanged: (val) {
                    setState(() {
                      task2 = val ?? false;
                    });
                  },
                ),
                SizedBox(height: 20),
                Listcard(
                  theDay: 'Today',
                  theTime: '10:00 AM',
                  listTitle: 'Client Feedback Session',
                  backgroundColor: Color.fromARGB(255, 222, 207, 248),
                  value: task3,
                  onChanged: (val) {
                    setState(() {
                      task3 = val ?? false;
                    });
                  },
                ),
                SizedBox(height: 20),
                Listcard(
                  theDay: 'Today',
                  theTime: '12:30 AM',
                  listTitle: 'Design Brainstorming',
                  backgroundColor: Color.fromARGB(255, 232, 221, 250),
                  value: task4,
                  onChanged: (val) {
                    setState(() {
                      task4 = val ?? false;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
