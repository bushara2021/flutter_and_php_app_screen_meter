import 'package:flutter/material.dart';
import 'package:project/functions/fetch/Fetch_data.dart';
import 'package:project/components_Ui/layout_base/base_screen.dart';
import 'package:project/components_Ui/get_advert.dart';
import 'package:project/functions/fetch/data/data.dart';

class AdvertsScreen extends BasePageScreen {
  final String userName;
  final String numberMeter;
  const AdvertsScreen(this.userName, this.numberMeter) : super();
  @override
  _AdvertsScreenState createState() => _AdvertsScreenState();
}

class _AdvertsScreenState extends BasePageScreenState<AdvertsScreen>
    with BaseScreen {
  // TO GIVE THE TITLE OF THE APP BAR

  @override
  String appBarTitle() {
    return "Meter - service";
  } // TO GIVE THE TITLE OF service

  @override
  String serviceTitle() {
    return "  Adverts Meter service";
  }

  navigateToNextActivity(BuildContext context, int dataHolder) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => GetAdvert(dataHolder.toString())));
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
              width: 290.0,
              height: 398.0,
              child: Card(
                color: Colors.teal[300],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white60, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FutureBuilder<List<Data>>(
                          future: fetchData(userName, numberMeter,
                              'http://192.168.43.74/project/Adverts.php?name='),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData)
                              return Center(child: CircularProgressIndicator());

                            return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        navigateToNextActivity(context,
                                            snapshot.data![index].advertsId);
                                      },
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 5, 0, 5),
                                              child: Center(
                                                child: SizedBox(
                                                    width: 245.0,
                                                    height: 130.0,
                                                    child: Card(
                                                        shadowColor:
                                                            Colors.black,
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color:
                                                                    Colors.teal,
                                                                width: 3),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            20))),
                                                        color: Colors.teal,
                                                        elevation: 2.0,
                                                        child: SizedBox(
                                                            width: 215.0,
                                                            height: 95.0,
                                                            child: Card(
                                                                color: Colors
                                                                    .black26,
                                                                child: Column(
                                                                  children: <
                                                                      Widget>[
                                                                    Image.asset(
                                                                      "img/vennify_media.png",
                                                                      width:
                                                                          60.0,
                                                                      height:
                                                                          30.0,
                                                                    ),
                                                                    Text(
                                                                      " title : " +
                                                                          snapshot
                                                                              .data![
                                                                                  index]
                                                                              .advertsTitle +
                                                                          "\n" +
                                                                          " date :" +
                                                                          snapshot
                                                                              .data![index]
                                                                              .advertsDate,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            15.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ))))),
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Divider(color: Colors.white),
                                  ],
                                );
                              },
                            );
                          },
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
}
