import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'imgs/IMG_20150111_135850.JPG',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '펫 일람',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
