import 'package:first_flutter_app/pages/AppBarPage1.dart';
import 'package:first_flutter_app/pages/AspectRatioPage.dart';
import 'package:first_flutter_app/pages/ButtonPage.dart';
import 'package:first_flutter_app/pages/CardPage.dart';
import 'package:first_flutter_app/pages/ColumnPage.dart';
import 'package:first_flutter_app/pages/DialogPage.dart';
import 'package:first_flutter_app/pages/ExpandedPage.dart';
import 'package:first_flutter_app/pages/FormPage1.dart';
import 'package:first_flutter_app/pages/GridView1.dart';
import 'package:first_flutter_app/pages/HttpPage.dart';
import 'package:first_flutter_app/pages/LayoutPage.dart';
import 'package:first_flutter_app/pages/NewsPage.dart';
import 'package:first_flutter_app/pages/PaddingPage.dart';
import 'package:first_flutter_app/pages/RowPage.dart';
import 'package:first_flutter_app/pages/StackPage1.dart';
import 'package:first_flutter_app/pages/WrapPage.dart';
import 'package:first_flutter_app/pages/list_page3.dart';
import 'package:flutter/material.dart';

import 'AppBarPage.dart';
import 'DataPage.dart';
import 'DatePicker.dart';
import 'DrawerPage.dart';
import 'FloatingActionButtonPage.dart';
import 'FormWidget.dart';
import 'GridView2.dart';
import 'MydialogPage.dart';
import 'list_page.dart';
import 'list_page2.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);
  final assetsImagePath = 'images/Android_Studio.png';
  final assetsGifPath = 'images/head9.jpg';
  final netImageUrl =
      'https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/avatar/head10.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('组件'),
      // ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '文本组件',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.purpleAccent,
                ),
              ),
              Container(
                height: 300,
                width: 300,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.fromLTRB(100, 30, 5, 100),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.blue, width: 2.0),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                transform: Matrix4.rotationZ(0.2),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  '大家好',
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  textScaleFactor: 1.8,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.red,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.white,
                    decorationStyle: TextDecorationStyle.dashed,
                    letterSpacing: 5.0,
                  ),
                ),
              ),
              const Text(
                '图片组件',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.purpleAccent,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  'Flutter实现圆角、圆形图片等',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Wrap(
                spacing: 20,
                runSpacing: 10,
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      assetsGifPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: NetworkImage(netImageUrl),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    child: ClipOval(
                      clipper: _MyClipper(),
                      child: Image.network(netImageUrl),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.network(
                      netImageUrl,
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomRight,
                      color: Colors.deepPurple,
                      colorBlendMode: BlendMode.screen,
                      repeat: ImageRepeat.repeat,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const ListPage();
                    }));
                  },
                  child: const Text('跳转到列表页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const ListPage2();
                    }));
                  },
                  child: const Text('跳转到列表2页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ListPage3();
                    }));
                  },
                  child: const Text('跳转到列表3页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const GridView1();
                    }));
                  },
                  child: const Text('跳转到GridView1页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const GridView2();
                    }));
                  },
                  child: const Text('跳转到GridView2页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const PaddingPage();
                    }));
                  },
                  child: const Text('跳转到Padding布局页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const RowPage();
                    }));
                  },
                  child: const Text('跳转到Row布局页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const ColumnPage();
                    }));
                  },
                  child: const Text('跳转到Column布局页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const ExpandedPage();
                        }));
                  },
                  child: const Text('跳转到Expanded布局页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const LayoutPage();
                        }));
                  },
                  child: const Text('跳转到Layout布局页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const StackPage1();
                        }));
                  },
                  child: const Text('跳转到Stack布局页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const AspectRatioPage();
                        }));
                  },
                  child: const Text('跳转到AspectRation布局页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const CardPage();
                        }));
                  },
                  child: const Text('跳转到card布局页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const WrapPage();
                        }));
                  },
                  child: const Text('跳转到wrap布局页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/form',
                      arguments: {
                        'id':20,
                        'name':'zhangsan',
                      }
                    );
                  },
                  child: const Text('跳转到表单页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const AppBarPage();
                        }));
                  },
                  child: const Text('跳转到AppBar页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const AppBarPage1();
                        }));
                  },
                  child: const Text('跳转到AppBar1页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const ButtonPage();
                        }));
                  },
                  child: const Text('跳转到按钮页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const DrawerPage();
                        }));
                  },
                  child: const Text('跳转到侧边栏页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const FloatingActionButtonPage();
                        }));
                  },
                  child: const Text('跳转到闲鱼 APP 底部页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const FormPage1();
                        }));
                  },
                  child: const Text('跳转到文本框组件页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const FormWidget();
                        }));
                  },
                  child: const Text('跳转到学员登记系统页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const DatePage();
                        }));
                  },
                  child: const Text('跳转到时间组件页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const DatePickerPubDemo();
                        }));
                  },
                  child: const Text('跳转到日期选择页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const DialogPage();
                        }));
                  },
                  child: const Text('跳转到弹出框页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const HttpPage();
                        }));
                  },
                  child: const Text('跳转到网络请求页面')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const NewsPage();
                        }));
                  },
                  child: const Text('跳转到新闻页面')),

            ],
          ),
        ),
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTRB(20.0, 20.0, 140, 120);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
