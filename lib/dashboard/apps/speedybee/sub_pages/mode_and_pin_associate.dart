import 'package:flutter/material.dart';

void main(){
  runApp(ModePINAssociate());
}

class ModePINAssociate extends StatefulWidget {
  @override
  _ModePINAssociateState createState() => _ModePINAssociateState();
}

class _ModePINAssociateState extends State<ModePINAssociate> {
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
                "Mode and PIN Associate",
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
