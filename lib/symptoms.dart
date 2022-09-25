import 'package:flutter/material.dart';

class Symptoms extends StatelessWidget {
  const Symptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      child: GridView.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 237, 248),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'assets/images/doctor.png',
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Fever',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 237, 248),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    'assets/images/doctor.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Cough',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            // height: 50,
            // width: 70,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 237, 248),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'assets/images/doctor.png',
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Diarrhoea',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            // height: 50,
            // width: 70,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 237, 248),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'assets/images/doctor.png',
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tiredness',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
