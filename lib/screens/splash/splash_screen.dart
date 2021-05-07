
import 'package:flutter/material.dart';

import 'package:sampleproj/screens/home/home_screen.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() =>  _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    
    var d = Duration(seconds: 3);
    Future.delayed(d,() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context){
            return HomeScreen();
          },
        ),
        (route) => false,
      ); 
    });
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.apartment,
                          color: Colors.indigoAccent,
                          size: 55.0,
                        )
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Sri Varis",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                      )
                    ]
                  ),)

              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(backgroundColor: Colors.white),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("Paying Guest Accomodation \nFor All",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ]))
            ])
        ],
      ),
    );
  }
}