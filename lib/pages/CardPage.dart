import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: const [
                ListTile(
                  title: Text(
                    "张三",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "电话：12312412414",
                  ),
                ),
                ListTile(
                  title: Text(
                    "地址：北京市海淀区",
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: const [
                ListTile(
                  title: Text(
                    "李四",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  subtitle: Text(
                    "高级软件工程师",
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "电话：12312412414",
                  ),
                ),
                ListTile(
                  title: Text(
                    "地址：北京市海淀区",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
