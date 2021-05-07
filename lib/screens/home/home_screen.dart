import 'package:flutter/material.dart';

import 'package:sampleproj/screens/home/widget/slider_dot.dart';

//import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: Row(
            children: <Widget>[
              Expanded(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                  ),
                color: Colors.blue,
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text('Register',
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
                onPressed: () {},
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
        )



      ],
      ),
        ],
    ),
    );
  }

}

