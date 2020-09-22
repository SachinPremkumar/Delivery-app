import 'package:flutter/material.dart';

import '../Categories.dart';

class ExploreList extends StatelessWidget {
  const ExploreList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore Categories',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF153E73),
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFE2EDF2),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 110,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(categories[index]['Colors']),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image(
                              image: AssetImage(categories[index]['IconPath'])),
                        ),
                        SizedBox(height: 5),
                        Text(
                          categories[index]['name'],
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF153E73),
                              fontWeight: FontWeight.bold),
                        ),
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
