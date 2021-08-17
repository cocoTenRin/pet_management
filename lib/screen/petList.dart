import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pet_management/screen/petAdd.dart';

class PetList extends StatefulWidget {
  _PetList createState() => _PetList();
}

class _PetList extends State<PetList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Topbar();
  }
}

class Topbar extends StatelessWidget {
  List<String> petList = <String>['coco', 'ten', 'rin'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children:<Widget>[
            Container(child: Text('s')),
            Container(child: Text('s')),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => petAdd()));
        },
        tooltip: '테스트',
        label: Text('펫 추가'),
        icon: Icon(Icons.add),
      ),
    );
  }
}
