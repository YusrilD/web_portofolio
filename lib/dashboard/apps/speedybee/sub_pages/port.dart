import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// ima add this code and delete it from repository

class Port extends StatefulWidget {
  @override
  _PortState createState() => _PortState();
}

// adding some code here

class _PortState extends State<Port> {
  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHeight = MediaQuery.of(context).size.height;
    return ColoredBox(
      color: Colors.amber,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: mediaWidth,
              child: Text(
                "Ports",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ).paddingOnly(
                top: 10.0,
                left: 8.0,
              ),
            ),
            const Divider(
              thickness: 1,
              endIndent: 8,
              indent: 8,
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
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
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                      ),
                    ),
                    child: Text(
                      "USB VCP",
                      // style: TextStyle(
                      //   color: Colors.white,
                      // ),
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Table(
                    border: TableBorder.all(
                      width: 0.3,
                      color: Colors.black,
                    ),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "MSP",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Serial Rx",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Telemetry",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Sensor",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Peripherals",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Transform.scale(
                              scale: 0.5,
                              child: Switch(
                                activeColor: Colors.amber,
                                value: true,
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          TableCell(
                            child: Transform.scale(
                              scale: 0.5,
                              child: Switch(
                                activeColor: Colors.amber,
                                value: true,
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Peripherals",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Peripherals",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Peripherals",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
