import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('フェアリーテイル'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('フェアリーテイル'),
              SizedBox(height: 40),
              Text('持っている巻数'),
            ],
          ),
        ),
      ),
    );
  }
}
