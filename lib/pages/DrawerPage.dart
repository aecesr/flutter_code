import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title:const Text("Drawer组件") ,
          ),
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text("CHL"),
                  accountEmail: const Text("123456677@qq.com"),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/avatar/head10.jpg'),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.itying.com/images/flutter/2.png'),
                        fit: BoxFit.cover),
                  ),
                  otherAccountsPictures: [
                    Image.network(
                      "https://www.itying.com/images/flutter/3.png",
                    ),
                    Image.network(
                      "https://www.itying.com/images/flutter/4.png",
                    ),
                    Image.network(
                      "https://www.itying.com/images/flutter/5.png",
                    ),
                  ],
                ),
                const ListTile(
                  title: Text("个人中心"),
                  leading: CircleAvatar(
                    child: Icon(Icons.people),
                  ),
                ),
                const Divider(),
                const ListTile(
                  title: Text("系统设置"),
                  leading: CircleAvatar(
                    child: Icon(Icons.settings),
                  ),
                )
              ],
            ),
          ),
          endDrawer: const Drawer(
            child: Text("右侧侧边栏"),
          ),
        ),
      ),
    );
  }
}