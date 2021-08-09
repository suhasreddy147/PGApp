import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('menu').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data.docs.map((document){
              return Column(
                children: <Widget>[
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Vegetarian",
                              style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.black,
                              ),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(Icons.crop_square_sharp, color: Colors.green, size: 36,),
                                Icon(Icons.circle, color: Colors.green, size: 14),
                              ],
                            ),
                          ]))),
                  Center(child: Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    height: 2.0,
                    width: 300.0,
                    color: Colors.black,
                  )),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text(
                      document['veg1'],
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                      ),
                  ))),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text(
                        document['veg2'],
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ))),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text(
                        document['veg3'],
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ))),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Non Vegetarian",
                              style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.black,
                              ),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(Icons.crop_square_sharp, color: Colors.red, size: 36,),
                                Icon(Icons.circle, color: Colors.red, size: 14),
                              ],
                            ),
                          ]))),
                  Center(child: Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    height: 2.0,
                    width: 300.0,
                    color: Colors.black,
                  )),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text(
                        document['nonveg1'],
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ))),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text(
                        document['nonveg2'],
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ))),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text(
                        document['nonveg3'],
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ))),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Common",
                              style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.black,
                              ),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(Icons.crop_square_sharp, color: Colors.grey, size: 36,),
                                Icon(Icons.circle, color: Colors.grey, size: 14),
                              ],
                            ),
                          ]))),
                  Center(child: Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    height: 2.0,
                    width: 300.0,
                    color: Colors.black,
                  )),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text(
                        document['g1'],
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ))),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text(
                        document['g2'],
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ))),
                  Center(child: Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text(
                        document['g3'],
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ))),
                ]
              );
            }).toList(),
          );
        }
      ),
    );
  }
}