import 'package:flutter/material.dart';

class YourLeftPage extends StatefulWidget {
  const YourLeftPage({super.key});

  @override
  State<YourLeftPage> createState() => _YourLeftPageState();
}

class _YourLeftPageState extends State<YourLeftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        height: 400,
        width: 400,
        color: Colors.red,
      ),
    );
  }
}
