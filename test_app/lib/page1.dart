import 'package:flutter/material.dart';
import 'page2.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'color.dart';

class Page1 extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Noolibee',
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: color1,
              title: Center(
                child: Text(
                  "Log Viewer",
                  style: TextStyle(color: color2),
                ),
              ),
            ),
            body: Container(
              padding:
                  EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 10),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 20),
                              padding: EdgeInsets.all(10),
                              height: 100,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(width: 2.0, color: color1),
                                  left: BorderSide(width: 2.0, color: color1),
                                  right: BorderSide(width: 2.0, color: color1),
                                  bottom: BorderSide(width: 2.0, color: color1),
                                ),
                              ),
                              child: Row(
                                children: <Widget>[
                                ],
                              ),
                            );
                          })),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: FlatButton(
                      padding: EdgeInsets.all(15),
                      //splashColor: Colors.white,
                      onPressed: () {
                       Navigator.push(
            context, new MaterialPageRoute(builder: (context) => Page2()));// j'envoie vers
            // Mqtt.dart
                      },
                      child: Text(
                        "Clean",
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
