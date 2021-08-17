import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pet_management/model/db.dart';
import 'package:pet_management/screen/petList.dart';

import 'Widget/bottom_bar.dart';
import 'Widget/calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(

          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              PetList(),
              Calendar(),
              Container(
                child: Text('a'),
              ),
              Container(child: Center(child: Text('홈')),),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}

