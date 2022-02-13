import 'package:flutter/material.dart';
import 'package:project/functions/fetch/Fetch_data.dart';
import 'package:project/components_Ui/layout_base/base_screen.dart';
import 'package:project/functions/fetch/data/data.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class MeterScreen extends BasePageScreen {
  final String userName;
  final String numberMeter;
  const MeterScreen(this.userName, this.numberMeter) : super();
  @override
  _MeterScreenState createState() => _MeterScreenState();
}

class _MeterScreenState extends BasePageScreenState<MeterScreen>
    with BaseScreen {
  // TO GIVE THE TITLE OF THE APP BAR

  @override
  String appBarTitle() {
    return "Meter - service";
  } // TO GIVE THE TITLE OF service

  @override
  String serviceTitle() {
    return "  Meter Meter service";
  }

  @override
  Widget padding() {
    String userName = widget.userName;
    String numberMeter = widget.numberMeter;
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10.0,
          children: <Widget>[
            SizedBox(
              width: 240.0,
              height: 240.0,
              child: Card(
                color: Colors.black26,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Column(
                        // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          SizedBox(
                              width: 230.0,
                              height: 210.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Center(
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FutureBuilder<List<Data>>(
                                          future: fetchData(
                                              userName,
                                              numberMeter,
                                              'http://192.168.43.74/project/Screen.php?name='),
                                          builder: (context, snapshot) {
                                            if (!snapshot.hasData)
                                              return Center(
                                                  child:
                                                      CircularProgressIndicator());

                                            return ListView.builder(
                                              itemCount: snapshot.data!.length,
                                              itemBuilder: (context, index) {
                                                return Column(
                                                  children: <Widget>[
                                                    GestureDetector(
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          10,
                                                                          5,
                                                                          0,
                                                                          0),
                                                              child: Center(
                                                                child: SizedBox(
                                                                    width:
                                                                        170.0,
                                                                    height:
                                                                        150.0,
                                                                    child: Card(
                                                                        color: Colors
                                                                            .black26,
                                                                        elevation:
                                                                            2.0,
                                                                        child: SizedBox(
                                                                            height: 100.0,
                                                                            child: Card(
                                                                                color: Colors.black26,
                                                                                child: Column(
                                                                                  children: <Widget>[
                                                                                    (Icon(Icons.model_training_sharp, color: Colors.white, size: 50)),
                                                                                    Text(
                                                                                      " " + (double.parse((snapshot.data![index].screenReading).toStringAsFixed(2))).toString() + "\n  KWh",
                                                                                      style: TextStyle(
                                                                                        color: Colors.white,
                                                                                        fontSize: 15.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ))))),
                                                              ),
                                                            ),
                                                          ]),
                                                    ),
                                                    Divider(
                                                        color: Colors.white),
                                                    Text(
                                                      "" +
                                                          snapshot.data![index]
                                                              .screenDate,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                        ))),
                                color: Colors.black45,
                                elevation: 2.0,
                              )),
                        ],
                      ),
                    ],
                  ),
                )),
              ),
            ),
            Text(
              "            State OF Current ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              width: 240.0,
              height: 130.0,
              child: Card(
                  child: LiteRollingSwitch(
                //initial value

                value: true,
                textOn: 'On Current',
                textOff: 'Off Current',
                colorOn: Colors.greenAccent[700],
                colorOff: Colors.redAccent[700],
                iconOn: Icons.done,
                iconOff: Icons.remove_circle_outline,
                textSize: 16.0,
                onChanged: (bool state) {
                  //Use it to manage the different states
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
