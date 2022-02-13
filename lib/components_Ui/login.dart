import 'package:flutter/material.dart';
import 'package:project/functions/login/login.dart';
import 'package:project/components_Ui/card_login/card_login.dart';
import 'package:flutter_login/flutter_login.dart';
import 'dart:async';
import 'package:project/components_Ui/Menu.dart';

class LoginScreen extends StatelessWidget with LoginFunction {
  Future<String> _authUser(LoginData data) {
    showprogress = true;
    //api url
    //dont use http://localhost , because emulator don't get that address
    //insted use your local IP address or use live URL
    //hit "ipconfig" in windows or "ip a" in linux to get you local IP
    userName = data.name;
    numberMeter = data.password;
    return startLogin(data.password, data.name);
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return '_recoverPassword not exists';
      }
      return '';
    });
  }

  final inputBorder = BorderRadius.vertical(
    bottom: Radius.circular(10.0),
    top: Radius.circular(20.0),
  );

  @override
  Widget build(BuildContext context) {
    void OnLogin() {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MenuScreen(numberMeter, numberMeter)));
    }

    var cardlogin = Ui.CardLogin(
        OnLogin, _authUser, _recoverPassword, inputBorder, context);
    return Scaffold(
      backgroundColor: Image.asset('img/vennify_media.png').color,
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white60, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 35,
              ),
              color: Colors.teal[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Center(
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10.0,
                        children: <Widget>[
                          SizedBox(height: 540.0, child: cardlogin),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      )),
    );
  }
}
