import 'package:flutter/material.dart';
import 'package:project/functions/send_notification/send_notification.dart';
import 'package:project/components_Ui/layout_base/base_screen.dart';
import 'package:project/components_Ui/notification_status.dart';
import 'package:project/components_Ui/notification_form/form.dart';

class NotificationsScreen extends BasePageScreen {
  final String userName;
  final String numberMeter;
  const NotificationsScreen(this.userName, this.numberMeter) : super();
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

enum Type { Pravite, Public }

Type? _type = Type.Pravite;

class _NotificationsScreenState extends BasePageScreenState<NotificationsScreen>
    with BaseScreen {
  // TO GIVE THE TITLE OF THE APP BAR

  @override
  String appBarTitle() {
    return "Meter - Notifications";
  } // TO GIVE THE TITLE OF service

  @override
  String serviceTitle() {
    return "  Notifications Meter ";
  }

  @override
  Widget padding() {
    String userName = widget.userName;
    String numberMeter = widget.numberMeter;
    navigateToNextActivity(BuildContext context, int dataHolder) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              NotificationsStatus((dataHolder + 1).toString())));
    }

    String notificationtext = 'Notification';
    String phonelable = "Your phone";
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10.0,
          children: <Widget>[
            SizedBox(
              width: 290.0,
              height: 398.0,
              child: Card(
                color: Colors.teal[300],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white60, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8.0,
                          children: <Widget>[
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  errormsg = 'Please enter number phone';
                                  return errormsg;
                                }
                                return errormsg;
                              },

                              controller: myPhone, //set phone controller
                              style: TextStyle(
                                  color: Colors.orange[100], fontSize: 20),

                              decoration: myInputDecoration(
                                phonelable,
                                Icons.phone,
                              ),
                              onChanged: (value) {
                                phone = value;
                              },
                              keyboardType: TextInputType.phone,
                            ),
                            SizedBox(
                              width: 10.0,
                              child: Container(
                                //show error message here
                                margin: EdgeInsets.only(top: 0),
                                padding: EdgeInsets.all(4),
                                child: error ? errmsg(errormsg) : Container(),
                                //if error == true then show error message
                                //else set empty container as child
                              ),
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  errormsg = 'Please enter notification text';
                                  return errormsg;
                                }
                                return null;
                              },
                              controller: myText,
                              decoration: InputDecoration(
                                labelText:
                                    notificationtext, //show label as placeholder
                                labelStyle: TextStyle(
                                    color: Colors.orange[100],
                                    fontSize: 20), //hint text style
                                prefixIcon: Padding(
                                    padding: EdgeInsets.only(left: 0, right: 0),
                                    child: Icon(
                                      Icons.notifications_active,
                                      color: Colors.orange[100],
                                    )
                                    //padding and icon for prefix
                                    ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.orange,
                                        width: 1)), //default border of input

                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.orange,
                                        width: 1)), //focus border

                                fillColor: Color.fromRGBO(251, 140, 0, 0.5),
                                filled: true,
                              ),
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.orange[100]),
                              maxLines: 4,
                            ),
                            Center(
                                child: Card(
                                    color: Color.fromRGBO(251, 200, 50, 0.5),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: Row(children: [
                                      Text(' Type :\n',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.orange[100])),
                                      SizedBox(width: 3.0),
                                      Row(children: [
                                        SizedBox(
                                          width: 10,
                                          child: Radio<Type>(
                                            fillColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => Colors.white),
                                            focusColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => Colors.white),
                                            value: Type.Pravite,
                                            groupValue: _type,
                                            onChanged: (Type? value) {
                                              setState(() {
                                                _type = value;
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text('Praivte',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white))
                                      ]),
                                      SizedBox(width: 10.0),
                                      Row(children: [
                                        SizedBox(
                                          width: 10,
                                          child: Radio<Type>(
                                            fillColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => Colors.white),
                                            focusColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => Colors.white),
                                            value: Type.Public,
                                            groupValue: _type,
                                            onChanged: (Type? value) {
                                              setState(() {
                                                _type = value;
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text('Public',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white))
                                      ]),
                                    ]))),
                            Center(
                                child: SizedBox(
                                    width: 140.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      color: Colors.teal,
                                      child: MaterialButton(
                                        height: 40,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0)),
                                        color: Colors.black26,

                                        onPressed: () {
                                          // Within the `FirstRoute` widget

                                          setState(() {
                                            //show progress indicator on click
                                            showprogress = false;
                                          });
                                          if (myText.text.isNotEmpty &&
                                              myPhone.text.isNotEmpty) {
                                            sendNotification(
                                                userName,
                                                numberMeter,
                                                setState,
                                                navigateToNextActivity(
                                                    context, idDataHolder),
                                                Type,
                                                _type);
                                          }
                                          if (myText.text.isEmpty) {
                                            notificationtext =
                                                'Please Enter notification text';
                                          }
                                          if (myPhone.text.isEmpty) {
                                            phonelable =
                                                'Please Enter your phone';
                                          }
                                          // startLogin();
                                        },
                                        child: showprogress
                                            ? SizedBox(
                                                height: 30,
                                                width: 30,
                                                child:
                                                    CircularProgressIndicator(
                                                  backgroundColor:
                                                      Colors.orange[100],
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(Colors.white),
                                                ),
                                              )
                                            : Text('Send',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                        // if showprogress == true then show progress indicator
                                        // else show "LOGIN NOW" text
                                        colorBrightness: Brightness.dark,
                                      ),
                                    )))
                          ],
                        ))),
              ),
            ),
            SizedBox(
                width: 260.0,
                height: 2.0,
                child: Card(
                  color: Colors.teal[300],
                ))
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    phone = "";
    text = "";
    errormsg = "";
    error = false;
    showprogress = false;
    super.initState();
  }
}
