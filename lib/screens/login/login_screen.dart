import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pgapp/backend/authentication.dart';
import 'package:pgapp/screens/login/widget/input_text_field.dart';
import 'package:pgapp/screens/login/widget/welcome_back.dart';
import 'package:pgapp/screens/reset_password/reset_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          WelcomeBack(),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: Column(
              children: <Widget>[
                InputTextField(
                  label: 'Email',
                  onChange: (value) {
                    _email = value;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                InputTextField(
                  label: 'Password',
                  password: true,
                  onChange: (value) {
                    _password = value;
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(
                    text: 'Forgot Password?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ResetPassword();
                            },
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                backgroundColor: Colors.white,
              ),
              onPressed: () async {
                String check = await Authentication()
                    .signInUser(email: _email, password: _password);
                if (check.length == 0)
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("LoggedIn!")));
                else
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("$check")));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 16,
            ),
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.white), children: [
                TextSpan(text: 'Don\'t have an account?  '),
                TextSpan(
                  text: 'Sign up',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pop(context);
                    },
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Login',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
