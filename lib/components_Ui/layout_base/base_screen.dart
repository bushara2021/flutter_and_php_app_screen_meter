import 'package:flutter/material.dart';
import 'package:project/components_Ui/layout_base/user/user.dart';
import 'package:project/components_Ui/menu.dart';

abstract class BasePageScreen extends StatefulWidget {
  const BasePageScreen({Key? key}) : super(key: key);
}

abstract class BasePageScreenState<Page extends BasePageScreen>
    extends State<Page> {
  String appBarTitle();
  String serviceTitle();
}

mixin BaseScreen<Page extends BasePageScreen> on BasePageScreenState<Page> {
  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context); // provide us with the query
    print(query.size.aspectRatio); //aspect ratio
    print(query.size.height); //screen height
    print(query.size.width); //screen width
    var listViewLogout = LogoutUi.ListViewLogout(context);
    return Scaffold(
      backgroundColor: Image.asset('img/vennify_media.png').color,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          appBarTitle(),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal[300],
      ),
      body: SafeArea(
        child: ListView(children: <Widget>[
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
                          iconSize: 40.0,
                          icon: Icon(Icons.mobile_screen_share_sharp,
                              color: Colors.blueGrey),
                          onPressed: () {},
                        ),
                        Text(
                          serviceTitle(),
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
                          iconSize: 40.0,
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    MenuScreen("mohmed", "3456")));
                          },
                        ),
                      ],
                    ),
                  ),
                  padding(),
                ]),
          )
        ]),
      ),
      drawer: Drawer(
        child: listViewLogout,
      ),
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
    );
  }

  Widget padding();
}
