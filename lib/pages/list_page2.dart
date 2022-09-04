import 'package:flutter/material.dart';

class ListPage2 extends StatelessWidget {
  const ListPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 列表
    return Scaffold(
      appBar: AppBar(

      ),
      body:  Container(
        height: 200,
        margin: const EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 180,
              color: Colors.lightBlue,
            ),
            Container(
              width: 180,
              color: Colors.amber,
              child: ListView(
                children: [
                  Image.network(
                      'https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/avatar/head10.jpg'),
                  const SizedBox(height: 16),
                  const Text('这是一个文本信息',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );

  }
}
