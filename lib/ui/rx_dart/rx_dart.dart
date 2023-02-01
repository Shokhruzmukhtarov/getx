import 'package:flutter/material.dart';
import 'package:getx/data/api_service/api_service.dart';
import 'package:getx/data/app_repository/company_repo.dart';
import 'package:getx/getx_rx_dart/rx_dart/rx_dart.dart';

class RxDartScreen extends StatelessWidget {
  RxDartScreen({super.key});

  final CompanyRxDart carRxDart =
      CompanyRxDart(carRepo: CarRepo(apiService: ApiService()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: const Text(
          'Rx Dart',
          style: TextStyle(
              fontSize: 35,
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
      ),
      backgroundColor: Colors.green,
      body: StreamBuilder(
        stream: carRxDart.carData,
        builder: (context, snapshot) {
          return Center(
            child: snapshot.data == null
                ? CircularProgressIndicator()
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.5 / 2.8,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                      ),
                      itemCount: snapshot.data!.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.only(top: 4),
                          margin: const EdgeInsets.only(
                              top: 6, left: 4, right: 4, bottom: 2),
                          width: 120,
                          height: 180,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.greenAccent,
                                    spreadRadius: 4)
                              ]),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 4,
                              ),
                              Container(
                                width: double.infinity,
                                height: 143,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        snapshot.data!.data[index].logo,
                                      ),
                                      fit: BoxFit.fill,
                                      scale: 6),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                snapshot.data!.data[index].carModel,
                                style: const TextStyle(
                              shadows: [
                              BoxShadow(
                              blurRadius: 15,
                                color: Colors.greenAccent,
                                spreadRadius: 4,
                                blurStyle: BlurStyle.normal,
                              ),
                            ],
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
          );
        },
      ),
    );
  }
}
