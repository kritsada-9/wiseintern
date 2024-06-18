import 'package:flutter/material.dart';
import '../responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:go_router/go_router.dart';

class GAMS extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<GAMS> {
  final String imagePath = 'assets/about/gams/';

  // final CarouselController _controller = CarouselController();

  // List _isHovering = [false, false, false, false, false];
  // List _isSelected = [true, false, false, false, false];

  int _current = 0;

  List<Widget> med_images = [
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          // opacity: 80,
          image: AssetImage('assets/about/gams/Gams_Header.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];
  List<Widget> min_images = [
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/about/gams/Gams_Header.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];
  final controller =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Responsive.isDesktop(context)
          ? Container(
              width: 1440,
              child: Column(
                children: [
                  Container(
                    width: 1440,
                    height: 1039,
                    color: Color.fromARGB(255, 255, 255, 255),
                    // color: Colors.amber,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Stack(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0, left: 0),
                                                child: Container(
                                                    width: 1440,
                                                    height: 1039,
                                                    child: Image.asset(
                                                        "assets/about/gams/Gams_Header01.png")),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 68, left: 106),
                                                child: Wrap(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10),
                                                      child: Container(
                                                        width: 60,
                                                        height: 5,
                                                        decoration: BoxDecoration(
                                                            color: Color.fromARGB(
                                                                255, 57, 128, 237),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        57,
                                                                        128,
                                                                        237),
                                                                width: 5)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: Container(
                                                        // color: Colors.amber,
                                                        height: 20,
                                                        child: Text(
                                                          "Governance Assurance Master Suite",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          57,
                                                                          128,
                                                                          237)),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 300, left: 85, right: 145),
                                            child: Container(
                                              width: 550,
                                              height: 150,
                                              child: Text(
                                                "Governance Assurance Master Suite",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 48,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0)),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, left: 0),
                                            child: Container(
                                              width: 620,
                                              height: 200,
                                              child: Text(
                                                "ระบบสำหรับบริหารจัดการทรัพย์สิน (Asset Management) และบริหารจัดการความเสี่ยง (Risk Management) ครอบคลุม ทั้งการบันทึก และจัดเก็บ พร้อมเสริมประสิทธิภาพการดำเนินงาน ขององค์กรให้เป็นไปตามมาตรฐาน ISO 27001",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color.fromARGB(
                                                            255, 37, 37, 37)),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        bottom: Responsive.isDesktop(context)
                                            ? 201
                                            : 0,
                                        left: Responsive.isDesktop(context)
                                            ? 598
                                            : (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    222) /
                                                2,
                                        right: Responsive.isDesktop(context)
                                            ? 598
                                            : (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    222) /
                                                2,
                                        child: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 243
                                              : 222,
                                          height: 50,
                                          child: ElevatedButton(
                                              onPressed: () =>
                                                  context.go('/demo'),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromRGBO(
                                                    75, 195, 211, 1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          44.0),
                                                ),
                                              ),
                                              child: Text(
                                                "Get A free Demo",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: Responsive
                                                                .isDesktop(
                                                                    context)
                                                            ? 24
                                                            : 20,
                                                        fontWeight:
                                                            FontWeight.w500),
                                              )),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: Responsive.isDesktop(context)
                                            ? 61
                                            : Responsive.isTablet(context)
                                                ? 100
                                                : 96,
                                        left: Responsive.isDesktop(context)
                                            ? 675
                                            : (MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2) -
                                                44,
                                        right: Responsive.isDesktop(context)
                                            ? 675
                                            : (MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2) -
                                                44,
                                        child: Container(
                                          child: AnimatedSmoothIndicator(
                                            activeIndex: _current,
                                            count: 5,
                                            effect: CustomizableEffect(
                                              activeDotDecoration:
                                                  DotDecoration(
                                                width: 16,
                                                height: 6,
                                                color:
                                                    //  Responsive.isDesktop(context)
                                                    //     ? Color.fromARGB(255, 0, 0, 0)
                                                    //     :
                                                    Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              dotDecoration: DotDecoration(
                                                width: 10,
                                                height: 4,
                                                color:
                                                    //  Responsive.isDesktop(context)
                                                    //     ? Colors.grey
                                                    //     :
                                                    Color.fromARGB(
                                                        40, 255, 255, 255),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                verticalOffset: 0,
                                              ),
                                              spacing: 6.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Responsive.isTablet(context)
              ? Container(
                  width: 768,
                  child: Column(
                    children: [
                      Container(
                        width: 768,
                        height: 1300,
                        color: Color.fromARGB(255, 255, 255, 255),
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 0, left: 0),
                                                    child: Container(
                                                        width: 768,
                                                        height: 877,
                                                        child: Image.asset(
                                                            "assets/about/gams/Gams_Header_BG.png")),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 700, left: 62),
                                                    child: Container(
                                                        width: 701,
                                                        height: 566,
                                                        // decoration: BoxDecoration(
                                                        //     border: Border.all(
                                                        //         color: Colors
                                                        //             .blueAccent)),
                                                        child: Image.asset(
                                                            "assets/about/gams/Macbook_GAMS.png")),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 68, left: 106),
                                                    child: Wrap(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10),
                                                          child: Container(
                                                            width: 60,
                                                            height: 5,
                                                            decoration: BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        57,
                                                                        128,
                                                                        237),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                border: Border.all(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            57,
                                                                            128,
                                                                            237),
                                                                    width: 5)),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 10),
                                                          child: Container(
                                                            // color: Colors.amber,
                                                            height: 20,
                                                            child: Text(
                                                              "Governance Assurance Master Suite",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          57,
                                                                          128,
                                                                          237)),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 150, left: 100),
                                                child: Container(
                                                  width: 550,
                                                  height: 150,
                                                  child: Text(
                                                    "Governance Assurance Master Suite",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: 48,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0)),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 100),
                                                child: Container(
                                                  width: 550,
                                                  height: 250,
                                                  child: Text(
                                                    "ระบบสำหรับบริหารจัดการทรัพย์สิน (Asset Management) และบริหารจัดการความเสี่ยง (Risk Management) ครอบคลุม ทั้งการบันทึก และจัดเก็บ พร้อมเสริมประสิทธิภาพการดำเนินงาน ขององค์กรให้เป็นไปตามมาตรฐาน ISO 27001",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    37,
                                                                    37,
                                                                    37)),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 50,
                                                bottom: Responsive.isDesktop(
                                                        context)
                                                    ? 201
                                                    : 0,
                                                left: Responsive.isDesktop(
                                                        context)
                                                    ? 598
                                                    : (MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            222) /
                                                        2,
                                                right: Responsive.isDesktop(
                                                        context)
                                                    ? 598
                                                    : (MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            222) /
                                                        2,
                                                child: SizedBox(
                                                  width: Responsive.isDesktop(
                                                          context)
                                                      ? 243
                                                      : 222,
                                                  height: 50,
                                                  child: ElevatedButton(
                                                      onPressed: () =>
                                                          context.go('/demo'),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromRGBO(75,
                                                                195, 211, 1),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      44.0),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "Get A free Demo",
                                                        style: GoogleFonts.ibmPlexSansThai(
                                                            fontSize: Responsive
                                                                    .isDesktop(
                                                                        context)
                                                                ? 24
                                                                : 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Center(
                  child: Column(
                    children: [
                      Container(
                        width: 368,
                        // height: 1300,
                        color: Color.fromARGB(255, 255, 255, 255),
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 0,
                                                            left: 0,
                                                            right: 50),
                                                    child: Container(
                                                        width: 368,
                                                        height: 773,
                                                        child: Image.asset(
                                                            "assets/about/gams/Gams_Header_Mobile_BG.png")),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 500, left: 20),
                                                    child: Container(
                                                        width: 352,
                                                        height: 284,
                                                        child: Image.asset(
                                                            "assets/about/gams/Macbook_GAMS.png")),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 70, left: 0),
                                                child: Container(
                                                  width: 300,
                                                  height: 100,
                                                  child: Text(
                                                    "Governance And \nAssurance Master Suit",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0)),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 20),
                                                child: Container(
                                                  width: 320,
                                                  height: 180,
                                                  child: Text(
                                                    "ระบบสำหรับบริหารจัดการทรัพย์สิน (Asset Management) และบริหารจัดการความเสี่ยง (Risk Management) ครอบคลุม ทั้งการบันทึก และจัดเก็บ พร้อมเสริมประสิทธิภาพการดำเนินงาน ขององค์กรให้เป็นไปตามมาตรฐาน ISO 27001",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    37,
                                                                    37,
                                                                    37)),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 50,
                                                bottom: Responsive.isDesktop(
                                                        context)
                                                    ? 201
                                                    : 0,
                                                left: Responsive.isDesktop(
                                                        context)
                                                    ? 598
                                                    : (MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            222) /
                                                        2,
                                                right: Responsive.isDesktop(
                                                        context)
                                                    ? 598
                                                    : (MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            222) /
                                                        2,
                                                child: SizedBox(
                                                  width: Responsive.isDesktop(
                                                          context)
                                                      ? 243
                                                      : 222,
                                                  height: 50,
                                                  child: ElevatedButton(
                                                      onPressed: () =>
                                                          context.go('/demo'),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromRGBO(75,
                                                                195, 211, 1),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      44.0),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "Get A free Demo",
                                                        style: GoogleFonts.ibmPlexSansThai(
                                                            fontSize: Responsive
                                                                    .isDesktop(
                                                                        context)
                                                                ? 24
                                                                : 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
