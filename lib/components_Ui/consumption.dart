import 'dart:async';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:project/functions/fetch/Fetch_data.dart';
import 'package:project/components_Ui/layout_base/base_screen.dart';
import 'package:project/functions/fetch/data/data.dart';

class ConsumptionScreen extends BasePageScreen {
  final String userName;
  final String numberMeter;
  const ConsumptionScreen(this.userName, this.numberMeter) : super();
  @override
  _AdvertsScreenState createState() => _AdvertsScreenState();
}

class _AdvertsScreenState extends BasePageScreenState<ConsumptionScreen>
    with BaseScreen {
  // TO GIVE THE TITLE OF THE APP BAR

  @override
  String appBarTitle() {
    return "consumption - service";
  } // TO GIVE THE TITLE OF service

  @override
  String serviceTitle() {
    return " rate consumption Meter";
  }

  Timer? _timer;
  double _value = 130;

  _MyHomePageState() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (_timer) {
      setState(() {
        _value = 1;
        ;
        _value = double.parse(_value.toStringAsFixed(1));
      });
    });
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
              height: 410.0,
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
                              height: 385.0,
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
                                                return SfRadialGauge(axes: <
                                                    RadialAxis>[
                                                  RadialAxis(
                                                      startAngle: 270,
                                                      endAngle: 270,
                                                      minimum: 0,
                                                      maximum: 80,
                                                      interval: 10,
                                                      radiusFactor: 0.4,
                                                      showAxisLine: false,
                                                      showLastLabel: false,
                                                      minorTicksPerInterval: 4,
                                                      majorTickStyle:
                                                          MajorTickStyle(
                                                              length: 8,
                                                              thickness: 3,
                                                              color:
                                                                  Colors.white),
                                                      minorTickStyle:
                                                          MinorTickStyle(
                                                              length: 3,
                                                              thickness: 1.5,
                                                              color:
                                                                  Colors.grey),
                                                      axisLabelStyle:
                                                          GaugeTextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 14),
                                                      onLabelCreated:
                                                          labelCreated),
                                                  RadialAxis(
                                                      minimum: 0,
                                                      maximum: 200,
                                                      labelOffset: 30,
                                                      axisLineStyle:
                                                          AxisLineStyle(
                                                              thicknessUnit:
                                                                  GaugeSizeUnit
                                                                      .factor,
                                                              thickness: 0.03),
                                                      majorTickStyle:
                                                          MajorTickStyle(
                                                              length: 6,
                                                              thickness: 4,
                                                              color:
                                                                  Colors.white),
                                                      minorTickStyle:
                                                          MinorTickStyle(
                                                              length: 3,
                                                              thickness: 3,
                                                              color:
                                                                  Colors.white),
                                                      axisLabelStyle:
                                                          GaugeTextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 14),
                                                      ranges: <GaugeRange>[
                                                        GaugeRange(
                                                            startValue: 0,
                                                            endValue: 200,
                                                            sizeUnit:
                                                                GaugeSizeUnit
                                                                    .factor,
                                                            startWidth: 0.03,
                                                            endWidth: 0.03,
                                                            color: _value <= 70
                                                                ? Colors.green
                                                                : _value <= 80
                                                                    ? Colors
                                                                        .blue
                                                                    : Colors
                                                                        .red)
                                                      ],
                                                      pointers: <GaugePointer>[
                                                        NeedlePointer(
                                                            value: _value,
                                                            needleLength: 0.95,
                                                            enableAnimation:
                                                                true,
                                                            animationType:
                                                                AnimationType
                                                                    .ease,
                                                            needleStartWidth:
                                                                1.5,
                                                            needleEndWidth: 6,
                                                            needleColor: _value <=
                                                                    70
                                                                ? Colors.green
                                                                : _value <= 80
                                                                    ? Colors
                                                                        .blue
                                                                    : Colors
                                                                        .red,
                                                            knobStyle: KnobStyle(
                                                                knobRadius:
                                                                    0.09,
                                                                sizeUnit:
                                                                    GaugeSizeUnit
                                                                        .factor))
                                                      ],
                                                      annotations: <
                                                          GaugeAnnotation>[
                                                        GaugeAnnotation(
                                                            widget: Container(
                                                                child: Column(
                                                                    children: <
                                                                        Widget>[
                                                                  Text(
                                                                      '\n\n\n' +
                                                                          (double.parse((snapshot.data![index].consumptionReading).toStringAsFixed(2)))
                                                                              .toString(),
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              25,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color:
                                                                              Colors.white)),
                                                                  SizedBox(
                                                                      height:
                                                                          20),
                                                                  Text('Wh/d',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color:
                                                                              Colors.white)),
                                                                  Text(
                                                                      'weekley : ' +
                                                                          (double.parse((snapshot.data![index].consumptionReading * 7).toStringAsFixed(2)))
                                                                              .toString() +
                                                                          'KWh',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                      )),
                                                                  Text(
                                                                      'monthly :' +
                                                                          (double.parse((snapshot.data![index].consumptionReading * 30).toStringAsFixed(2)))
                                                                              .toString() +
                                                                          'KWh',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                      )),
                                                                ])),
                                                            angle: 90,
                                                            positionFactor:
                                                                0.75)
                                                      ])
                                                ]);
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
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void labelCreated(AxisLabelCreatedArgs args) {
    if (args.text == '0') {
      args.text = 'N';
      args.labelStyle = GaugeTextStyle(
          color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14);
    } else if (args.text == '10')
      args.text = '';
    else if (args.text == '20')
      args.text = 'E';
    else if (args.text == '30')
      args.text = '';
    else if (args.text == '40')
      args.text = 'S';
    else if (args.text == '50')
      args.text = '';
    else if (args.text == '60')
      args.text = 'W';
    else if (args.text == '70') args.text = '';
  }
}
