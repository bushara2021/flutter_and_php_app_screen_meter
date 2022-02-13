import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class Ui {
  static Widget CardLogin(onSubmitAnimationCompleted, _authUser,
      _recoverPassword, inputBorder, context) {
    return Card(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white60, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.white,
        elevation: 2.0,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlutterLogin(
                title: " Connect to Meter",
                logo: 'img/vennify_media.png',
                onLogin: _authUser,
                onSignup: _authUser,
                userValidator: (required) {
                  if (required == '') {
                    return 'Enter username';
                  }
                },
                passwordValidator: (required) {
                  if (required == '') {
                    return 'Enter NumberMeter';
                  }
                },
                onSubmitAnimationCompleted: () {
                  onSubmitAnimationCompleted();
                },
                onRecoverPassword: _recoverPassword,
                messages: LoginMessages(
                  userHint: 'Username',
                  passwordHint: 'NumberMeter',
                  confirmPasswordHint: 'Confirm NumberMeter',
                  loginButton: 'connect',
                  signupButton: '',
                  forgotPasswordButton: '',
                  recoverPasswordButton: 'HELP ME',
                  goBackButton: 'GO BACK',
                  confirmPasswordError: 'Not match!',
                  recoverPasswordDescription: 'Enter your username',
                  recoverPasswordSuccess: 'Password rescued ',
                ),
                theme: LoginTheme(
                  primaryColor: Colors.teal[300],
                  accentColor: Colors.orange,
                  errorColor: Colors.orange,
                  titleStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Quicksand',
                    letterSpacing: 4,
                    fontSize: 17,
                  ),
                  cardTheme: CardTheme(
                    shadowColor: Colors.white,
                    color: Colors.white,
                    elevation: 5,
                    margin: EdgeInsets.only(top: 20),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  bodyStyle: TextStyle(
                    height: 0.0,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  inputTheme: InputDecorationTheme(
                    filled: true,
                    fillColor: Colors.purple.withOpacity(.1),
                    contentPadding: EdgeInsets.zero,
                    errorStyle: TextStyle(
                      backgroundColor: Colors.orange,
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(fontSize: 13),
                    errorBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.red.shade700, width: 7),
                      borderRadius: inputBorder,
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.red.shade400, width: 8),
                      borderRadius: inputBorder,
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 5),
                      borderRadius: inputBorder,
                    ),
                  ),
                )),
          ),
        ));
  }
}
