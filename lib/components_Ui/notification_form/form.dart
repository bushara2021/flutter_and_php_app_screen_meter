import 'package:flutter/material.dart';

InputDecoration myInputDecoration(String label, IconData icon) {
  return InputDecoration(
    labelText: label, //show label as placeholder
    labelStyle:
        TextStyle(color: Colors.orange[100], fontSize: 20), //hint text style
    prefixIcon: Padding(
        padding: EdgeInsets.only(left: 20, right: 10),
        child: Icon(
          icon,
          color: Colors.orange[100],
        )
        //padding and icon for prefix
        ),

    contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
            color: Colors.orange, width: 1)), //default border of input

    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.orange, width: 1)), //focus border

    fillColor: Color.fromRGBO(251, 140, 0, 0.5),
    filled: true, //set true if you want to show input background
  );
}

Widget errmsg(String text) {
  //error message widget.
  return Container(
    padding: EdgeInsets.all(15.00),
    margin: EdgeInsets.only(bottom: 10.00),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.red,
        border: Border.all(width: 2)), //
    //color: Colors.red[300],
    child: Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 6.00),
        child: Icon(Icons.info, color: Colors.white),
      ), // icon for error message

      Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
      //show error message text
    ]),
  );
}
