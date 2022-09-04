import 'package:first_flutter_app/utils/list_data.dart';
import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget {
  const AspectRatioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: listData.map((value) {
            return Card(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 20 / 9,
                      child: Image.network(
                        value['imageUrl'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(value['imageUrl']),
                      ),
                      title: Text(
                        value['description'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ));
          }).toList(),
        ));
  }
}
