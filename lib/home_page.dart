import 'package:flutter/material.dart';
import './start_widget.dart';

class MyHomePage extends StatelessWidget {
  static const routName = '/myHomePage';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: StartWidget(),
        ),
      ),
    );
  }
}
