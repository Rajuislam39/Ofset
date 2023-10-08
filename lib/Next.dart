import 'package:flutter/material.dart';

class YourRightPage extends StatefulWidget {
  const YourRightPage({super.key});

  @override
  State<YourRightPage> createState() => _YourRightPageState();
}

class _YourRightPageState extends State<YourRightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Right"),
    );
  }
}
