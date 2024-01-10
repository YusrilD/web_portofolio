import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portofolio/source/spacer_extension.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/grad.webp',
              fit: BoxFit.cover,
              color: Colors.white.withOpacity(0.7),
              colorBlendMode: BlendMode.hardLight,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                children: [
                  const SizedBox(
                    width: 200,
                    height: 200,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: ExactAssetImage('assets/profile.jpg'),
                        ),
                      ),
                    ),
                  ),
                  kToolbarHeight.spaceX,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hi, I am",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Yusril",
                          style: GoogleFonts.poppins(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Welcome to my digital space! I'm a Flutter app developer who creates seamless, visually stunning, and feature-rich mobile experiences. Let's elevate your digital presence by transforming your ideas into captivating, user-friendly applications. Join me on an innovative journey for your unique needs!",
                          style: GoogleFonts.lato(),
                        ),
                        16.0.spaceY,
                        Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    side: const BorderSide(color: Colors.blue),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Hire me",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            8.0.spaceX,
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Colors
                                          .blueAccent; // Color for pressed state
                                    }
                                    return Colors.blue; // Default color
                                  }),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              onPressed: () {},
                              child: Text(
                                "See My Resume",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -45,
            top: 25,
            child: Transform.rotate(
              angle: (2 * 3.14 / 8), // Rotate by 120 degrees (in radians)
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                color: Colors.red,
                // ignore: prefer_const_constructors
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Row(
                    children: [
                      Text(
                        'Build with ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      FlutterLogo(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
