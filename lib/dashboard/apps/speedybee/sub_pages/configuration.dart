import 'package:flutter/material.dart';

void main() {
  runApp(Configuration());
}

class Configuration extends StatefulWidget {
  @override
  _ConfigurationState createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  String dropdownValue = 'Quad X';

  List quadCategory = [
    'Quad X',
    'Quad X 1234',
    'Quad +',
    'Tricopter',
    'Gimbal',
    'Hex +',
    'Hex X',
    'Hex H',
    'Octo Flat +',
    'Octo FLat X',
    'Flying Wing',
    'Airplane',
    'Heli 120',
    'Heli 90',
    'SingleCopter',
    'DualCopter',
    'Bicopter',
    'V-tail Quad',
    'A-tail Quad',
    'Y4',
    'Y6',
    'Octo X8',
    'PPM to SERVO',
    'Custom',
    'Custom Airplane',
    'Custom Tricopter'
  ];

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.amber),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                width: mediaWidth,
                child: Text(
                  "Configuration",
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
                    Radius.circular(10),
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
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Mixer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      /*padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,*/
                      child: Row(
                        /*mainAxisAlignment: MainAxisAlignment.spaceBetween,*/
                        children: [
                          Text(
                            "",
                            style: TextStyle(fontSize: 13),
                          ),
                          DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.deepPurple),
                            underline: Container(
                              height: 2,
                              color: Colors.deepPurpleAccent,
                            ),
                            onChanged: (newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>[
                              'Quad X',
                              'Quad X 1234',
                              'Quad +',
                              'Tricopter',
                              'Gimbal',
                              'Hex +',
                              'Hex X',
                              'Hex H',
                              'Octo Flat +',
                              'Octo FLat X',
                              'Flying Wing',
                              'Airplane',
                              'Heli 120',
                              'Heli 90',
                              'SingleCopter',
                              'DualCopter',
                              'Bicopter',
                              'V-tail Quad',
                              'A-tail Quad',
                              'Y4',
                              'Y6',
                              'Octo X8',
                              'PPM to SERVO',
                              'Custom',
                              'Custom Airplane',
                              'Custom Tricopter'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey.withOpacity(0.6),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(0.5),
                                margin: EdgeInsets.only(
                                  right: 5,
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                                child: Icon(
                                  Icons.close,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "No valid receiver signal is detected",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(0.5),
                                margin: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                                child: Icon(
                                  Icons.close,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Craft is not level.",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
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
                      margin: EdgeInsets.only(
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
                      margin: EdgeInsets.only(
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
                      margin: EdgeInsets.only(
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
            ],
          ),
        ),
      ),
    );
  }
}
