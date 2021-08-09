
import 'package:pgapp/screens/menu.dart';
import 'package:flutter/material.dart';

class MoreOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top:40),
            alignment: Alignment.center,
            child: 
            TextButton(
            onPressed: (){
              //raise complaint
            },
            child: Text("Raise Complaint",
            ),
          
            style: TextButton.styleFrom(
              primary: Colors.blue[900],
              backgroundColor: Colors.lightBlue[200],
              minimumSize: Size(300.0,60.0),
              textStyle: TextStyle(
                fontSize: 20.0,
                color:Colors.blueGrey[800],),
            ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top:40),
            alignment: Alignment.center,
            child: 
            TextButton(
            onPressed: (){
              //pay dues
            },
            child: Text("Pay Dues",
            ),
          
            style: TextButton.styleFrom(
              primary: Colors.blue[900],
              backgroundColor: Colors.lightBlue[200],
              minimumSize: Size(300.0,60.0),
              textStyle: TextStyle(
                fontSize: 20.0,
                color:Colors.blueGrey[800],),
            ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top:40),
            alignment: Alignment.center,
            child: 
            TextButton(
            onPressed: (){
              //request approval
            },
            child: Text("Request Approval",
            ),
          
            style: TextButton.styleFrom(
              primary: Colors.blue[900],
              backgroundColor: Colors.lightBlue[200],
              minimumSize: Size(300.0,60.0),
              textStyle: TextStyle(
                fontSize: 20.0,
                color:Colors.blueGrey[800],),
            ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top:40),
            alignment: Alignment.center,
            child: 
            TextButton(
            onPressed: (){
              //message admin
            },
            child: Text("Message Admin",
            ),
          
            style: TextButton.styleFrom(
              primary: Colors.blue[900],
              backgroundColor: Colors.lightBlue[200],
              minimumSize: Size(300.0,60.0),
              textStyle: TextStyle(
                fontSize: 20.0,
                color:Colors.blueGrey[800],),
            ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top:40),
            alignment: Alignment.center,
            child:
            TextButton(
              onPressed: (){
                //display menu
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Menu()),
                );
              },
              child: Text("View Menu",),
              style: TextButton.styleFrom(
                primary: Colors.blue[900],
                backgroundColor: Colors.lightBlue[200],
                minimumSize: Size(300.0,60.0),
                textStyle: TextStyle(
                  fontSize: 20.0,
                  color:Colors.blueGrey[800],),
              ),
            ),
          ),
        ],
      ),
    );
  }
}