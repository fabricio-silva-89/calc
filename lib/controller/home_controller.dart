import 'package:flutter/cupertino.dart';

class HomeController {
  TextEditingController expression = TextEditingController();
  TextEditingController inOut = TextEditingController();

  bool isClearInOut = false;
  bool _firstAssignment = true;
  String lastButtonClick = "";
  String _lastSymbol = "";
  double _value1 = 0;
  double _value2 = 0;
  double _result = 0;

  void clear() {
    _value1 = 0;
    _value2 = 0;
    _result = 0;
    _firstAssignment = true;
    clearInOut();
    _clearExpression();
  }

  void clearInOut() {
    inOut.text = "";
  }

  void _clearExpression() {
    expression.text = "";
  }

  void addValue(String value) {
    if (_isNumber(value)) {
      inOut.text = inOut.text + value;

      if (_lastSymbol == "=") {
        _value1 = 0;
        _value2 = 0;
        _result = 0;
        _firstAssignment = true;
      }
    } else {
      isClearInOut = true;

      if (_firstAssignment) {
        _value1 = inOut.text == "" ? _result : double.tryParse(inOut.text)!;
        _firstAssignment = false;
      } else {
        _value2 = inOut.text == "" ? 0 : double.tryParse(inOut.text)!;
        _result = _calculate(value1: _value1, value2: _value2, operation: value);
        _value1 = _result;
        inOut.text = _result.toString();

        if (value == "=") {
          _firstAssignment = true;
          isClearInOut = false;
        }
      }

      _lastSymbol = value;
    }
  }

  bool _isNumber(String value) {
    return value.contains(RegExp(r'[0-9]'));
  }

  double _calculate({
    required double value1,
    required double value2,
    required String operation,
  }) {
    if (operation == "+") {
      return _add(value1: value1, value2: value2);
    } else if (operation == "-") {
      return _sub(value1: value1, value2: value2);
    } else if (operation == "X") {
      return _mult(value1: value1, value2: value2);
    } else if (operation == "/") {
      return _div(value1: value1, value2: value2);
    } else if (operation == "=") {
      if (_lastSymbol == "+") {
        return _add(value1: value1, value2: value2);
      } else if (_lastSymbol == "-") {
        return _sub(value1: value1, value2: value2);
      } else if (_lastSymbol == "X") {
        return _mult(value1: value1, value2: value2);
      } else if (_lastSymbol == "/") {
        return _div(value1: value1, value2: value2);
      } else {
        return 0;
      }
    } else {
      return 0;
    }
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
