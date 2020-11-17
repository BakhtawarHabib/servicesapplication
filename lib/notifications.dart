import 'package:flutter/material.dart';

final Color textcolorr = Color(0XFF993052);

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: textcolorr,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: textcolorr,
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.red, width: 1)),
                  child: ListTile(
                    subtitle: Text("2days ago"),
                    trailing: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage("assets/six.jpg"))),
                    ),
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage("assets/gentle.jpg"))),
                    ),
                    title: Text(
                      "Sentoman Denzier accepted your service request",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                )));
  }
}
