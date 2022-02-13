import 'package:flutter/material.dart';

class Ui {
  static Widget MenuService(serviceName, route, iconName, context) {
    return SizedBox(
      width: 130.0,
      height: 130.0,
      child: Card(
        color: Colors.black26,
        elevation: 2.0,
        shape: CircleBorder(),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              // ignore: deprecated_member_use
              // ignore: deprecated_member_use
              RawMaterialButton(
                splashColor: Colors.teal,
                padding: const EdgeInsets.all(7.0),
                onPressed: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => route))
                },
                shape: CircleBorder(),
                fillColor: Colors.black26,
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    SizedBox(
                        width: 170.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.orange,
                          elevation: 2.0,
                        )),
                    Icon(
                      iconName,
                      size: 41,
                      color: Colors.white,
                    ),
                    Text(
                      "$serviceName\n    Meter",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 11.5,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
