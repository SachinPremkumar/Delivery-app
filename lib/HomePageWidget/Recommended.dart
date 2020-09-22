import 'package:flutter/material.dart';

import '../Categories.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              'Recommended',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF153E73),
              ),
            ),
          ),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: special.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 40),
                              height: 120,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.grey,
                                    )
                                  ])),
                          Positioned(
                            child: Image(
                              height: 150,
                              width: 150,
                              image: AssetImage(special[index]['ImagePath']),
                            ),
                          ),
                          Positioned(
                              top: 10,
                              left: 135,
                              child: Text(
                                special[index]['name'],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFC0C2C5),
                                ),
                              )),
                          Positioned(
                              top: 40,
                              left: 135,
                              child: Text(
                                special[index]['title'],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF153E73),
                                ),
                              )),
                          Positioned(
                              top: 55,
                              left: 135,
                              child: Text(
                                special[index]['subtitle'],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF153E73),
                                ),
                              )),
                          Positioned(
                              top: 68,
                              left: 135,
                              child: Text(
                                special[index]['price'],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF153E73),
                                ),
                              )),
                          Positioned(
                              bottom: 50,
                              right: 10,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                      )
                                    ]),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Color(0xFF153E73),
                                ),
                              )),
                          Positioned(
                              right: 5,
                              top: 10,
                              child: Container(
                                height: 21,
                                width: 21,
                                child: Image(
                                    color: Color(0xFFF02756),
                                    image: AssetImage('assets/Full red.png')),
                              ))
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
