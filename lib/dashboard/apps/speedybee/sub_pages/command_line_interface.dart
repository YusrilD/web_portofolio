import 'package:flutter/material.dart';

void main(){
  runApp(CommandLineInterface());
}

class CommandLineInterface extends StatefulWidget {
  @override
  _CommandLineInterfaceState createState() => _CommandLineInterfaceState();
}

class _CommandLineInterfaceState extends State<CommandLineInterface> {
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
                "Command Line Interface",
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
