import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_portofolio/controller/web_mobile_controller.dart';
import 'package:web_portofolio/dashboard/apps/speedybee/speedy_bee_main.dart';

import '../view/utils/app_images.dart';

class WebMobileDevice extends StatelessWidget {
  WebMobileDevice({
    Key? key,
  }) : super(key: key);

  final webMobileController = Get.put(WebMobileController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            AppImages.phoneFrameImage,
            height: Get.height * 0.8,
            width: Get.width * 0.6,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppImages.gradMobileImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                height: Get.height * 0.677,
                width: Get.width * 0.177,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Obx(
              () {
                if (webMobileController.isShowGrid.value) {
                  return SizedBox(
                    height: Get.height * 0.7,
                    width: Get.width * 0.15,
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      childAspectRatio: 1.2,
                      padding: EdgeInsets.zero,
                      children: webMobileController.listIcon.map((item) {
                        return GestureDetector(
                          onTap: () {
                            webMobileController.selectedApps.value.widget =
                                const SpeedyBeeMain();
                            webMobileController.isShowGrid.value = false;
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
                  );
                }
                return SizedBox(
                  height: Get.height * 0.677,
                  width: Get.width * 0.177,
                  child: webMobileController.selectedApps.value.widget,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
