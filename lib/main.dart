import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.
  @override
  Widget build(BuildContext context) {
    var imageUrl = "lib\img\IMG_20150111_135850.JPG";
    // UI를 만드는 부분.
    return new MaterialApp(
      // 구글 기본 디자인인 Material Design을 써서 앱을 만든다.
      title: '플러터 앱',
      home: Scaffold(
          appBar: AppBar(title: Text("pet List")), // 앱의 상단 타이틀
          body: Center(
            child: Image.asset("imgs/IMG_20150111_135850.JPG"),
          )),
    );
  }
}
