import 'package:first_flutter_app/pages/image_widget.dart';
import 'package:first_flutter_app/pages/Tabs.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 列表
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "this is list",
                style: TextStyle(fontSize: 28.0),
              ),
              subtitle: Text('this is list this is list'),
            ),
            ListTile(
              trailing: Icon(Icons.phone),
              title: Text(
                "this is list",
              ),
              subtitle: Text('this is list this is list'),
            ),
            ListTile(
              trailing: Icon(Icons.phone),
              title: Text(
                "this is list",
              ),
              subtitle: Text('this is list this is list'),
            ),
            ListTile(
              trailing: Icon(Icons.phone),
              title: Text(
                "this is list",
              ),
              subtitle: Text('this is list this is list'),
            ),
          ],
        ),
      ),
    );
  }
}
