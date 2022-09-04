import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 700,
        width: 500,
        color: Colors.black26,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconContainer (Icons.home,color: Colors.red),
            IconContainer (Icons.search,color: Colors.blue),
            IconContainer (Icons.send,color: Colors.orange),
          ],
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  double? size;
  IconData icon;
  Color color;

  IconContainer(this.icon,
      {Key? key, this.size = 32.0, this.color = Colors.blue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: size,
        ),
      ),
    );
  }
}

