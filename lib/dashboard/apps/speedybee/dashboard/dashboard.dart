import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_portofolio/models/image_path_name_model.dart';

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
      _leftAppBar(mediaHeight),
      _middleAppBar(mediaHeight, mediaWidth),
      _rightAppBar(mediaHeight, mediaWidth),
    ],
  );
}

Expanded _leftAppBar(mediaHeight) {
  return Expanded(
    flex: 1,
    child: Container(
      height: mediaHeight * 0.05,
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
                  scale: 2,
                  color: Colors.black,
                ),
                const Text(
                  "0.4v",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    scale: 3,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Image.asset(
                    "assets/images/link.png",
                    scale: 3,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Expanded _rightAppBar(mediaHeight, mediaWidth) {
  return Expanded(
    flex: 1,
    child: Container(
      height: mediaHeight * 0.05,
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
  );
}

Container _middleAppBar(mediaHeight, mediaWidth) {
  return Container(
    margin: const EdgeInsets.only(left: 3),
    height: mediaHeight * 0.05,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        shape: BoxShape.rectangle),
    child: Row(
      children: [
        for (ImagePathNameModel item in sensorItems)
          Padding(
            padding: const EdgeInsets.only(left: 3, bottom: 3, right: 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    item.imagePath,
                    width: 20,
                    height: 20,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  item.name,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ).paddingAll(4),
          ),
      ],
    ),
  );
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  ValueNotifier<bool> toggleButton = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = Get.height;
    var mediaHeight = Get.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              flex: 5,
              child: Image.asset(
                "assets/images/title.jpeg",
                color: Colors.amber,
                scale: 2,
              ),
            ),
            Expanded(
              child: Image.asset(
                "assets/images/qrcode.png",
                scale: 3,
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: mediaHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _upperMenu(mediaWidth, mediaHeight),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraint) {
                            return SingleChildScrollView(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                    minHeight: constraint.minHeight),
                                child: IntrinsicHeight(
                                  child: ValueListenableBuilder(
                                      valueListenable: toggleButton,
                                      builder: (context, value, child) {
                                        var labelType = toggleButton.value
                                            ? NavigationRailLabelType.all
                                            : NavigationRailLabelType.none;
                                        double iconWidth =
                                            toggleButton.value ? 100 : 40;
                                        return NavigationRail(
                                            minWidth: 40,
                                            backgroundColor:
                                                Colors.grey.withAlpha(60),
                                            selectedIndex: _selectedIndex,
                                            onDestinationSelected: (int index) {
                                              setState(() {
                                                _selectedIndex = index;
                                              });
                                            },
                                            selectedIconTheme:
                                                const IconThemeData(
                                                    color: Colors.grey,
                                                    size: 100),
                                            labelType: labelType,
                                            destinations: List.generate(
                                                navItems.length, (index) {
                                              ImagePathNameModel item =
                                                  navItems[index];
                                              Widget imageWidget = ImageIcon(
                                                AssetImage(item.imagePath),
                                                size: 20,
                                                color: Colors.grey,
                                              );
                                              return NavigationRailDestination(
                                                icon: imageWidget,
                                                selectedIcon: Container(
                                                  width: iconWidth,
                                                  height: 40,
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.amber,
                                                  ),
                                                  child: imageWidget,
                                                ),
                                                label: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 3),
                                                  child: Text(
                                                    item.name,
                                                    style: const TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.grey),
                                                  ),
                                                ),
                                              );
                                            }));
                                      }),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      ValueListenableBuilder(
                          valueListenable: toggleButton,
                          builder: (context, value, child) {
                            return Container(
                              width: toggleButton.value ? 115 : 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.grey.withAlpha(70),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  toggleButton.value = !toggleButton.value;
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: Colors.grey,
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                  Expanded(
                    child: PageView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Scaffold(
                          body: Center(child: listPage[_selectedIndex]),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
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
