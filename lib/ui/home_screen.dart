import 'package:flutter/material.dart';
import 'package:getx/ui/get_x/get_x.dart';
import 'package:getx/ui/rx_dart/rx_dart.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                '''  GetX 
   and 
Rx Dart''',
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.w900,
                    shadows: [
                      BoxShadow(
                        blurRadius: 15,
                        color: Colors.deepOrange,
                        spreadRadius: 4,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                    color: Colors.white),
              ),
              const SizedBox(
                height: 200,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => GetXScreen()));
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.greenAccent,
                            spreadRadius: 4)
                      ]),
                  child: const Center(
                      child: Text(
                    'GetX',
                    style: TextStyle(
                        shadows: [
                          BoxShadow(
                            blurRadius: 15,
                            color: Colors.greenAccent,
                            spreadRadius: 4,
                            blurStyle: BlurStyle.normal,
                          ),
                        ],
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => RxDartScreen()));
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.greenAccent,
                            spreadRadius: 4)
                      ]),
                  child: const Center(
                      child: Text(
                    'Rx Dart',
                    style: TextStyle(
                        shadows: [
                          BoxShadow(
                            blurRadius: 15,
                            color: Colors.greenAccent,
                            spreadRadius: 4,
                            blurStyle: BlurStyle.normal,
                          ),
                        ],
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
