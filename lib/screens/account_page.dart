

import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 200,
            height: 150,
            child: Container(
              alignment: Alignment.topCenter,//(2.25,0.3),
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ProfileImage.png"),
                radius: 80.0,
                ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.blueGrey[800]),
                children: [
                  TextSpan(
                    text: 'Account Name',
                    style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.blueGrey[800]),
                children: [
                  TextSpan(
                    text: 'accountname01@gmail.com',
                    style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: 
            TextButton(
            child: Text("Change Password",
            style: TextStyle(
                fontSize: 20.0,
                color:Colors.blueGrey[800],),
            ),
            onPressed: (){
              //change password
            }
          ),
          ),
        Container( //dummy widget
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.blueGrey[800]),
                children: [
                  TextSpan(
                    text: '',
                    style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),  
      ],
      ),
    );
  }
}