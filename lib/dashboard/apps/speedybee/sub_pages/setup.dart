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
    var mediaWidth = Get.width * 0.177;
    var mediaHeight = Get.height * 0.677;
    return ColoredBox(
      color: Colors.amber,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 10,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                "Setup",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
              // const Text("Setup", style: ,),
            ),
            const Divider(
              color: Colors.white,
              endIndent: 8,
              indent: 8,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(8),
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
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Heading: 169 deg",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 8.0,
                            ),
                          ),
                          Text(
                            "Pitch: -1.9 deg",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 8.0,
                            ),
                          ),
                          Text(
                            "Roll: 172.7 deg",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 8.0,
                            ),
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
                        child: Text(
                          "Reset Z axis",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 8.0,
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
                        const SizedBox(
                          width: 60,
                          height: 60,
                          child: ModelViewer(
                            src: "assets/images/fpv.glb",
                          ),
                        ),
                        // Container(

                        //   decoration: const BoxDecoration(
                        //     image: DecorationImage(
                        //       image: AssetImage(
                        //         'assets/images/altitude_indicator.png',
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/heading_indicator.png',
                              ),
                            ),
                          ),
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
                    child: Text(
                      "Info",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      // style: TextStyle(
                      //   color: Colors.white,
                      // ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Arming Disable Flags:",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 8.0,
                          ),
                        ),
                        Text(
                          "3,8",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 8.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey.withOpacity(0.6),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            Expanded(
                              child: Text(
                                "No valid receiver signal is detected",
                                maxLines: 2,
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
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
                            Text(
                              "Craft is not level.",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 8.0,
                              ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Battery Voltage",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 8.0,
                          ),
                        ),
                        Text(
                          "0.4 V",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 8.0,
                          ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Capacity drawn",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 8.0,
                              ),
                            ),
                            Text(
                              "0 mAh",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 8.0,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Current draw",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 8.0,
                              ),
                            ),
                            Text(
                              "0.0 A",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 8.0,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "RSSI",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 8.0,
                              ),
                            ),
                            Text(
                              "0 %",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 8.0,
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
                    child: Text(
                      "GPS",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "3D Fix:",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 8.0,
                      ),
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
                    child: Text(
                      "Sats:",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 8.0,
                      ),
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
                    child: Text(
                      "Latitude:",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 8.0,
                      ),
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
                    child: Text(
                      "Longitude",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 8.0,
                      ),
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
