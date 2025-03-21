import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portofolio/source/image.dart';
import 'package:web_portofolio/view/utils/app_images.dart';

import '../model/social_media_model.dart';
import '../view/utils/widget/custom_dialog.dart';

class SocialMediaController extends GetxController {
  List<SocialMedia> socialMediaList = [
    SocialMedia(
      id: 1,
      name: "Whatsapp",
      tooltip: "Whatsapp",
      submenu: [
        Submenu(
          id: 1,
          name: "Scan QR Code",
          onPress: () {
            CustomDialogs.showWidgetDialog(
              Get.context!,
              title: "QR Code to whatsapp",
              confirmationText: "",
              cancelText: "Tutup",
              isNeedConfirm: false,
              textAlign: TextAlign.center,
              widget: Column(
                children: [
                  const Text("Scan QR code dan arahkan ke web browser"),
                  Expanded(
                    child: Image.asset(
                      AppImages.waQrImage,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Submenu(
          id: 2,
          name: "Chat Now!",
          onPress: () {
            launchUrl(
              Uri.parse(
                'https://wa.me/6285890645024?text=Hallo, mau tanya jasa pembuatan aplikasi',
              ),
              mode: LaunchMode.externalApplication,
            );
          },
        ),
      ],
      imgUrl: AppImages.whatsappIcon,
    ),
    SocialMedia(
      id: 2,
      name: "Github",
      tooltip: "Github",
      imgUrl: AppImages.githubIcon,
      onPress: () {
        print("github does clicked");
        launchUrl(
          Uri.parse(
            'https://github.com/YusrilD',
          ),
          mode: LaunchMode.externalApplication,
        );
      },
    ),
    SocialMedia(
      id: 3,
      name: "Instagram",
      tooltip: "Instagram",
      imgUrl: AppImages.instagramIcon,
      onPress: () {
        launchUrl(
          Uri.parse(
            'https://www.instagram.com/yusrildee?igsh=MTFzZXQwMTJ1OGU2ZQ==',
          ),
          mode: LaunchMode.externalApplication,
        );
      },
    ),
    SocialMedia(
      id: 4,
      name: "Twitter",
      tooltip: "Twitter",
      imgUrl: AppImages.twitterIcon,
      onPress: () {
        launchUrl(
          Uri.parse(
            'https://x.com/thedevdeva?s=09',
          ),
          mode: LaunchMode.externalApplication,
        );
      },
    ),
  ];
}
