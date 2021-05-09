

import 'package:flutter/material.dart';
import 'package:sampleproj/screens/login/login_screen.dart';

class LoginandSignup extends StatelessWidget {
  const LoginandSignup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
              ),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context){},));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              width: double.infinity,
              child: Text('Sign up',
              style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
          ),
          ),
          SizedBox(width: 30,),
          Expanded(
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
              side: BorderSide(
                color: Colors.blue)
              ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                },
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              width: double.infinity,
              child: Text('Login',
              style: TextStyle(
                color: Colors.blue,
              ),
              ),
            ),
          ),
          ),
        ],

      )
    );
  }
}