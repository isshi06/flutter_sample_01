import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage(this.name, {Key? key}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('画面間データ受け渡しテスト'),
      ),
      body: Container(color: Colors.red, child: Text(name)),
    );
  }
}
