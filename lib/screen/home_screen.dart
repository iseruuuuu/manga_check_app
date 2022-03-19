import 'package:flutter/material.dart';

import 'add_screen.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('漫画巻数チェック'),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
            title: Text('フェアリーテイル'),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

//TODO メモ
/*
投稿する内容
・漫画の名前

画像（ネットからランダムに取得？？）
アイコン（適当？？）
巻数
 */
