import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

const users = const {
  '[password protected]': '12345',
  '[name protected]': 'boshara@gmail.com',
};

class LoginFunction {
  Duration get loginTime => Duration(milliseconds: 2250);

  String errormsg = "";
  bool error = false, showprogress = false;
  static String numberMeterGet = ""; // for function getNumberMeter
  static String userNameGet = ""; // for function getUserName
  String userName = "";
  String numberMeter = "";
  Future<String> startLogin(String Numbermeter, String Username) async {
    String apiurl = "http://192.168.43.74/project/login.php"; //api url
    //dont use http://localhost , because emulator don't get that address
    //insted use your local IP address or use live URL
    //hit "ipconfig" in windows or "ip a" in linux to get you local IP
    numberMeterGet = Numbermeter;
    userNameGet = Username;
    var response = await http.post(Uri.parse(apiurl), body: {
      'name': userName, //get the username text
      'id': numberMeter //get number text
    });

    if (response.statusCode == 200) {
      var jsondata = json.decode(response.body);
      if (jsondata["error"]) {
        showprogress = false; //don't show progress indicator
        error = true;
        errormsg = jsondata["message"];
        return Future.delayed(loginTime).then((_) {
          if (jsondata["message"] == "No username found.") {
            return 'Username not exists';
          }
          if (jsondata["message"] == "Your Number-Meter is Incorrect.") {
            return 'Number-Meter does not match';
          }
          return '';
        });
      } else {
        if (jsondata["success"]) {
          error = false;
          showprogress = false;

          //save the data returned from server
          //and navigate to home page
          //user shared preference to save data
        } else {
          showprogress = false; //don't show progress indicator
          error = true;
          errormsg = "Error during connecting to server.";
          return Future.delayed(loginTime).then((_) {
            return errormsg;
          });
        }
      }
    }
    return '';
  }

  static String getNumberMeter() {
    return numberMeterGet;
  }

  static String getUserName() {
    return userNameGet;
  }
}
