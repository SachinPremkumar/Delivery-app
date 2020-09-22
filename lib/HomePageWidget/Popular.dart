import 'package:flutter/material.dart';

import '../Categories.dart';

class PopularList extends StatefulWidget {
  PopularList({Key key}) : super(key: key);

  @override
  _PopularListState createState() => _PopularListState();
}

class _PopularListState extends State<PopularList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              'Popular products',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF153E73),
              ),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          width: 170,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 45,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue[300],
                                          blurRadius: 25,
                                          offset: Offset(5, 5),
                                        )
                                      ]),
                                  child: Image(
                                      image: AssetImage(
                                          products[index]['ImagePath'])),
                                ),
                              ),
                              Positioned(
                                  bottom: 50,
                                  left: 20,
                                  child: Text(
                                    products[index]['name'],
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF153E73),
                                    ),
                                  )),
                              Positioned(
                                  bottom: 38,
                                  left: 20,
                                  child: Text(
                                    products[index]['subline'],
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      color: Color(0xFF153E73),
                                    ),
                                  )),
                              Positioned(
                                  bottom: 13,
                                  left: 20,
                                  child: Text(
                                    '\$12.58',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFF153E73),
                                    ),
                                  )),
                              Positioned(
                                  bottom: 8,
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
                                        color: Color(products[index]['Color']),
                                        image: AssetImage(
                                            products[index]['IconPath'])),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
