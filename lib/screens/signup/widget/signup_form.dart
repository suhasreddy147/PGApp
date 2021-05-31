import 'package:flutter/material.dart';
import 'package:sampleproj/screens/login/widget/input_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30,
      ),
      
        child: Column(
          children: <Widget>[
          InputTextField(
            label: 'Email',
            onChange: (value) {}, //STORE EMAIL IN DB
          ),
          SizedBox(height: 16,),
          InputTextField(
            label: 'Password',
            password: true,
            onChange: (value) {}, //STORE PWD IN DB
          ),
        ],
      ),
      );
  }
}

