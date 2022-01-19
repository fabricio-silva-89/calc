import 'package:calc/controller/home_controller.dart';
import 'package:calc/widgets/display_widget.dart';
import 'package:calc/widgets/keyboard_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = HomeController();

  // void _addValue(String value) {
  //   if (_homeController.isClearInOut) {
  //     _homeController.clearInOut();
  //     _homeController.isClearInOut = false;
  //     setState(() {});
  //   }

  //   _homeController.addValue(value);
  //   _homeController.lastButtonClick = value;
  //   setState(() {});
  // }

  // void _clear() {
  //   _homeController.clear();
  //   setState(() {});
  // }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: DisplayWidget(
                inOut: homeController.inOut,
              ),
            ),
            KeyboardWidget(
              onPressed0: () {
                homeController.number('0');
                setState(() {});
              },
              onPressed1: () {
                homeController.number('1');
                setState(() {});
              },
              onPressed2: () {
                homeController.number('2');
                setState(() {});
              },
              onPressed3: () {
                homeController.number('3');
                setState(() {});
              },
              onPressed4: () {
                homeController.number('4');
                setState(() {});
              },
              onPressed5: () {
                homeController.number('5');
                setState(() {});
              },
              onPressed6: () {
                homeController.number('6');
                setState(() {});
              },
              onPressed7: () {
                homeController.number('7');
                setState(() {});
              },
              onPressed8: () {
                homeController.number('8');
                setState(() {});
              },
              onPressed9: () {
                homeController.number('9');
                setState(() {});
              },
              onPressedClear: () {
                homeController.clear();
                setState(() {});
              },
              onPressedParentheses: () {},
              onPressedPercent: () {
                homeController.percentual();
                setState(() {});
              },
              onPressedDivision: () {
                homeController.operator('/');
                setState(() {});
              },
              onPressedMutiplication: () {
                homeController.operator('*');
                setState(() {});
              },
              onPressedSubtraction: () {
                homeController.operator('-');
                setState(() {});
              },
              onPressedAddition: () {
                homeController.operator('+');
                setState(() {});
              },
              onPressedEqual: () {
                homeController.operator('=');
                setState(() {});
              },
              onPressedComma: () {
                homeController.decimal();
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
