import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portofolio/dashboard/reusable.dart';
import 'package:web_portofolio/source/buttons.dart';
import 'package:web_portofolio/source/spacer_extension.dart';
import 'dart:html' as html;
import '../source/config.dart';
import '../source/custom_banner.dart';

class DashboardWeb extends StatelessWidget {
  const DashboardWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        customBackground(),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              children: [
                avatar(200),
                kToolbarHeight.spaceX,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi, I am",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Yusril",
                        style: GoogleFonts.poppins(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        longGreeting,
                        style: GoogleFonts.lato(),
                      ),
                      16.0.spaceY,
                      Row(
                        children: [
                          ReusableButton().outlinedButton(
                              text: "Hire Me",
                              onPress: () {
                                launchUrl(
                                    Uri.parse(
                                        'https://wa.me/6285890645024?text=Hallo, mau tanya jasa pembuatan aplikasi mobile'),
                                    mode: LaunchMode.externalApplication);
                              }),
                          8.0.spaceX,
                          ReusableButton().roundedButton(
                              text: "Portfolio",
                              onPress: () {
                                html.window.open("assets/yusril_portfolio.pdf",
                                    "yusril_portfolio.pdf");
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const BannerBuilt(),
      ],
    );
  }
}
