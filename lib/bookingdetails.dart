import 'dart:ui';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:flutter/material.dart';
import 'package:servicesapp/complaint.dart';

final Color textcolor = Color(0XFF993052);

class BookingDetails extends StatefulWidget {
  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  void _showRatingDialog() {
    // We use the built in showDialog function to show our Rating Dialog
    showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) {
          return RatingDialog(
            icon: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/gentle.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),

            title: "Give Review to the Seller",
            description: "",
            submitButton: "SUBMIT",
            alternativeButton: "Contact us instead?",
            // optional
            positiveComment: "We are so happy to hear :)", // optional
            negativeComment: "We're sad to hear :(", // optional
            accentColor: textcolor, // optional
            onSubmitPressed: (int rating) {
              print("onSubmitPressed: rating = $rating");
            },
            onAlternativePressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ComplaintScreen()));
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Booking Details"),
          backgroundColor: textcolor,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  "Pending Requests",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.white70),
                  height: MediaQuery.of(context).size.height * .41,
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.red,
                        thickness: 0.5,
                      );
                    },
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return listitem();
                    },
                  ),
                ),
                Text(
                  "Completed Orders",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.white70),
                  height: MediaQuery.of(context).size.height * .51,
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.red,
                        thickness: 0.5,
                      );
                    },
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return completedorderlist();
                    },
                  ),
                ),
              ],
            )));
  }

  Widget completedorderlist() {
    return GestureDetector(
        onTap: () {
          _showRatingDialog();
        },
        child: Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(5.0)),
            width: 400,
            height: 75,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(7.0),
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/one.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    "Cost",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "No.of Customers",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "Makeup",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    width: 65.0,
                  ),
                  Text(
                    "KES 15,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Text(
                    "2",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 22),
                  ),
                ],
              )
            ])));
  }

  Widget listitem() {
    return Container(
        decoration: BoxDecoration(
            color: textcolor, borderRadius: BorderRadius.circular(5.0)),
        width: 400,
        height: 75,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(7.0),
                alignment: Alignment.center,
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/one.jpg",
                        ),
                        fit: BoxFit.cover)),
              ),
              Text(
                "Cost",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  "No.of Customers",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Makeup",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 65.0,
              ),
              Text(
                "KES 3,500",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 90.0,
              ),
              Text(
                "2",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 22),
              ),
            ],
          )
        ]));
  }
}
