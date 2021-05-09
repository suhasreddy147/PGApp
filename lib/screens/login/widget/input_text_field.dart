import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key, this.label, this.onChange, this.password= false,
  }) : super(key: key);

  final String label;
  final Function onChange;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      obscureText: password,
      cursorColor: Colors.white24,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white54),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            )
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            )
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white30,
              width: 0.5,
            )
          ),
        ),
    );
  }
}

