// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import './symptoms.dart';
import './tracker.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19 Help Desk'),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.25,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    child: Container(
                      width: size.width * 0.94,
                      height: size.height * 0.22,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 203, 203, 207),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: size.width * 0.20,
                            height: size.height * 0.15,
                            child: Image.asset(
                              'assets/images/doctor.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Know Safety tips and \n precautions from \n top Doctors.',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 70,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.brown.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                  onPressed: null,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              height: size.height * 0.55,
              color: Colors.white,
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 05,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 203, 203, 207),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const TabBar(
                          indicator: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                          ),
                          labelColor: Colors.purple,
                          unselectedLabelColor: Colors.black,
                          // ignore: prefer_const_literals_to_create_immutables
                          tabs: [
                            Tab(
                              child: Text(
                                'Tracker',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Symptoms',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.50, //height of TabBarView
                        decoration: const BoxDecoration(),
                        child: TabBarView(
                          children: <Widget>[
                            Tracker(),
                            Symptoms(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
