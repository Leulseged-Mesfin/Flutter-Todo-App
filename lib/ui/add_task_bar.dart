import 'package:flutter/material.dart';
import 'package:flutter_todo_app/services/theme_services.dart';
import 'package:flutter_todo_app/ui/theme.dart';
import 'package:flutter_todo_app/ui/widgets/input_field.dart';
import 'package:get/get.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add Task", style: headingStyle),
              MyInputField(title: "Title", hint: "Enter title here"),
              MyInputField(title: "Note", hint: "Enter note here"),
            ],
          ),
        ),
      )
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Get.back();
          // setState(() {});
        },
        child: Icon(
          Icons.arrow_back,
          size: 20,
          // color: Get.isDarkMode ? Colors.black : Colors.white,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: CircleAvatar(backgroundImage: AssetImage("images/Logo.jpg")),
        ),
      ],
    );
}
}