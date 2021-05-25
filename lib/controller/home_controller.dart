class HomeController {
  String output = "";
  String input = "";
  double _value1 = 0;
  double _value2 = 0;
  double _result = 0;

  void clear() {
    output = "";
    input = "";
  }

  void addInput(String value) {
    if (value == "/" || value == "X" || value == "-" || value == "+") {
      input = input + " " + value + " ";
    } else {
      input = input + value;
    }
  }

  void _calculate({
    required double value1,
    required double value2,
    required String operation,
  }) {
    if (operation == "+") _add(value1: value1, value2: value2);
  }

  double _add({required double value1, required double value2}) {
    return value1 + value2;
  }

  double _sub({required double value1, required double value2}) {
    return value1 - value2;
  }

  double _mult({required double value1, required double value2}) {
    return value1 * value2;
  }

  double _div({required double value1, required double value2}) {
    return value1 / value2;
  }
}
