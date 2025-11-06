import 'package:flutter/material.dart';
import 'package:web_portofolio/view/utils/app_images.dart';

SizedBox avatar(double size) {
  return SizedBox(
    width: size,
    height: size,
    child: const Placeholder() 
    
    // const DecoratedBox(
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     image: DecorationImage(
    //       image: ExactAssetImage(AppImages.profileImage),
    //     ),
    //   ),
    // ),
  );
}

SizedBox customBackground() {
  return SizedBox.expand(
    child: Image.asset(
      AppImages.gradImage,
      fit: BoxFit.cover,
      color: Colors.white.withOpacity(0.7),
      colorBlendMode: BlendMode.hardLight,
    ),
  );
}
