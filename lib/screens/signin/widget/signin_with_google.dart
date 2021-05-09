import 'package:flutter/material.dart';

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30.0,5.0,30.0,5.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(38),
          side: BorderSide(
            color: Colors.blue
          )

        ),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset('assets/images/google_logo.png',height: 30,),
            SizedBox(width: 20,),
            Text('Sign in with Google',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue),
            textAlign: TextAlign.right,
            ),

          ]
        ),
        )
        ),
      );
  }
}
