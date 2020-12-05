import 'package:servicesapp/Profile.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'package:flutter/material.dart';

final Color textcolorr = Color(0XFF993052);

class NearbySellerScreen extends StatefulWidget {
  @override
  _NearbySellerState createState() => _NearbySellerState();
}

class _NearbySellerState extends State<NearbySellerScreen> {
  var rating = 3.0;
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: textcolorr,
            title: Row(
              children: [
                Text("Nearby to you"),
                Icon(Icons.near_me_outlined),
              ],
            )),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    height: 230,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 0.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 10  horizontally
                              1.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: textcolorr),
                    margin: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    scale: 2.0,
                                    image: AssetImage(
                                      "assets/gentle.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Sentoman Denzier",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Profile()));
                                        },
                                        child: Text(
                                          "View Profile",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 15),
                                        )),
                                  ],
                                ),
                                SmoothStarRating(
                                    rating: rating,
                                    allowHalfRating: false,
                                    onRated: (v) {},
                                    starCount: 5,
                                    size: 20.0,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.star_half,
                                    defaultIconData: Icons.star_half,
                                    isReadOnly: true,
                                    color: Colors.yellow,
                                    borderColor: Colors.yellow,
                                    spacing: 1.0)
                              ],
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Arrival Time",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "20 minutes",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Pricing",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "KES 15,000",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                          width: 20.0,
                        ),
                        Container(
                            padding: EdgeInsets.all(10.0),
                            width: 500,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0))),
                            child: Row(
                              children: [
                                Text(
                                  "No.of Customers",
                                  style: TextStyle(
                                      color: textcolorr,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  width: 50.0,
                                ),
                                IconButton(
                                    icon: Icon(Icons.add_circle_outline_rounded,
                                        color: textcolorr),
                                    onPressed: () {
                                      add();
                                    }),
                                Text(
                                  "$_n",
                                  style: TextStyle(
                                      color: textcolorr,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: textcolorr),
                                    onPressed: () {
                                      minus();
                                    }),
                              ],
                            ))
                      ],
                    ),
                  );
                })
          ],
        ));
  }
}
