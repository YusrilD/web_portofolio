import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portofolio/controller/web_mobile_controller.dart';
import 'package:web_portofolio/dashboard/apps/speedybee/dashboard/dashboard.dart';
import 'package:web_portofolio/view/utils/app_images.dart';

class SpeedyBeeMain extends StatefulWidget {
  const SpeedyBeeMain({Key? key}) : super(key: key);

  @override
  State<SpeedyBeeMain> createState() => _SpeedyBeeMainState();
}

class _SpeedyBeeMainState extends State<SpeedyBeeMain> {
  final appSize = Get.arguments;
  final webMobileController = Get.find<WebMobileController>();

  Widget _listDrawer(var mediaHeight, var mediaWidth) {
    return Drawer(
      child: Container(
        height: mediaHeight,
        color: Colors.black.withOpacity(0.9),
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.only(top: mediaHeight / 20),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
                width: mediaWidth / 8,
                height: mediaHeight / 8,
                child: Image.asset("assets/images/mainlogo.png")),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10, left: 10),
              child: InkWell(
                onTap: () {},
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(2),
                        child: Icon(
                          Icons.home,
                          color: Colors.grey,
                        )),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: mediaWidth,
              height: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10, left: 10),
              child: InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Image.asset(
                        "assets/images/drc2.png",
                        width: mediaWidth / 18,
                        height: mediaHeight / 18,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "FC Firmware Flasher",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: mediaWidth,
              height: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Image.asset(
                            "assets/images/drc2.png",
                            width: mediaWidth / 18,
                            height: mediaHeight / 18,
                            color: Colors.grey,
                          ),
                        ),
                        const Positioned(
                          top: 14.5,
                          left: 7,
                          child: Icon(
                            Icons.refresh,
                            color: Colors.grey,
                            size: 10,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Camera Firmware Update",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: mediaWidth,
              height: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Image.asset(
                        "assets/images/drc4.png",
                        width: mediaWidth / 18,
                        height: mediaHeight / 18,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "BLHeli Configurator",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: mediaWidth,
              height: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: InkWell(
                onTap: () {},
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(Icons.help_outline, color: Colors.grey),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Help Center",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: mediaWidth,
              height: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10, left: 10),
              child: InkWell(
                onTap: () {},
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(Icons.touch_app, color: Colors.grey),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "One Touch Configurator",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: mediaWidth,
              height: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10, left: 10),
              child: InkWell(
                onTap: () {},
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(Icons.shop, color: Colors.blue),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Speedybee Store",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: mediaWidth,
              height: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10, left: 10),
              child: InkWell(
                onTap: () {},
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(Icons.settings, color: Colors.grey),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Setting",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: mediaWidth,
              height: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10, left: 10),
              child: InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Image.asset(
                        "assets/images/drc9.png",
                        width: mediaWidth / 18,
                        height: mediaHeight / 18,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Special Thanks",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _initMenu(var mediaWidth, var mediaHeight) {
    return Stack(
      children: [
        Container(
          // height: mediaHeight,
    
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            image: DecorationImage(
                image: ExactAssetImage(AppImages.speedyBeeLogo),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          child: Container(
            // height: mediaHeight,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              // borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: Image.asset(
                          AppImages.speedyBeeMainLogo,
                          scale: 3,
                        ).paddingAll(16.0),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.5)),
                            child: const Icon(
                              Icons.wifi,
                              color: Colors.blueAccent,
                              size: 40,
                            ).paddingAll(8),
                          ).paddingAll(16),
                          DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.5)),
                            child: const Icon(
                              Icons.bluetooth,
                              color: Colors.blue,
                              size: 40,
                            ).paddingAll(8),
                          ).paddingAll(16),
                          DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.5)),
                            child: const Icon(
                              Icons.usb,
                              color: Colors.lightGreen,
                              size: 40,
                            ).paddingAll(8),
                          ).paddingAll(16),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                            Colors.amber,
                          )),
                          onPressed: () {
                            webMobileController.selectPage(
                              Dashboard(),
                            );
                          },
                          child: Text(
                            "Try SpeedyBee",
                            style: GoogleFonts.lato().copyWith(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1),
                          ).paddingAll(
                            16,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text(
                          "Ver. 1.0.0",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _appBar(var mediaWidth, var mediaHeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/qrcode.png",
            width: mediaWidth / 15, height: mediaHeight / 15),
        Image.asset(
          "assets/images/title.jpeg",
          width: mediaWidth / 2,
        ),
        Image.asset(
          "assets/images/trophy.png",
          width: mediaWidth / 14,
          height: mediaHeight / 14,
          color: Colors.orangeAccent,
        ),
        const Icon(Icons.note),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaWidth = Get.width;
    var mediaHeight = Get.height;
    return _initMenu(mediaWidth, mediaHeight);
    // Scaffold(
    //   drawer: _listDrawer(mediaHeight, mediaWidth),
    //   appBar: AppBar(
    //     backgroundColor: Colors.black,
    //     title: _appBar(mediaWidth, mediaHeight),
    //   ),
    //   body: _initMenu(mediaWidth, mediaHeight),
    // );
  }
}
