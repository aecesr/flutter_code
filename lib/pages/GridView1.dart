import 'package:flutter/material.dart';

import '../utils/list_data.dart';

class GridView1 extends StatelessWidget {
  const GridView1({Key? key}) : super(key: key);

  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: const Color.fromRGBO(10, 230, 230, 0.9),
              width: 1.0,
            )),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: _getListData(),
      ),
    );
  }
}
