import 'package:get/get.dart';
import 'package:web_portofolio/source/image.dart';

import '../model/social_media_model.dart';

class SocialMediaController extends GetxController {
  List<SocialMedia> socialMediaList = [
    SocialMedia(
      id: 1,
      name: "Whatsapp",
      tooltip: "Whatsapp",
      submenu: [
        Submenu(id: 1, name: "Scan QR Code"),
        Submenu(id: 2, name: "Chat Now!"),
      ],
      imgUrl: ImgSrc.iconSocialWhatsapp,
    ),
    SocialMedia(
      id: 2,
      name: "Github",
      tooltip: "Github",
      imgUrl: ImgSrc.iconSocialGithub,
    ),
    SocialMedia(
      id: 3,
      name: "Instagram",
      tooltip: "Instagram",
      imgUrl: ImgSrc.iconSocialInstagram,
    ),
    SocialMedia(
      id: 4,
      name: "Twitter",
      tooltip: "Twitter",
      imgUrl: ImgSrc.iconSocialTwitter,
    ),
  ];

  
}
