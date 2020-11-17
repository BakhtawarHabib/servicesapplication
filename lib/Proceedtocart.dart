import 'dart:ui';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

final Color textcolorr = Color(0XFF993052);

class Proceedtocarttwo extends StatefulWidget {
  @override
  _ProceedtocarttwoState createState() => _ProceedtocarttwoState();
}

class _ProceedtocarttwoState extends State<Proceedtocarttwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: textcolorr,
          title: Text(
            "Summary",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            margin: EdgeInsets.all(5.0),
            height: MediaQuery.of(context).size.height,
            child: Stack(children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 5.0,
                    ),
                    DateTimePicker(
                      type: DateTimePickerType.dateTimeSeparate,
                      dateMask: 'd MMM, yyyy',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      icon: Icon(
                        Icons.event,
                      ),
                      dateLabelText: 'Date',
                      timeLabelText: 'Hour',
                      selectableDayPredicate: (date) {
                        // Disable weekend days to select from the calendar
                        if (date.weekday == 6 || date.weekday == 7) {
                          return false;
                        }

                        return true;
                      },
                      onChanged: (val) => print(val),
                      validator: (val) {
                        print(val);
                        return null;
                      },
                      onSaved: (val) => print(val),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total effective cost",
                          style: TextStyle(
                              color: textcolorr,
                              fontWeight: FontWeight.w400,
                              fontSize: 22),
                        ),
                        Text(
                          "1500\$",
                          style: TextStyle(
                              color: textcolorr,
                              fontWeight: FontWeight.w400,
                              fontSize: 22),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total cost",
                          style: TextStyle(
                              color: textcolorr,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          "1500\$",
                          style: TextStyle(
                              color: textcolorr,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Text(
                      "Services",
                      style: TextStyle(
                        color: textcolorr,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
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
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return listitem();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 200,
                          shape: StadiumBorder(),
                          color: textcolorr,
                          onPressed: () {},
                          child: Text(
                            "Serivce send request",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ])));
  }

  Widget listitem() {
    return Container(
        decoration: BoxDecoration(
            color: textcolorr, borderRadius: BorderRadius.circular(5.0)),
        width: 400,
        height: 95,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(7.0),
                alignment: Alignment.center,
                height: 50,
                width: 50,
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
              Row(
                children: [
                  Text(
                    "No.of Customers",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  IconButton(
                      icon: Icon(Icons.add_circle_outline_rounded,
                          color: Colors.white),
                      onPressed: null),
                  Text(
                    "2",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  IconButton(
                      icon: Icon(Icons.remove_circle_outline,
                          color: Colors.white),
                      onPressed: null),
                ],
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
                width: 17.0,
              ),
              Text(
                "120\$",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 150.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "Remove",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  Icon(
                    Icons.remove_circle_rounded,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          )
        ]));
  }
}
