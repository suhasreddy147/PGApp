import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
      backgroundColor: Colors.blue[200],
      title: Text('Home Page'),      
      ),
    );
  }
}