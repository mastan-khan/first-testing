import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(children: [
            Image(
              image: AssetImage('assets/images/Screen_1.png'),
              fit: BoxFit.cover,
            ),
            Positioned(
              
              child: Container(),
            )
          ]),
        ),
      ),
    );
  }
}
