import 'package:flutter/material.dart';
import 'package:web_portofolio/dashboard/dashboard_mobile.dart';
import 'package:web_portofolio/dashboard/dashboard_web.dart';
import 'package:web_portofolio/source/responsive.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: DashboardMobile(),
        tablet: DashboardWeb(),
        web: DashboardWeb(),
      ),
    );
  }
}
