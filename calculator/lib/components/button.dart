import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(190, 100, 0, 1);
  static const BOLD = TextStyle(fontWeight: FontWeight.bold);
  final String text;
  final bool big;
  final Color color;
  final TextStyle styleType;
  final void Function(String) cb;

  Button({
    @required this.text,
    this.big = false,
    this.color = DEFAULT,
    this.styleType = BOLD,
    @required this.cb,
  });
  Button.big({
    @required this.text,
    this.big = true,
    this.color = DEFAULT,
    this.styleType = BOLD,
    @required this.cb,
  });
  Button.operation({
    @required this.text,
    this.big = false,
    this.color = OPERATION,
    this.styleType = BOLD,
    @required this.cb,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Padding(
        padding: EdgeInsets.all(1.0),
        child: RaisedButton(
          color: this.color,
          child: Text(text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w200,
              )),
          onPressed: () => cb(text),
        ),
      ),
    );
  }
}
