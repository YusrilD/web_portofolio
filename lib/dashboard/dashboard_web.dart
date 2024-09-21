import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portofolio/dashboard/reusable.dart';
import 'package:web_portofolio/source/buttons.dart';
import 'package:web_portofolio/source/image.dart';
import 'package:web_portofolio/source/spacer_extension.dart';
import 'dart:html' as html;
import '../source/config.dart';
import '../source/custom_banner.dart';

// ignore: must_be_immutable
class DashboardWeb extends StatelessWidget {
  DashboardWeb({Key? key}) : super(key: key);

  List<String> listSocial = [
    ImgSrc.iconSocialWhatsapp,
    ImgSrc.iconSocialWhatsapp,
    ImgSrc.iconSocialWhatsapp,
    ImgSrc.iconSocialWhatsapp,
  ];

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
                // kToolbarHeight.spaceX,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          avatar(100),
                          16.0.spaceX,
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Hi, I am Yusril Dewantara",
                                style: GoogleFonts.poppins(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        longGreeting,
                        style: GoogleFonts.lato(),
                      ),
                      16.0.spaceY,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ReusableButton().outlinedButton(
                                text: "Hire Me",
                                onPress: () {
                                  launchUrl(
                                    Uri.parse(
                                      'https://wa.me/6285890645024?text=Hallo, mau tanya jasa pembuatan aplikasi mobile',
                                    ),
                                    mode: LaunchMode.externalApplication,
                                  );
                                },
                              ),
                              8.0.spaceX,
                              ReusableButton().roundedButton(
                                  text: "Resume",
                                  onPress: () {
                                    html.window.open(
                                        "https://yusrildewantara.tech/assets/assets/yusril_portfolio.pdf",
                                        "yusril_portfolio.pdf");
                                  }),
                            ],
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < listSocial.length; i++)
                                item(
                                  listSocial[i],
                                ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                16.0.spaceX,
                _mobileDevice(),
              ],
            ),
          ),
        ),
        const BannerBuilt(),
      ],
    );
  }

  Widget item(String img) {
    return SizedBox(
      height: 20,
      width: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(img),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  DecoratedBox _mobileDevice() {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 10,
          color: Colors.black87,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.7,
            blurRadius: 0.3,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: SizedBox(
        height: 500,
        width: 275,
      ),
    );
  }
}
