import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => InkWell(
        onTap: () {
          controller.counter++;
        },
        child: Center(
          child: Text("Counter :: ${controller.counter}"),
        ),
      ),
    ));
  }
}
