import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_portofolio/dashboard/apps/insert/insert_main.dart';
import 'package:web_portofolio/dashboard/apps/speedybee/speedy_bee_main.dart';
import 'package:web_portofolio/model/apps_model.dart';
import 'package:web_portofolio/routes/app_routes.dart';
import 'package:web_portofolio/view/utils/app_images.dart';

import '../dashboard/apps/kuesta/kuesta_main.dart';

class WebMobileController extends GetxController {
  var isShowGrid = true.obs;
  var selectedApps = AppsModel().obs;

  selectPage(Widget widget) {
    selectedApps.value.widget = widget;
    isShowGrid.value = false;
    selectedApps.refresh();
  }

  var listIcon = [
    AppsModel(
      icon: AppImages.speedyBeeIconApp,
      routes: AppRoutes.speedybee,
      widget: const SpeedyBeeMain(),
    ),
    AppsModel(
      icon: AppImages.kuestaIconApp,
      routes: AppRoutes.kuesta,
      widget: const KeustaMain(),
    ),
    AppsModel(
      icon: AppImages.insertIconApp,
      routes: AppRoutes.insert,
      widget: const InsertMain(),
    ),
  ];
}
