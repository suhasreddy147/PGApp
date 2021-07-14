import 'package:flutter/material.dart';
import 'package:pgapp/screens/account_page.dart';
import 'package:pgapp/screens/home_screen.dart';
import 'package:pgapp/screens/more_options.dart';
import 'package:pgapp/screens/settings_drawer.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>{
  int selectedindex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MoreOptions(),
    Account(),
  ];
  void _onTap(int index){
    setState(() {
          selectedindex =  index;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
          title: Text('Dashboard'), //change to account name
          ),
          drawer: SettingsDrawer(),
      body: Center(
        child: _widgetOptions.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          title: Text('More options'),
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_sharp),
          title: Text('Account'),
          ),
      ],
      currentIndex: selectedindex,
      onTap: _onTap,
      ),
    );
  }
}