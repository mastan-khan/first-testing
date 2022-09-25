import 'package:flutter/material.dart';

import './home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(



      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color.fromARGB(255, 153, 69, 24),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyMedium: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              bodySmall: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              titleLarge: const TextStyle(
                fontSize: 22,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
              ),
              titleMedium: const TextStyle(
                fontSize: 18,
                fontFamily: 'RobotoCondesed',
                fontWeight: FontWeight.w500,
              ),
              
              titleSmall: const TextStyle(
                fontSize: 15,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w300,
              ),
            ),
      ),
      home: MyHomePage(),
    );
  }
}
