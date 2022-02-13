import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

String errormsg = "";
final myText = TextEditingController();
final myPhone = TextEditingController();
bool error = false, showprogress = false;

String phone = "", text = "", type = "";
int idDataHolder = 0;
bool value = false;
int val = -1;

sendNotification(String userName, String numberMeter, setState,
    navigateToNextActivity, Type, _type) async {
  if (myPhone.text.toString() == "" || myText.text.toString() == "") {
    setState(() {
      showprogress = false;
      errormsg = "Enter your phone";
    });
  } else {
    ;
    text = myText.text;
    String apiurl = "http://192.168.43.74/project/Notification.php?name=" +
        userName +
        "&id=" +
        numberMeter +
        "&phone=" +
        phone +
        "&text=" +
        text +
        "&type=" +
        _type.toString(); //api url
    //dont use http://localhost , because emulator don't get that address
    //insted use your local IP address or use live URL
    //hit "ipconfig" in windows or "ip a" in linux to get you local IP
    try {
      var response = await http.get(Uri.parse(apiurl));

      if (response.statusCode == 200) {
        var jsondata = json.decode(response.body);
        if (jsondata["error"]) {
          setState(() {
            showprogress = false; //don't show progress indicator
            error = true;
            errormsg = jsondata["message"];
          });
        } else {
          if (jsondata["success"]) {
            setState(() {
              idDataHolder = int.parse(jsondata["number"]);
              myText.text = "";

              myPhone.text = "";
              _type = Type.Pravite;
              error = false;
              showprogress = true;
            });
            navigateToNextActivity();
          } else {
            showprogress = false;
            error = true;
            errormsg = "Something went wrong.";
          }
        }
      } else {
        setState(() {
          showprogress = false; //don't show progress indicator
          error = true;
          errormsg = "Error during connecting to server.";
        });
      }
    } catch (error) {
      throw (error);
    }
  }
}
