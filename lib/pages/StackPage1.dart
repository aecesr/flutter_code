import 'package:flutter/material.dart';

class StackPage1 extends StatelessWidget {
  const StackPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    height: 400,
                    width: 300,
                    color: Colors.lightBlue,
                  ),
                  const Text(
                    '我是一个文本',
                    style: TextStyle(fontSize: 40, color: Colors.deepPurple),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 400,
                width: 300,
                color: Colors.lightBlue,
                child: Stack(
                  alignment: Alignment.center,
                  children: const [
                    Align(
                      alignment: Alignment(1, -0.2),
                      child: Icon(
                        Icons.home,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.search,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.settings_applications,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 400,
                width: 300,
                color: Colors.lightBlue,
                child: Stack(
                  alignment: Alignment.center,
                  children: const [
                    Positioned(
                        child: Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.white,
                    )),
                    Positioned(
                        bottom: 0,
                        child: Icon(
                          Icons.search,
                          size: 40,
                          color: Colors.white,
                        )),
                    Positioned(
                        right: 0,
                        child: Icon(
                          Icons.settings_applications,
                          size: 30,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
