import 'package:calc/controller/home_controller.dart';
import 'package:calc/widgets/display_widget.dart';
import 'package:calc/widgets/keyboard_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _homeController = HomeController();

  void addValue(String value) {
    _homeController.addInput(value);
    setState(() {});
  }

  void clear() {
    _homeController.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: DisplayWidget(input: _homeController.input, output: _homeController.output)),
            KeyboardWidget(
              onPressed0: () {
                addValue("0");
              },
              onPressed1: () {
                addValue("1");
              },
              onPressed2: () {
                addValue("2");
              },
              onPressed3: () {
                addValue("3");
              },
              onPressed4: () {
                addValue("4");
              },
              onPressed5: () {
                addValue("5");
              },
              onPressed6: () {
                addValue("6");
              },
              onPressed7: () {
                addValue("7");
              },
              onPressed8: () {
                addValue("8");
              },
              onPressed9: () {
                addValue("9");
              },
              onPressedClear: () {
                clear();
              },
              onPressedParentheses: () {
                //addValue("0");
              },
              onPressedPercent: () {
                //addValue("0");
              },
              onPressedDivision: () {
                addValue("/");
              },
              onPressedMutiplication: () {
                addValue("X");
              },
              onPressedSubtraction: () {
                addValue("-");
              },
              onPressedAddition: () {
                addValue("+");
              },
              onPressedEqual: () {
                //addValue("");
              },
              onPressedComma: () {
                addValue(",");
              },
            ),
          ],
        ),
      ),
    );
  }
}
