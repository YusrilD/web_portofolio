import 'package:flutter/material.dart';

void main(){
  runApp(PIDTuning());
}

class PIDTuning extends StatefulWidget {
  @override
  _PIDTuningState createState() => _PIDTuningState();
}

class _PIDTuningState extends State<PIDTuning> {
  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              width: mediaWidth,
              height: mediaHeight,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent, width: 1),
                shape: BoxShape.rectangle,
              ),
              child: Text(
                "PID Tuning",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
