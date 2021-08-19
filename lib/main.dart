import 'package:flutter/material.dart';
import 'package:stage_two/views/home.dart';

void main() {
  runApp(StageTwo());
}

class StageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
