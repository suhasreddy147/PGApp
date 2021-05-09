import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sampleproj/screens/login/widget/login_button.dart';
import 'package:sampleproj/screens/login/widget/login_form.dart';
import 'package:sampleproj/screens/login/widget/welcome_back.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          WelcomeBack(),
          LoginForm(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.white),
              ),
            ),
            SizedBox(height: 60,),
            LoginButton(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16,
              ),
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  children: [
                    TextSpan(text: 'Don\'t have an account?  '),
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.pop(context);
                    },
                    ),
                  ]
                ),
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



