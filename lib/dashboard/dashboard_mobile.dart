import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portofolio/dashboard/reusable.dart';
import 'package:web_portofolio/source/custom_banner.dart';
import 'package:web_portofolio/source/spacer_extension.dart';
import 'dart:html' as html;
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
                          child: ReusableButton().outlinedButton(
                              text: "Hire Me",
                              onPress: () {
                                launchUrl(
                                    Uri.parse(
                                        'https://wa.me/6285890645024?text=Hallo, mau tanya jasa pembuatan aplikasi mobile'),
                                    mode: LaunchMode.externalApplication);
                              }),
                        ),
                        8.0.spaceX,
                        Expanded(
                          child: ReusableButton().roundedButton(
                              text: "Portfolio",
                              onPress: () {
                                html.window.open(
                                    "https://yusrildewantara.000webhostapp.com/assets/assets/yusril_portfolio.pdf",
                                    "yusril_portfolio.pdf");
                              }),
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
