import 'package:flutter/material.dart';

SizedBox avatar(double size) {
  return SizedBox(
    width: size,
    height: size,
    child: const DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: ExactAssetImage('assets/profile.jpg'),
        ),
      ),
    ),
  );
}

SizedBox customBackground() {
  return SizedBox.expand(
    child: Image.asset(
      'assets/grad.webp',
      fit: BoxFit.cover,
      color: Colors.white.withOpacity(0.7),
      colorBlendMode: BlendMode.hardLight,
    ),
  );
}
