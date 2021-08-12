import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat used firebase',
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text('ペット管理'),
            ),
            body: TabBarView(
              children: [
                Text('홈 스크린'),
                Text('채팅 스크린'),
                Text('마이 스크린'),
                Text('ㅇㅇ')
              ],
            ),
            bottomNavigationBar: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.app_registration),
                text: '記録',
              ),
              Tab(
                icon: Icon(Icons.calendar_view_week_sharp),
                text: 'カレンダー',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'ペット一覧',
              ),
              Tab(
                icon: Icon(Icons.app_registration_sharp),
                text: '登録',
              )
            ]),
          )),
    );
  }
}
