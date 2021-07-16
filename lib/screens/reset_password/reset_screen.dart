import 'package:flutter/material.dart';
import 'package:pgapp/backend/authentication.dart';
import 'package:pgapp/screens/login/widget/input_text_field.dart';
import 'package:pgapp/screens/reset_password/widget/reset.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  String _email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Reset(),
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
                  }, //STORE EMAIL IN DB
                ),
              ],
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
                  backgroundColor: Colors.white),
              onPressed: () async {
                if (_email.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Enter Email Address")));
                } else {
                  String check =
                      await Authentication().forgotPassword(email: _email);
                  if (check.isEmpty)
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "Link with password reset has been sent to your mail!")));
                  else
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(check)));
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                child: Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Colors.blue,
                  ), //HAVE TO ADD ONPRESS FUNCTION TO CHANGE PASSWORD -FIREBASE LINKING
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
              text: TextSpan(
                style: TextStyle(color: Colors.white),
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
        'Reset Password',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
