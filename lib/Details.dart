import 'package:flutter/material.dart';
import 'package:food_app/Cart.dart';

import 'Categories.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              ClipPath(
                clipper: CustomCurve(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage('assets/Pablo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: 30,
                  left: 120,
                  child: Text(
                    'Special burger',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                top: 38,
                left: 30,
                child:
                    Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
              ),
              Positioned(
                  right: 60,
                  top: 265,
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1395E),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.favorite_border, color: Colors.white),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Description',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: Color(0xFF153E73),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF153E73),
              ),
            ),
          ),
          Container(
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ingredients',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Color(0xFF153E73),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '10 ingredients',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xFFE2EDF2),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ingradient.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 104,
                                width: 91,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        ingradient[index]['IconPath'])),
                              ),
                              SizedBox(height: 5),
                              Text(
                                ingradient[index]['name'],
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF153E73),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  child: Container(
                    height: 63,
                    width: 223,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Color(0xFF491894), Color(0xFF2CD5C4)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )),
                    child: Center(
                      child: Text(
                        'Order now',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  '\$12.58',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF153E73),
                    fontSize: 30,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          0, size.height - 50, 50, size.height - 50) // Add line p1p2
      ..lineTo(size.width - 50, size.height - 50)
      ..quadraticBezierTo(
          size.width, size.height - 50, size.width, size.height - 140)
      ..lineTo(size.width, 0) // Add line p2p3
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
