import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pesona_indonesia/model/data_wisata.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.tempatWisata});

  final TempatWisata tempatWisata;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(tempatWisata.gambar),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Visit Paris",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.pin_drop),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(tempatWisata.nama),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(tempatWisata.jamBuka),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            tempatWisata.harga,
                            style: TextStyle(
                                backgroundColor: Colors.green,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Text(
                "Gallery",
                style: TextStyle(
                    fontFamily: 'tese',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  tempatWisata.deskripsi,
                  style: TextStyle(fontFamily: 'tese'),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                            "asset/images/istockphoto-1145422105-612x612.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(tempatWisata.urlGambar[0]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
