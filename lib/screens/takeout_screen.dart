// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TakeoutScreen extends StatefulWidget {
  const TakeoutScreen({Key? key}) : super(key: key);

  @override
  State<TakeoutScreen> createState() => _TakeoutScreenState();
}

class _TakeoutScreenState extends State<TakeoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Takeout Screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }
}
