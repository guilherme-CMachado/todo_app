import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_with_notifications/layout/todo_layoutcontroller.dart';
import 'package:todo_app_with_notifications/shared/componets/componets.dart';


class MyEventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoLayoutController>(
      init: Get.find<TodoLayoutController>(),
      builder: (todoController) => eventsBuilder(
        tasks: todoController.neweventList,
        context: context,
        message: "No Events yet",
        svgimage: "assets/new_task_svg.svg",
      ),
    );
  }
}
