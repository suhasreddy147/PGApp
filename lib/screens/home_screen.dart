import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "NOTICES",
              style: TextStyle(
                color: Colors.blueGrey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
            ),
            Container(
              padding: const EdgeInsets.only(top:40),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.notifications),
                  hintText: 'Notification',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top:40),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.notifications),
                  hintText: 'Notification',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top:40),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.notifications),
                  hintText: 'Notification',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top:40),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.notifications),
                  hintText: 'Notification',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top:40),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.notifications),
                  hintText: 'Notification',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}