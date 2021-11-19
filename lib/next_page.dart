import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name, {Key? key}) : super(key: key);
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('吾輩は猫である'),
      ),
      body: Container(
        color: Colors.red,
        child: Text(name)
      ),
    );
  }
  
}