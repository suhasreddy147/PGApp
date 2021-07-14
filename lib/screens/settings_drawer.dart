import 'package:flutter/material.dart';

class SettingsDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
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