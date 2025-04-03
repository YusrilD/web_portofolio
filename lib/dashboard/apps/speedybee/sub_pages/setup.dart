import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Setup extends StatefulWidget {
  @override
  _SetupState createState() => _SetupState();
}

class _SetupState extends State<Setup> {
  @override
  Widget build(BuildContext context) {
    var mediaWidth = Get.width;
    var mediaHeight = Get.height;
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: const Text("Setup"),
            ),
            Container(
              width: mediaWidth,
              height: 1,
              margin: const EdgeInsets.all(5),
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(15),
              width: mediaWidth,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/setup_paper.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Heading: 169 deg",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Pitch: -1.9 deg",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Roll: 172.7 deg",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(3),
                          ),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          "Reset Z axis offset:0.0 deg",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width * 0.12,
                          height: Get.width * 0.12,
                          child: const ModelViewer(
                            src: "assets/images/fpv.glb",
                          ),
                        ),
                        Image.asset(
                          "assets/images/heading_indicator.png",
                          width: Get.width * 0.12,
                          height: Get.width * 0.12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /*SizedBox(
                height: 5,
              ),*/
            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: mediaWidth,
                    decoration: const BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Info",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Arming Disable Flags:",
                            style: TextStyle(fontSize: 13),
                          ),
                          Text("3,8"),
                        ],
                      )),
                  Container(
                    color: Colors.grey.withOpacity(0.6),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(0.5),
                              margin: const EdgeInsets.only(
                                right: 5,
                              ),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                              child: const Icon(
                                Icons.close,
                                size: 10,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "No valid receiver signal is detected",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(0.5),
                              margin: const EdgeInsets.only(right: 5),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                              child: const Icon(
                                Icons.close,
                                size: 10,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Craft is not level.",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 5,
                      bottom: 5,
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Battery Voltage",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "0.4 V",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: mediaWidth,
                    height: 0.5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 5,
                      bottom: 5,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Capacity drawn",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "0 mAh",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.grey,
                          width: mediaWidth,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: mediaWidth,
                    height: 0.5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 5,
                      bottom: 5,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Current draw",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "0.0 A",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.grey,
                          width: mediaWidth,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: mediaWidth,
                    height: 0.5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 5,
                      bottom: 5,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "RSSI",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "0 %",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.grey,
                          width: mediaWidth,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: mediaWidth,
                    height: 0.5,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: mediaWidth,
                    decoration: const BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "GPS",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "3D Fix:",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: mediaWidth,
                    height: 0.5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Sats:",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: mediaWidth,
                    height: 0.5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Latitude:",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: mediaWidth,
                    height: 0.5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Longitude",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: mediaWidth,
                    height: 0.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
