import 'package:flutter/material.dart';

class BannerBuilt extends StatelessWidget {
  const BannerBuilt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -45,
      top: 25,
      child: Transform.rotate(
        angle: (2 * 3.14 / 8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: const [
                Text(
                  'Built with ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                FlutterLogo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
