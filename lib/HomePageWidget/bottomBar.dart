import 'package:flutter/material.dart';

import '../Details.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 65,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                )
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    height: 29,
                    width: 29,
                    image: AssetImage('assets/Home.png')),
                Image(image: AssetImage('assets/shop.png'), color: Colors.grey),
              ],
            ),
          ),
          FloatingActionButton(
              child: Image(
                  image: AssetImage('assets/Basket.png'), color: Colors.white),
              backgroundColor: Color(0xFF5117AC),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              }),
          Container(
            height: 65,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                )
              ],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    height: 29,
                    width: 29,
                    image: AssetImage('assets/Like.png'),
                    color: Colors.grey),
                Image(
                    height: 29,
                    width: 29,
                    image: AssetImage('assets/Profile.png')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
