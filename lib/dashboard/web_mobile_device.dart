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
        const SizedBox(
          height: 440,
          width: 215,
        ),
        const Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppImages.gradMobileImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                height: 420,
                width: 195,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.phoneFrameImage,
              height: 460,
              width: 235,
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
                    height: 430,
                    width: 205,
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
                            webMobileController.selectedApps.value.widget = const SpeedyBeeMain();
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
                  height: 410,
                  width: 193,
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
