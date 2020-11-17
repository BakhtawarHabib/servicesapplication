import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'Proceedtocart.dart';

// final Color Colors.white = Color(0XFF993052);
final Color textcolorr = Color(0XFF993052);

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        backgroundColor: textcolorr,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: new IconThemeData(color: textcolorr),
          title: Text(
            "About",
            style: TextStyle(color: textcolorr),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/gentle.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      Text(
                        "I m Sentoman Denzier.I am a Designer.I will do your makeup in 200Dollars How are you I m Sentoman Denzier.I am Designer.I will do your makeup in 200Dollars.How are your",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 18),
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "About me:",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                child: Text(
                  "Sentoman Denzier",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.call,
                        size: 40.0,
                        color: Colors.green,
                      ),
                      Text(
                        "+9233939339",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: SmoothStarRating(
                        rating: 3.0,
                        allowHalfRating: false,
                        onRated: (v) {},
                        starCount: 5,
                        size: 25.0,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_half,
                        isReadOnly: true,
                        color: Colors.yellow,
                        borderColor: Colors.yellow,
                        spacing: 1.0),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Email:  Sentoman Denzier@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Pricing",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "100\$- 120\$",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(10.0),
                  width: 500,
                  height: 140,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "No.of Customers",
                            style: TextStyle(
                                color: textcolorr,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: 100.0,
                          ),
                          IconButton(
                              icon: Icon(Icons.add_circle_outline_rounded,
                                  color: textcolorr),
                              onPressed: add),
                          Text(
                            "$_n",
                            style: TextStyle(
                                color: textcolorr,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline,
                                color: textcolorr),
                            onPressed: minus,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        height: 50,
                        minWidth: 250,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Proceedtocarttwo()));
                        },
                        shape: StadiumBorder(),
                        color: textcolorr,
                        child: Text(
                          "Proceed to cart",
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
