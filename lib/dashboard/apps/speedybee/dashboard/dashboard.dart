import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sub_pages/adjustment.dart';
import '../sub_pages/black_box.dart';
import '../sub_pages/command_line_interface.dart';
import '../sub_pages/configuration.dart';
import '../sub_pages/failsafe.dart';
import '../sub_pages/gps.dart';
import '../sub_pages/mode_and_pin_associate.dart';
import '../sub_pages/modes.dart';
import '../sub_pages/motors.dart';
import '../sub_pages/osd.dart';
import '../sub_pages/pid_tuning.dart';
import '../sub_pages/port.dart';
import '../sub_pages/power_and_battery.dart';
import '../sub_pages/receiver.dart';
import '../sub_pages/setup.dart';
import '../sub_pages/vtx.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

Widget _upperMenu(var mediaWidth, var mediaHeight) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        flex: 1,
        child: Container(
          height: mediaHeight / 13,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey, width: 0.5)),
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/battery.png",
                      width: mediaWidth / 15,
                      height: mediaHeight / 25,
                      color: Colors.black,
                    ),
                    const Text(
                      "0.4v",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(1),
                    child: Icon(
                      Icons.warning,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset(
                      "assets/images/parachute.png",
                      width: mediaWidth / 15,
                      height: mediaHeight / 45,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset(
                      "assets/images/link.png",
                      width: mediaWidth / 15,
                      height: mediaHeight / 45,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 3),
        height: mediaHeight / 13,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5),
            shape: BoxShape.rectangle),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 3, bottom: 3, right: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/gyroscope.png",
                      width: mediaWidth / 20,
                      height: mediaHeight / 20,
                      color: Colors.amber,
                    ),
                  ),
                  const Text(
                    "Gyro",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 0.5,
              height: mediaHeight,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 3, bottom: 3, right: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/accel.png",
                      width: mediaWidth / 20,
                      height: mediaHeight / 20,
                      color: Colors.amber,
                    ),
                  ),
                  const Text(
                    "Accel",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 0.5,
              height: mediaHeight,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 3, bottom: 3, right: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/north.png",
                      width: mediaWidth / 20,
                      height: mediaHeight / 20,
                      color: Colors.amber,
                    ),
                  ),
                  const Text(
                    "Mag",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 0.5,
              height: mediaHeight,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 3, bottom: 3, right: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/barometer.png",
                      width: mediaWidth / 20,
                      height: mediaHeight / 20,
                      color: Colors.amber,
                    ),
                  ),
                  const Text(
                    "Baro",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 0.5,
              height: mediaHeight,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 3, bottom: 3, right: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/satellite.png",
                      width: mediaWidth / 20,
                      height: mediaHeight / 20,
                      color: Colors.amber,
                    ),
                  ),
                  const Text(
                    "GPS",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 0.5,
              height: mediaHeight,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 3, bottom: 3, right: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/sonar.png",
                      width: mediaWidth / 20,
                      height: mediaHeight / 20,
                      color: Colors.amber,
                    ),
                  ),
                  const Text(
                    "Sonar",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          height: mediaHeight / 13,
          margin: const EdgeInsets.only(left: 3),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey, width: 0.5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: mediaWidth,
                padding: const EdgeInsets.all(3),
                color: Colors.grey,
                child: const Column(
                  children: [
                    Text(
                      "CPU load",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text("5%", style: TextStyle(fontSize: 10))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  "2.0 MB",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0, toggleButton = 0;

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Icon(Icons.account_circle),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/qrcode.png",
                width: mediaWidth / 15,
                height: mediaHeight / 15,
              ),
              Image.asset(
                "assets/images/title.jpeg",
                color: Colors.amber,
                width: mediaWidth / 2,
                height: mediaHeight / 2,
              ),
              const Icon(Icons.undo)
            ],
          ),
        ),
        body: Container(
          height: mediaHeight,
          child: const FlutterLogo() 
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     _upperMenu(mediaWidth, mediaHeight),
          //     Expanded(
          //       child: Container(
          //         margin: EdgeInsets.only(top: 10),
          //         child: Row(
          //           children: [
          //             Column(
          //               children: [
          //                 Expanded(
          //                   child: LayoutBuilder(
          //                     builder: (context, constraint) {
          //                       return SingleChildScrollView(
          //                         child: ConstrainedBox(
          //                           constraints: BoxConstraints(
          //                               minHeight: constraint.minHeight),
          //                           child: IntrinsicHeight(
          //                             child: NavigationRail(
          //                               minWidth: 40,
          //                               backgroundColor:
          //                                   Colors.grey.withOpacity(0.3),
          //                               selectedIndex: _selectedIndex,
          //                               onDestinationSelected: (int index) {
          //                                 setState(() {
          //                                   _selectedIndex = index;
          //                                 });
          //                               },
          //                               selectedIconTheme: IconThemeData(color: Colors.grey, size: 100),
          //                               labelType: toggleButton == 0
          //                                   ? NavigationRailLabelType.none
          //                                   : NavigationRailLabelType.all,
          //                               destinations: [
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/setup.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     margin: EdgeInsets.all(0),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/setup.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Setup',
          //                                       style: TextStyle(
          //                                         color: Colors.grey,
          //                                         fontSize: 10,
          //                                       ),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/port.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/port.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Port',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/config.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/config.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Configuration',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/battery1.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/battery1.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Power & Battery',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/parachute.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/parachute.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Failsafe',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/pid.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/pid.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'PID Tuning',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/receiver.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/receiver.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Receiver',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/modes.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/modes.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Modes',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/adjusment.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/adjusment.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Adjustment',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/satellite.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/satelite.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'GPS',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/motor.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/motor.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Motors',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/osd.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/osd.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'OSD',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/blacbox.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/blacbox.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Blackbox',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/vtx.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/vtx.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'VTX',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/associate.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/associate.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'Mode & Pin Associate',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 NavigationRailDestination(
          //                                   icon: ImageIcon(
          //                                     AssetImage(
          //                                         "assets/images/file.png"),
          //                                     size: 20,
          //                                     color: Colors.grey,
          //                                   ),
          //                                   selectedIcon: Container(
          //                                     width: toggleButton == 0 ? 40 : 100,
          //                                     height: 40,
          //                                     padding: EdgeInsets.all(10),
          //                                     decoration: BoxDecoration(
          //                                       color: Colors.amber,
          //                                     ),
          //                                     child: ImageIcon(
          //                                       AssetImage(
          //                                           "assets/images/file.png"),
          //                                       size: 20,
          //                                       color: Colors.grey,
          //                                     ),
          //                                   ),
          //                                   label: Padding(
          //                                     padding: EdgeInsets.only(top: 3),
          //                                     child: Text(
          //                                       'CLI',
          //                                       style: TextStyle(
          //                                           fontSize: 10,
          //                                           color: Colors.grey),
          //                                     ),
          //                                   ),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                         ),
          //                       );
          //                     },
          //                   ),
          //                 ),
          //                 Container(
          //                   width: toggleButton == 0 ? 40 : 115,
          //                   height: 40,
          //                   decoration: BoxDecoration(
          //                     shape: BoxShape.rectangle,
          //                     color: Colors.grey.withOpacity(0.3),
          //                   ),
          //                   child: IconButton(
          //                     onPressed: () {
          //                       setState(
          //                         () {
          //                           if (toggleButton == 1) {
          //                             toggleButton = 0;
          //                           } else {
          //                             toggleButton = 1;
          //                           }
          //                         },
          //                       );
          //                     },
          //                     icon: Icon(
          //                       Icons.menu,
          //                       color: Colors.grey,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Expanded(
          //               child: PageView.builder(
          //                 scrollDirection: Axis.vertical,
          //                 physics: NeverScrollableScrollPhysics(),
          //                 itemBuilder: (context, index) {
          //                   return Scaffold(
          //                     body: Center(child: listPage[_selectedIndex]),
          //                   );
          //                 },
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }

  final listPage = <Widget>[
    Setup(),
    Port(),
    Configuration(),
    PowerAndBattery(),
    Failsafe(),
    PIDTuning(),
    Receiver(),
    Modes(),
    Adjustment(),
    GPS(),
    Motors(),
    OSD(),
    BlackBox(),
    VTX(),
    ModePINAssociate(),
    CommandLineInterface()
  ];
}
