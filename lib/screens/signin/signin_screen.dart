import 'package:flutter/material.dart';
import 'package:pgapp/screens/signin/widget/login_and_signup.dart';
import 'package:pgapp/screens/signin/widget/signin_with_google.dart';

import 'package:pgapp/screens/signin/widget/slider_dot.dart';

//import 'package:flutter_svg/flutter_svg.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(children: <Widget>[
        Image.asset('assets/images/SriVarilogo.png'),
        SliderDot(),
        SizedBox(height: 20,),
        
      
        Text('Welcome to Sri Vari PG!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
        ),
        SizedBox(height: 60,),
        LoginandSignup(),
        SignInWithGoogle(),

      ],
      ),
        ],
    ),
    );
  }

}




