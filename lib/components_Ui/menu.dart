import 'package:flutter/material.dart';
import 'package:project/components_Ui/screen_meter.dart';
import 'package:project/components_Ui/Adverts.dart';
import 'package:project/components_Ui/notification.dart';
import 'package:project/components_Ui/consumption.dart';
import 'package:project/components_Ui/menu_service/menu_service.dart';
import 'package:project/components_Ui/layout_base/base_screen.dart';

class MenuScreen extends BasePageScreen {
  final String userName;
  final String numberMeter;
  const MenuScreen(this.userName, this.numberMeter) : super();
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends BasePageScreenState<MenuScreen> with BaseScreen {
  // TO GIVE THE TITLE OF THE APP BAR

  @override
  String appBarTitle() {
    return "Meter - services";
  } // TO GIVE THE TITLE OF service

  @override
  String serviceTitle() {
    return "  Menu Meter services";
  }

  @override
  Widget padding() {
    String userName = widget.userName;
    String numberMeter = widget.numberMeter;
    var Notification = Ui.MenuService(
        "Notification",
        NotificationsScreen(userName, numberMeter),
        Icons.notification_add,
        context);
    var advertsScreen = Ui.MenuService("  Adverts  ",
        AdvertsScreen(userName, numberMeter), Icons.medication, context);
    var meterScreen = Ui.MenuService(
        "  Screen  ",
        MeterScreen(userName, numberMeter),
        Icons.mobile_screen_share_sharp,
        context);
    var myHomePage = Ui.MenuService(
        "Amortize ",
        ConsumptionScreen(userName, numberMeter),
        Icons.model_training_outlined,
        context);
    var otherService = Ui.MenuService(
        "   Other    ",
        MenuScreen(userName, numberMeter),
        Icons.design_services_outlined,
        context);
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10.0,
          children: <Widget>[
            Notification,
            advertsScreen,
            meterScreen,
            myHomePage,
            otherService
          ],
        ),
      ),
    );
  }
}
