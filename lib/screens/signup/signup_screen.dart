
import 'package:flutter/material.dart';
import 'package:sampleproj/screens/signup/widget/signup_button.dart';
import 'package:sampleproj/screens/signup/widget/signup_form.dart';
import 'package:sampleproj/screens/signup/widget/welcome.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Welcome(), SignUpForm(),
          SizedBox(height: 60,),
            SignUpButton(),
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
        'Sign up',
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


