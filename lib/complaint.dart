import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:servicesapp/bookingdetails.dart';

class ComplaintScreen extends StatefulWidget {
  @override
  _ComplaintScreenState createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: textcolor,
        title: Text("Complaint / Suggestion"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Please write to us for any queries",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: textcolor),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Theme(
                data: new ThemeData(
                  primaryColor: textcolor,
                  primaryColorDark: textcolor,
                ),
                child: TextFormField(
                  maxLength: 40,
                  decoration: InputDecoration(hintText: "Title"),
                )),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Theme(
                data: new ThemeData(
                  primaryColor: textcolor,
                  primaryColorDark: textcolor,
                ),
                child: TextFormField(
                  maxLines: 3,
                  maxLength: 150,
                  decoration: InputDecoration(
                      hintText: "Description", hintStyle: TextStyle()),
                )),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: MaterialButton(
              onPressed: () {},
              color: textcolor,
              height: 60,
              minWidth: MediaQuery.of(context).size.width,
              child: Text(
                "Submit",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
