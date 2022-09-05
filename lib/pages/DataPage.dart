import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DatePage extends StatefulWidget {
  const DatePage({Key? key}) : super(key: key);

  @override
  State<DatePage> createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  var _datetime = DateTime.now();
  var _time = TimeOfDay(hour: 9, minute: 20);

  _showDatePicker() async {
    var date = await showDatePicker(
      context: context,
      initialDate: _datetime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      locale: const Locale('zh'),
    );

    if (date == null) return;
    var time = await showTimePicker(context: context, initialTime: _time);
    if (time == null) return;
    setState(() {
      _datetime = date;
      _time = time;
    });
  }

  _showPicker() async {
    var date = await showDatePicker(
        context: context,
        initialDate: _datetime,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        locale: const Locale('zh'));
    if (date == null) return;
    setState(() {
      _datetime = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("日期和时间"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/datepicker")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _showDatePicker();
            },
            child: const Text("点击显示日期"),
          ),
          ElevatedButton(
            onPressed: () {
              _showPicker();
            },
            child: const Text("点击显示时间"),
          ),

        ],
      ),
    );
  }
}
