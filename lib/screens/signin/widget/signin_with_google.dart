import 'package:flutter/material.dart';
import 'package:pgapp/backend/authentication.dart';
import 'package:pgapp/screens/dashboard.dart';
import 'package:pgapp/screens/login/login_screen.dart';

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38),
                side: BorderSide(color: Colors.blue)),
          ),
          onPressed: () async {
            String check = await Authentication().signInWithGoogle();
            if (check.length == 0)
            {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Account Created! You can now LogIn")));
              Navigator.push(context,MaterialPageRoute(
                builder: (context){
                  return  LoginScreen(); //not going to login screen
                }
              ),
              );
            }
            else
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("$check")));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/google_logo.png',
                    height: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Sign in with Google',
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                    textAlign: TextAlign.right,
                  ),
                ]),
          )),
    );
  }
}
