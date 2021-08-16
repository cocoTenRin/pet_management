import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  _Calendar createState() => _Calendar();
}

class _Calendar extends State<Calendar> {
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        children: <Widget>[
          TableCalendar(
            // 以下必ず設定が必要
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
