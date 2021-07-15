
import 'package:flutter/material.dart';
import 'package:pgapp/screens/reset_password/widget/reset.dart';
import 'package:pgapp/screens/reset_password/widget/reset_button.dart';
import 'package:pgapp/screens/reset_password/widget/reset_form.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Reset(),ResetForm(),
          SizedBox(height: 60,),
            ResetButton(),
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
        'Reset Password',
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold, 
      ),
      ),
    );
  }
}



