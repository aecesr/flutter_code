import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.black87,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Image.network(
                        'https://www.itying.com/images/flutter/1.png',
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      flex: 1,
                      child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: 1.8,
                        mainAxisSpacing: 8,
                        children: [
                          Image.network(
                            'https://www.itying.com/images/flutter/1.png',
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://www.itying.com/images/flutter/2.png',
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://www.itying.com/images/flutter/3.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
