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
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              width: mediaWidth,
              child: Text(
                "Ports",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              width: mediaWidth,
              height: 1,
              margin: EdgeInsets.all(5),
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: mediaWidth,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                      ),
                    ),
                    child: Text(
                      "USB VCP",
                      style: TextStyle(
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
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "MSP",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Serial Rx",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Telemetry",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Sensor",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Peripherals",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Switch(
                              activeColor: Colors.amber,
                              value: true,
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ),
                          TableCell(
                            child: Switch(
                              activeColor: Colors.amber,
                              value: true,
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Peripherals",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Peripherals",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "Peripherals",
                                style: TextStyle(
                                  fontSize: 11,
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
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              child: Text(
                                "115200",
                                style: TextStyle(
                                  fontSize: 12,
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
