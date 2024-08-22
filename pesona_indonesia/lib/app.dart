import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    'Explorer Destinations',
                    style: TextStyle(
                      fontFamily: "tese",
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'tese',
                                      fontSize: 16.0,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Popular',
                            style: TextStyle(
                              fontFamily: 'tese',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Favorite',
                            style: TextStyle(
                              fontFamily: 'tese',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Recommended',
                            style: TextStyle(
                              fontFamily: 'tese',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'News',
                            style: TextStyle(
                              fontFamily: 'tese',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Promo',
                            style: TextStyle(
                              fontFamily: 'tese',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CardWidget(),
                CardWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding CardWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('asset/images/bosscha.jpg'))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                child: Text(
                  'Bumi Siliwangi',
                  style: TextStyle(
                    fontFamily: 'tese',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 3.0,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(Icons.location_on),
                        Text(
                          'Siliwangi',
                          style: TextStyle(
                            fontFamily: 'tese',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontFamily: 'tese',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
