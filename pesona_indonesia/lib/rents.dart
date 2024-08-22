import 'package:flutter/material.dart';
import 'package:pesona_indonesia/model/data.dart';
import 'package:pesona_indonesia/rents_detail.dart';

class Car extends StatelessWidget {
  const Car({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'Rents',
              style: TextStyle(fontFamily: 'tese', fontSize: 5  ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SafeArea(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final Data cars = veh[index];
                return InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CarsDetail(
                                  cars: cars,
                                )))
                  },
                  child: SizedBox(
                    height: 144,
                    child: Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5)),
                                    child: Image.asset(cars.foto)),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      cars.nama,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(cars.tahun)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: veh.length,
            ),
          ),
        ),
        ),
      ),
    );
  }
  
}
