import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portofolio/dashboard/reusable.dart';
import 'package:web_portofolio/source/custom_banner.dart';
import 'package:web_portofolio/source/spacer_extension.dart';

import '../source/buttons.dart';
import '../source/config.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        customBackground(),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                avatar(100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hi, I am Yusril",
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      shortGreeting,
                      style: GoogleFonts.lato(),
                    ),
                    16.0.spaceY,
                    Row(
                      children: [
                        Expanded(
                          child:
                              ReusableButton().outlinedButton(text: "Hire Me"),
                        ),
                        8.0.spaceX,
                        Expanded(
                          child: ReusableButton()
                              .roundedButton(text: "See My Resume"),
                        )
                      ],
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16),
              ],
            ),
          ),
        ),
        const BannerBuilt(),
      ],
    );
  }
}
