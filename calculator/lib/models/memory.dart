class Memory {
  static const operations = const ['%', '/', 'x', '-', '+', '='];
  String _value = '0';
  //final _buffer = [0.0, 0.0];
  //int _bufferIndex = 0;
  String operation;

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else if (operations.contains(command)) {
      _setOperation(command);
    } else {
      _addDigit(command);
    }
  }

  _setOperation(String newOperation) {}

  _addDigit(String digit) {
    _value += digit;
  }

  _allClear() {
    _value = '0';
  }

  String get value {
    return _value;
  }
}
