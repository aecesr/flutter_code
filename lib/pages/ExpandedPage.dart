import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 2, child: IconContainer(Icons.home)),
            const SizedBox(
              width: 10,
            ),
            Expanded(flex: 3, child: IconContainer(Icons.search)),
            const SizedBox(
              width: 10,
            ),
            Expanded(child: IconContainer(Icons.send)),
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
      {Key? key, this.size = 48.0, this.color = Colors.blue})
      : super(key: key);

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
