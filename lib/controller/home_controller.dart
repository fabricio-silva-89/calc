import 'package:flutter/cupertino.dart';

class HomeController {
  TextEditingController expression = TextEditingController();
  TextEditingController inOut = TextEditingController();

  String _value1 = '0';
  String _value2 = '0';
  String? _result;
  String? _operator;

  void refresh() {
    if (_result == null) {
      inOut.text = _value1 +
          (_operator != null ? ' ' + _operator! : '') +
          (_value2 != '0' ? ' ' + _value2 : '');
    } else {
      inOut.text = _result!;
    }
  }

  void clear() {
    _value1 = '0';
    _value2 = '0';
    _result = null;
    _operator = null;

    refresh();
  }

  void percentual() {
    if (_value2 != '0' && !_value2.contains('.')) {
      _value2 = _calcPercent(_value2);
    } else if (_value1 != '0' && !_value1.contains('.')) {
      _value1 = _calcPercent(_value1);
    }

    refresh();
  }

  void decimal() {
    if (_value2 != '0' && !_value2.contains('.')) {
      _value2 = _value2 + '.';
    } else if (_value1 != '0' && !_value1.contains('.')) {
      _value1 = _value1 + '.';
    }

    refresh();
  }

  void operator(String key) {
    if (_value1 == '0') {
      return;
    }

    if (key == '=') {
      return _calculate();
    }
    if (_result != null) {
      _condense();
    }

    _operator = key;

    refresh();
  }

  void number(String key) {
    if (_operator == null) {
      _value1 = (_value1 == '0') ? key : _value1 + key;
    } else {
      _value2 = (_value2 == '0') ? key : _value2 + key;
    }

    refresh();
  }

  void _calculate() {
    if (_operator == null || _value2 == '0') {
      return;
    }

    String str = '';

    if (_operator == '/') {
      str = (double.parse(_value1) / double.parse(_value2)).toString();
    } else if (_operator == '*') {
      str = (double.parse(_value1) * double.parse(_value2)).toString();
    } else if (_operator == '-') {
      str = (double.parse(_value1) - double.parse(_value2)).toString();
    } else if (_operator == '+') {
      str = (double.parse(_value1) + double.parse(_value2)).toString();
    }

    while ((str.contains('.') && str.endsWith('0')) || str.endsWith('.')) {
      str = str.substring(0, str.length - 1);
    }

    _result = str;

    refresh();
  }

  void _condense() {
    _value1 = _result!;
    _value2 = '0';
    _result = null;
    _operator = null;
  }

  String _calcPercent(String value) {
    return (double.parse(value) / 100).toString();
  }
}
