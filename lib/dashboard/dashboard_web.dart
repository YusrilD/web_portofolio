import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portofolio/controller/social_media_controller.dart';
import 'package:web_portofolio/dashboard/reusable.dart';
import 'package:web_portofolio/dashboard/web_mobile_device.dart';
import 'package:web_portofolio/model/social_media_model.dart';
import 'package:web_portofolio/source/buttons.dart';
import 'package:web_portofolio/source/spacer_extension.dart';
import 'package:web_portofolio/view/utils/app_images.dart';
import 'dart:html' as html;
import '../controller/web_mobile_controller.dart';
import '../source/config.dart';
import '../source/custom_banner.dart';

// ignore: must_be_immutable
class DashboardWeb extends StatelessWidget {
  DashboardWeb({Key? key}) : super(key: key);

  final socialMediaC = Get.put(SocialMediaController());
  final webMobileController = Get.put(WebMobileController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        customBackground(),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: [
                // kToolbarHeight.spaceX,
                Expanded(
                  flex: 2,
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
                                text: "Portfolio",
                                onPress: () {
                                  html.window.open(
                                    "https://yusrildewantara.tech/assets/assets/yusril_portfolio.pdf",
                                    "yusril_portfolio.pdf",
                                  );
                                },
                              ),
                              8.0.spaceX,
                              ReusableButton().roundedButton(
                                text: "Resume",
                                onPress: () {
                                  launchUrl(
                                    Uri.parse(
                                      'https://wa.me/6285890645024?text=Hallo, mau tanya jasa pembuatan aplikasi mobile',
                                    ),
                                    mode: LaunchMode.externalApplication,
                                  );
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              for (int i = 0;
                                  i < socialMediaC.socialMediaList.length;
                                  i++)
                                item(
                                  context,
                                  socialMediaC.socialMediaList[i],
                                ).paddingSymmetric(horizontal: 4),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                16.0.spaceX,
                Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: Get.width * 0.5,
                      height: Get.height * 0.8,
                      child: Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            DeviceFrame(
                              device: Devices.android.samsungGalaxyA50,
                              isFrameVisible: true,
                              orientation: Orientation.portrait,
                              screen: Obx(
                                () {
                                  if (webMobileController.isShowGrid.value) {
                                    return DecoratedBox(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: ExactAssetImage(
                                              AppImages.gradMobileImage),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: SizedBox(
                                        width: Get.width,
                                        height: Get.height,
                                        child: GridView.count(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          mainAxisSpacing: 5,
                                          crossAxisSpacing: 10,
                                          crossAxisCount: 3,
                                          shrinkWrap: true,
                                          childAspectRatio: 1.2,
                                          padding: EdgeInsets.zero,
                                          children: webMobileController.listIcon
                                              .map((item) {
                                            return InkWell(
                                              onTap: () {
                                                webMobileController.selectedApps
                                                    .value.widget = item.widget;
                                                webMobileController
                                                    .isShowGrid.value = false;
                                                // Get.toNamed(item.routes!);
                                              },
                                              child: Image.asset(item.icon!),
                                            );
                                          }).toList(),
                                        ).paddingOnly(
                                          top: kToolbarHeight,
                                          left: 16.0,
                                          right: 16.0,
                                          bottom: 16.0,
                                        ),
                                      ),
                                    );
                                  }
                                  return SizedBox(
                                    width: Get.width,
                                    height: Get.height,
                                    child: webMobileController
                                        .selectedApps.value.widget,
                                  );
                                },
                              ),
                              // Container(
                              //   color: Colors.blue,
                              //   child: Text('Hello'),
                              // ),
                            ),
                            Positioned(
                              bottom: 30,
                              left: 20,
                              child: InkWell(
                                onTap: () {
                                  webMobileController.isShowGrid.value = true;
                                },
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade300,
                                  ),
                                  child: const Icon(
                                    Icons.home,
                                    size: 18,
                                  ).paddingAll(4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    // WebMobileDevice(),
                    ),
              ],
            ),
          ),
        ),
        const BannerBuilt(),
      ],
    );
  }

  Widget item(BuildContext context, SocialMedia social) {
    if (social.onPress != null) {
      return Tooltip(
        message: social.tooltip,
        child: InkWell(
          onTap: () {
            social.onPress!();
          },
          child: SizedBox(
            height: 20,
            width: 20,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(social.imgUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ).paddingSymmetric(
        vertical: 8,
      );
    }
    return MenuAnchor(
      builder:
          (BuildContext context, MenuController controller, Widget? child) {
        return InkWell(
          onTap: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          child: Tooltip(
            message: social.tooltip,
            child: SizedBox(
              height: 20,
              width: 20,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(social.imgUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ).paddingSymmetric(
          vertical: 8,
        );
      },
      style: MenuStyle(
        backgroundColor: const WidgetStatePropertyAll(Colors.white),
        side: const WidgetStatePropertyAll(
          BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
      ),
      menuChildren: List<MenuItemButton>.generate(
        social.submenu != null ? social.submenu!.length : 0,
        (int index) => MenuItemButton(
          onPressed: social.submenu![index].onPress,
          child: Text(social.submenu![index].name!),
        ),
      ),
    );
  }
}
