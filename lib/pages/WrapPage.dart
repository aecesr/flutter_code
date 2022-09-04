import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.start,
          children:const  [
            MyButton("第1集"),
            MyButton("第2集"),
            MyButton("第3集"),
            MyButton("第4集"),
            MyButton("第5集"),
            MyButton("第6集"),
            MyButton("第7集"),
            MyButton("第8集"),
            MyButton("第9集"),
            MyButton("第10集"),
            MyButton("第11集"),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        onPressed: () {},
        child: Text(text));
  }
}
