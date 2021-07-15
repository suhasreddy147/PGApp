import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pgapp/backend/authentication.dart';
import 'package:pgapp/screens/login/login_screen.dart';
import 'package:pgapp/screens/login/widget/input_text_field.dart';
import 'package:pgapp/screens/signup/widget/welcome.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Welcome(),
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
                SizedBox(
                  height: 16,
                ),
                InputTextField(
                  label: 'Password',
                  password: true,
                  onChange: (value) {
                    _password = value;
                  }, //STORE PWD IN DB
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
                backgroundColor: Colors.white,
              ),
              onPressed: () async {
                String check = await Authentication()
                    .signUpUser(email: _email, password: _password);
                if (check.length == 0)
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Account Created! You can now LogIn")));
                  Navigator.push(context,MaterialPageRoute(
                  builder: (context){
                  return LoginScreen();
                  }
                  ),
                  );
                }
                else
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("$check")));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                child: Text(
                  'Sign up',
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
