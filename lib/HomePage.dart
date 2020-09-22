import 'package:flutter/material.dart';

import 'HomePageWidget/Explore.dart';
import 'HomePageWidget/Popular.dart';
import 'HomePageWidget/Recommended.dart';
import 'HomePageWidget/bottomBar.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                )
              ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xFFE2EDF2)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            imageWidget(Color(0xFF5117AC), 'assets/Search.png'),
                            SizedBox(width: 10),
                            Text(
                              'Search',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                color: Color(0xFFE2EDF2),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Text(
                      'Start',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0xFF5117AC),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 70),
                    imageWidget(Color(0xFF20D0C4), 'assets/Bell.png'),
                    SizedBox(width: 5),
                    imageWidget(Color(0xFFF02756), 'assets/Token.png'),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.vertical),
            ExploreList(),
            PopularList(),
            RecommendedList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget imageWidget(Color _color, String _image) {
    return Image(
      height: 25,
      width: 25,
      image: AssetImage(_image),
      color: _color,
    );
  }
}
