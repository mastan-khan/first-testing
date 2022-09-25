// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

class Tracker extends StatefulWidget {
  const Tracker({Key? key}) : super(key: key);

  @override
  State<Tracker> createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  var responseBody;
  bool loading = true;
  List ukData = [];

  @override
  initState() {
    super.initState();
    getPopulationData();
  }

  getPopulationData() async {
    setState(() {
      loading = true;
    });
    print('api calling...............');
    var api = "https://api.coronavirus.data.gov.uk/v1/data";
    var response = await http.get(
      Uri.parse(api),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      setState(() {
        responseBody = jsonDecode(response.body);
        debugPrint('$responseBody');
        ukData = responseBody['data'].toList();
        log('ukData: $ukData');
      });

      debugPrint('Data:  $responseBody');
    } else {
      print("Server error please try again later");
    }
    setState(() {
      loading = false;
    });
    print('Api ok....');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      color: Colors.white,
      child: loading == true
          ? Container(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                  //strokeWidth: 10,
                  //semanticsValue: ,
                  ),
            )
          : GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Confirmed',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.red,
                              fontFamily: 'RobtoCondensed',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            ukData[0]['confirmed'].toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontFamily: 'RobtoCondensed',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Active',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.blue,
                              fontFamily: 'RobtoCondensed',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            ukData[0]['latestBy'].toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontFamily: 'RobtoCondensed',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Recovered',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.green,
                              fontFamily: 'RobtoCondensed',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            ukData[0]['confirmedRate'].toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                              fontFamily: 'RobtoCondensed',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Deceased',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                              fontFamily: 'RobtoCondensed',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            ukData[0]['death'].toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontFamily: 'RobtoCondensed',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
