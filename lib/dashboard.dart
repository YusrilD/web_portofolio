import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/grad.webp',
              fit: BoxFit.cover,
              color: Colors.white.withOpacity(0.4),
              colorBlendMode: BlendMode.hardLight,
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Web Portofolio",
            ),
          ),
        ],
      ),
    );
  }
}
