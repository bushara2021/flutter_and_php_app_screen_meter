import 'package:flutter/material.dart';
import 'package:project/functions/fetch/Fetch_data.dart';
import 'package:project/functions/fetch/data/data.dart';

class GetAdvert extends StatefulWidget {
  final String idHolder;
  GetAdvert(this.idHolder);
  @override
  State<StatefulWidget> createState() {
    return SecondScreen(this.idHolder);
  }
}

class SecondScreen extends State<GetAdvert> {
  final String idHolder;

  SecondScreen(this.idHolder);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Image.asset('img/vennify_media.png').color,
            appBar: AppBar(
                title: Text('Advert meter Details',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                backgroundColor: Colors.teal[300],
                automaticallyImplyLeading: true,
                leading: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context, false),
                )),
            bottomNavigationBar: Material(
                shadowColor: Colors.blueGrey,
                color: Colors.cyan[50],
                child: SizedBox(
                  child: ListTile(
                    leading: Icon(Icons.electrical_services_outlined,
                        color: Colors.teal, size: 45),
                    title: Text('My Electricity',
                        style: TextStyle(
                          color: Colors.teal,
                        )),
                    subtitle: Text('©Copyright 2021-CS.All rights reserved.',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 10,
                        )),
                  ),
                  width: 140.0,
                  height: 60.0,
                )),
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
                    top: 5,
                  ),
                  color: Colors.teal[300],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            IconButton(
                              iconSize: 35.0,
                              icon: Icon(Icons.medication,
                                  color: Colors.blueGrey),
                              onPressed: () {},
                            ),
                            Text(
                              "  Adverted Meter showing",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                            ),
                            IconButton(
                              iconSize: 35.0,
                              icon: Icon(
                                Icons.menu,
                                color: Colors.blueGrey,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Padding(
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
                                  color: Colors.black26,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white60, width: 3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                      child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FutureBuilder<List<Data>>(
                                            future: fetchDataRead(
                                                'http://192.168.43.74/project/Advert.php',
                                                idHolder),
                                            builder: (context, snapshot) {
                                              if (!snapshot.hasData)
                                                return Center(
                                                    child:
                                                        CircularProgressIndicator());

                                              return ListView.builder(
                                                itemCount:
                                                    snapshot.data!.length,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                      children: <Widget>[
                                                        GestureDetector(
                                                            onTap: () {
                                                              print(snapshot
                                                                  .data![index]
                                                                  .advertsId);
                                                            },
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'no :' +
                                                                            snapshot.data![index].advertsId.toString(),
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      )),
                                                                  Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'title : ' +
                                                                            snapshot.data![index].advertsTitle,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      )),
                                                                  Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              15),
                                                                      child:
                                                                          Text(
                                                                        'date : ' +
                                                                            snapshot.data![index].advertsDate.toString(),
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      )),
                                                                  Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'text : ' +
                                                                            snapshot.data![index].advertsText.toString(),
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.cyan[50],
                                                                          fontSize:
                                                                              18.0,
                                                                        ),
                                                                      )),
                                                                ]))
                                                      ]);
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
                      )
                    ],
                  ),
                ),
              ],
            ))));
  }
}
