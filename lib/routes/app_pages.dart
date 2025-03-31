// app_pages.dart

import 'package:get/get.dart';
import 'package:web_portofolio/dashboard/apps/speedybee/speedy_bee_main.dart';
import '../dashboard/dashboard.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.dashboard;
  static final routes = [
    GetPage(
      name: AppRoutes.speedybee,
      page: () => const SpeedyBeeMain(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const Dashboard(),
    ),
  ];
}
