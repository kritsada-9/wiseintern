// import 'dart:html';
// import 'dart:ui';
// import 'package:flutter/foundation.dart';
// import 'package:wiseintern/home/carousel.dart';

import 'package:get/get_connect/http/src/utils/utils.dart';

import '../responsive.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/model/packages.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:go_router/go_router.dart';

class PackagesPage extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<PackagesPage> {
  final String imagePath = 'assets/carousel/';

  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final express = [
      Package(
        title: !Responsive.isMobile(context)
            ? 'ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA'
            : 'Module วัตถุประสงค์หลัก PDPA',
        children: [
          "PD Management",
          "DPIA & Risk Management",
          "Cookies & Consent Management"
        ],
        position: false,
        dense: false,
      ),
      Package(
        title: "Standard Support 8x5",
        children: [],
        position: false,
        dense: false,
      ),
      Package(
        title: "API สามารถ Export ได้เท่านั้น",
        children: [],
        position: false,
        dense: false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "Concurrent Users = 5, Storage 10 GB ~100,000  Data Subject"
            : "Concurrent Users = 5 \nStorage 10 GB \n~100,000  Data Subject",
        children: [],
        position: false,
        dense: false,
      ),
      Package(
        title: Responsive.isDesktop(context)
            ? "เหมาะสำหรับองค์กรที่เก็บรวบรวมข้อมูล\nส่วนบุคคล ข้อมูลส่วนอ่อนไหวจำนวนมาก"
            : Responsive.isTablet(context)
                ? "เหมาะสำหรับองค์กรที่เก็บรวบรวมข้อมูลส่วน\nบุคคล และข้อมูลส่วนอ่อนไหว จำนวนมาก"
                : "เหมาะสำหรับองค์กรที่มีการเก็บ\nรวบรวมข้อมูลจำนวนมาก",
        children: [],
        position: false,
        dense: false,
      ),
    ];
    final standard = [
      Package(
        title: !Responsive.isMobile(context)
            ? "ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA"
            : "ใช้งานระบบได้ครบถ้วนสมบูรณ์\nตาม PDPA",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
        dense: false,
      ),
      Package(
        title: "ติดตั้งได้ทั้ง On-Premise หรือ On-Cloud",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
        dense: false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "พัฒนาเพิ่มเติมได้ตามความต้องการ"
            : "พัฒนาเพิ่มเติมตามความต้องการ",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
        dense: false,
      ),
      Package(
        title: "Standard Support 8x5",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
        dense: false,
      ),
      Package(
        title: Responsive.isMobile(context)
            ? "องค์กรไม่ต้องการเชื่อมต่อกับ\nระบบภายในเดิม"
            : "องค์กรไม่ต้องการเชื่อมต่อกับระบบภายใน\nเดิม",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
        dense: false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "มี API สำหรับ Import & Export ข้อมูล"
            : "มี API สำหรับ Import & Export",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
        dense: false,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "เหมาะสำหรับองค์กรขนาดใหญ่ ธุรกิจเฉพาะ ต้องการปรับแต่งให้เข้ากับการทำงาน"
            : "เหมาะสำหรับองค์กรขนาดใหญ่\nปรับแต่งให้เข้ากับการทำงาน",
        children: [],
        position: Responsive.isDesktop(context) ? true : false,
        dense: false,
      ),
    ];
    final enterprise = [
      Package(
        title: Responsive.isDesktop(context)
            ? "ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA พร้อมปรับแต่งและพัฒนาได้ตามต้องการ"
            : Responsive.isTablet(context)
                ? "ใช้งานระบบได้ครบถ้วนสมบูรณ์ตาม PDPA\n พร้อมปรับแต่งและพัฒนาได้ตามต้องการ"
                : "ใช้งานระบบได้ครบถ้วนสมบูรณ์\nตาม PDPA พร้อมปรับแต่งและ\nพัฒนาได้ตามต้องการ",
        children: [],
        position: false,
        dense: true,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "ติดตั้งได้ทั้ง On-Premise หรือ On-Cloud"
            : "ติดตั้ง On-Premise/On-Cloud",
        children: [],
        position: false,
        dense: true,
      ),
      Package(
        title: "Premium Support 24X7",
        children: [],
        position: false,
        dense: true,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "รองรับการทำงานแบบ Multi-tenant"
            : "รองรับการทำงาน Multi-tenant",
        children: [],
        position: false,
        dense: true,
      ),
      Package(
        title: !Responsive.isMobile(context)
            ? "มี API สำหรับ Import & Export ข้อมูล "
            : "มี API สำหรับ Import & Export",
        children: [],
        position: false,
        dense: true,
      ),
      Package(
        title: Responsive.isDesktop(context)
            ? "เหมาะสำหรับองค์กรขนาดใหญ่ที่มีสาขา\n มีบริษัทในเครือ ต้องการ Security\n ที่สามารถควบคุมเองได้ทั้งหมด"
            : Responsive.isTablet(context)
                ? "เหมาะสำหรับองค์กรขนาดใหญ่ที่มีสาขา \nมีบริษัทในเครือ ต้องการ Security \nที่สามารถควบคุมเองได้ทั้งหมด"
                : "เหมาะสำหรับองค์กรขนาดใหญ่ที่\nมีสาขา มีบริษัทในเครือ ต้องการ\nSecurity ที่ควบคุมเองได้ทั้งหมด",
        children: [],
        position: false,
        dense: true,
      ),
    ];
    final List<Widget> _carouselItems = [
      PackageCard(
        packageicon: 'packages/cloud.png',
        title: 'Express',
        lisence: 'SaaS',
        packages: express,
        buttoncolor: true,
        firstbox: true,
        middlebox: false,
        lastbox: false,
      ),
      PackageCard(
        packageicon: 'packages/clouds.png',
        title: 'Standard',
        lisence: 'Subscriptions License',
        packages: standard,
        buttoncolor: false,
        firstbox: false,
        middlebox: true,
        lastbox: false,
      ),
      PackageCard(
        packageicon: 'packages/rainbow_cloud.png',
        title: 'Enterprise',
        lisence: 'Perpeptual License',
        packages: enterprise,
        buttoncolor: true,
        firstbox: false,
        middlebox: false,
        lastbox: true,
      )
    ];

    // CarouselController _controller = CarouselController();
    // int _current = 0;
    // List _isSelected = [true, false, false];

    return Center(
      child: Container(
        width: 1440,
        color: Color.fromARGB(155, 232, 242, 254),
        child: Column(
          children: [
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 30
                  : Responsive.isTablet(context)
                      ? 38
                      : 61,
            ),
            !Responsive.isMobile(context)
                ? Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: Responsive.isDesktop(context) ? 123 : 125,
                    width: Responsive.isDesktop(context) ? 1440 : 1440,
                    child: Center(
                      child: RichText(
                          text: TextSpan(
                        style: GoogleFonts.ibmPlexSansThai(
                          fontSize: Responsive.isDesktop(context) ? 48 : 36,
                          fontWeight: FontWeight.w700,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'เลือก ',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: 'แพ็กเกจ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 75, 195, 211))),
                          TextSpan(
                              text: ' ที่เหมาะกับธุรกิจของคุณ ?',
                              style: TextStyle(color: Colors.black))
                        ],
                      )),
                    ))
                : Container(
                    padding: const EdgeInsets.only(left: 0),
                    height: 80,
                    width: 287,
                    child: Center(
                      child: Column(
                        children: [
                          RichText(
                              text: TextSpan(
                            style: GoogleFonts.ibmPlexSansThai(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'เลือก ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  )),
                              TextSpan(
                                  text: 'แพ็กเกจ',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 75, 195, 211))),
                            ],
                          )),
                          Text(' ที่เหมาะกับธุรกิจของคุณ ?',
                              style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                    )),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 107
                  : Responsive.isTablet(context)
                      ? 22
                      : 30,
            ),
            Responsive.isDesktop(context)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HoverOffsetContainer(
                        defaultOffset: 0,
                        hoverOffset: -74,
                        child: PackageCard(
                          packageicon: 'packages/cloud.png',
                          title: 'Express',
                          lisence: 'SaaS',
                          packages: express,
                          buttoncolor: true,
                          firstbox: true,
                          middlebox: false,
                          lastbox: false,
                        ),
                      ),
                      SizedBox(width: 14),
                      HoverOffsetContainer(
                        defaultOffset: 0,
                        hoverOffset: -74,
                        child: PackageCard(
                          packageicon: 'packages/clouds.png',
                          title: 'Standard',
                          lisence: 'Subscriptions License',
                          packages: standard,
                          // backgroundcolor: Color.fromARGB(255, 5, 45, 97),
                          buttoncolor: false,
                          firstbox: false,
                          middlebox: true,
                          lastbox: false,
                        ),
                      ),
                      SizedBox(width: 14),
                      HoverOffsetContainer(
                        defaultOffset: 0,
                        hoverOffset: -74,
                        child: PackageCard(
                          packageicon: 'packages/rainbow_cloud.png',
                          title: 'Enterprise',
                          lisence: 'Perpeptual License',
                          packages: enterprise,
                          buttoncolor: true,
                          firstbox: false,
                          middlebox: false,
                          lastbox: true,
                        ),
                      )
                    ],
                  )
                : Stack(children: [
                    Container(
                      height: Responsive.isTablet(context) ? 1008 : 680,
                    ),
                    Positioned(
                      bottom: Responsive.isTablet(context) ? 161 : 64,
                      left: Responsive.isTablet(context)
                          ? (MediaQuery.of(context).size.width / 2) - 77.4
                          : (MediaQuery.of(context).size.width / 2) - 43,
                      child: Container(
                        child: AnimatedSmoothIndicator(
                            activeIndex: _current,
                            count: 3,
                            effect: ScaleEffect(
                                spacing:
                                    Responsive.isTablet(context) ? 32.4 : 18,
                                activePaintStyle: PaintingStyle.stroke,
                                scale: 1.3,
                                activeStrokeWidth: 0.5,
                                dotWidth:
                                    Responsive.isTablet(context) ? 28.8 : 16,
                                dotHeight:
                                    Responsive.isTablet(context) ? 28.8 : 16,
                                dotColor: Color.fromARGB(255, 5, 45, 97))),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // height: Responsive.isTablet(context) ? 845 : 565,
                          child: CarouselSlider.builder(
                            itemCount: _carouselItems.length,
                            itemBuilder: (BuildContext context, int index,
                                int realIndex) {
                              return Transform.translate(
                                  offset: _current == index
                                      ? Offset(0, 0)
                                      : Offset(
                                          0,
                                          Responsive.isTablet(context)
                                              ? 74
                                              : 24),
                                  child: _carouselItems[index]);
                            },
                            options: CarouselOptions(
                                pageSnapping: false,
                                enableInfiniteScroll: false,
                                scrollPhysics: PageScrollPhysics(),
                                autoPlay: false,
                                height:
                                    Responsive.isTablet(context) ? 845 : 575,
                                viewportFraction: Responsive.isTablet(context)
                                    ? 0.625 -
                                        ((MediaQuery.of(context).size.width -
                                                768) *
                                            0.00035)
                                    : 0.83 -
                                        ((MediaQuery.of(context).size.width -
                                                375) *
                                            0.001),
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                            carouselController: _controller,
                          ),
                        ),
                        // SizedBox(
                        //   height: Responsive.isDesktop(context)
                        //       ? 0
                        //       : Responsive.isTablet(context)
                        //           ? 166
                        //           : 117,
                        // ),
                        // SizedBox(height: 10),
                      ],
                    ),
                  ]),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? 65
                  : Responsive.isTablet(context)
                      ? 0
                      : 0,
            ),
          ],
        ),
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  const PackageCard(
      {super.key,
      required this.packageicon,
      required this.title,
      required this.lisence,
      required this.packages,
      this.backgroundcolor,
      required this.buttoncolor,
      required this.middlebox,
      required this.firstbox,
      required this.lastbox});
  final String packageicon;
  final String title;
  final String lisence;
  final List<Package> packages;
  final Color? backgroundcolor;
  final bool buttoncolor;
  final bool firstbox;
  final bool middlebox;
  final bool lastbox;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
              height: Responsive.isDesktop(context)
                  ? middlebox
                      ? 0
                      : 0
                  : Responsive.isTablet(context)
                      ? firstbox
                          ? 0
                          : middlebox
                              ? 0
                              : 0
                      : middlebox
                          ? 0
                          : 0),
          Container(
            padding: const EdgeInsets.only(left: 0),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Responsive.isDesktop(context)
                        ? Color.fromARGB(59, 0, 0, 0)
                        : Responsive.isTablet(context)
                            ? Color.fromARGB(59, 0, 0, 0)
                            : middlebox
                                ? Color.fromARGB(59, 0, 0, 0)
                                : Color.fromARGB(0, 255, 255, 255),
                    blurRadius: 3.0,
                    offset: Offset(0.0, 4.0))
              ],
              borderRadius: BorderRadius.circular(20),
              color: backgroundcolor ?? Color.fromARGB(255, 255, 255, 255),
            ),
            height: !Responsive.isMobile(context)
                ? firstbox
                    ? 759
                    : middlebox
                        ? 756
                        : 768
                : middlebox
                    ? 546
                    : 537,
            width: Responsive.isDesktop(context)
                ? 461
                : Responsive.isTablet(context)
                    ? 461
                    : 296,
            // padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                SizedBox(
                  height: Responsive.isMobile(context) ? 25 : 43,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: Responsive.isMobile(context) ? 27 : 17,
                    ),
                    Container(
                      height: 51,
                      width: Responsive.isDesktop(context)
                          ? 83
                          : Responsive.isTablet(context)
                              ? 83
                              : 50,
                      child: SizedBox(
                          height: Responsive.isDesktop(context)
                              ? 51
                              : Responsive.isTablet(context)
                                  ? 40
                                  : firstbox
                                      ? 34.3
                                      : middlebox
                                          ? 50
                                          : 30.72,
                          width: Responsive.isDesktop(context)
                              ? firstbox
                                  ? 45
                                  : 83
                              : Responsive.isTablet(context)
                                  ? 40
                                  : 50,
                          child: Image.asset("assets/$packageicon")),
                    ),
                    SizedBox(
                      width: Responsive.isMobile(context) ? 36 : 38,
                    ),
                    Container(
                        height: 40,
                        padding: EdgeInsets.only(
                            left: Responsive.isDesktop(context)
                                ? 0
                                : Responsive.isTablet(context)
                                    ? 0
                                    : 0,
                            top: Responsive.isDesktop(context)
                                ? 0
                                : Responsive.isTablet(context)
                                    ? 0
                                    : 0),
                        child: Transform.translate(
                          offset:
                              Offset(0, Responsive.isMobile(context) ? 10 : -5),
                          child: Text(
                            title,
                            style: GoogleFonts.poppins(
                                fontSize:
                                    !Responsive.isMobile(context) ? 32 : 20,
                                fontWeight: FontWeight.w700),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: Responsive.isDesktop(context)
                      ? firstbox
                          ? 23.5
                          : middlebox
                              ? 22.5
                              : 32
                      : Responsive.isTablet(context)
                          ? firstbox
                              ? 23.5
                              : middlebox
                                  ? 22.5
                                  : 32
                          : 0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: packages.length,
                    itemBuilder: (context, index) {
                      return Buildpackagetile(package: packages[index]);
                    },
                  ),
                ),
                SizedBox(height: !Responsive.isMobile(context) ? 5 : 0),
                Transform.translate(
                  offset: Offset(
                      Responsive.isDesktop(context)
                          ? -35
                          : Responsive.isTablet(context)
                              ? -35
                              : -20,
                      Responsive.isDesktop(context)
                          ? 0
                          : Responsive.isTablet(context)
                              ? 0
                              : 0),
                  child: SizedBox(
                    width: !Responsive.isMobile(context) ? 352 : 200,
                    child: DottedLine(
                      dashColor:
                          // Responsive.isDesktop(context)
                          //     ? middlebox
                          //         ? Colors.white
                          //         : Color.fromARGB(255, 169, 169, 170)
                          //     :
                          Color.fromARGB(255, 169, 169, 170),
                      dashGapLength: 3,
                      dashLength: 5,
                    ),
                  ),
                ),
                SizedBox(height: 19),
                Transform.translate(
                  offset: Offset(
                      Responsive.isDesktop(context)
                          ? 18
                          : Responsive.isTablet(context)
                              ? 18
                              : 50,
                      Responsive.isDesktop(context)
                          ? 0
                          : Responsive.isTablet(context)
                              ? 0
                              : 0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        lisence,
                        style: GoogleFonts.poppins(
                            // color: Responsive.isDesktop(context)
                            //     ? middlebox
                            //         ? Colors.white
                            //         : Colors.black
                            //     : Colors.black,
                            fontSize: !Responsive.isMobile(context) ? 28 : 16,
                            fontWeight: FontWeight.w700),
                      )),
                ),
                SizedBox(
                    height: Responsive.isDesktop(context)
                        ? firstbox
                            ? 19
                            : 22
                        : 11),
                HButton(
                    middlebox: middlebox, firstbox: firstbox, lastbox: lastbox),
                // buttoncolor
                //     ? SizedBox(
                //         width: !Responsive.isMobile(context) ? 321 : 193,
                //         height: !Responsive.isMobile(context) ? 61 : 48,
                //         child: OutlinedButton(
                //             onPressed: () => context
                //                 .go(firstbox ? '/package/1' : '/package/3'),
                //             style: OutlinedButton.styleFrom(
                //               side: BorderSide(
                //                 width: 1.0,
                //                 color: Color.fromARGB(255, 75, 195, 211),
                //               ),
                //               backgroundColor: Color.fromARGB(19, 75, 195, 211),
                //               shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(30.0),
                //               ),
                //             ),
                //             child: Text(
                //               ' See more',
                //               style: GoogleFonts.ibmPlexSansThai(
                //                   fontSize:
                //                       !Responsive.isMobile(context) ? 22 : 20,
                //                   fontWeight: FontWeight.w600,
                //                   color: Colors.black),
                //             )),
                //       )
                //     : SizedBox(
                //         width: !Responsive.isMobile(context) ? 321 : 193,
                //         height: !Responsive.isMobile(context) ? 61 : 48,
                //         child: ElevatedButton(
                //             onPressed: () => context.go('/package/2'),
                //             style: ElevatedButton.styleFrom(
                //               backgroundColor: Color.fromRGBO(75, 195, 211, 1),
                //               shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(30.0),
                //               ),
                //             ),
                //             child: Text(
                //               ' See more',
                //               style: GoogleFonts.ibmPlexSansThai(
                //                   fontSize:
                //                       !Responsive.isMobile(context) ? 22 : 20,
                //                   fontWeight: FontWeight.w600),
                //             )),
                //       ),
                SizedBox(height: Responsive.isMobile(context) ? 23 : 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HoverOffsetContainer extends StatefulWidget {
  final Widget child;
  final double defaultOffset;
  final double hoverOffset;

  HoverOffsetContainer({
    required this.child,
    required this.defaultOffset,
    required this.hoverOffset,
  });

  @override
  _HoverOffsetContainerState createState() => _HoverOffsetContainerState();
}

class _HoverOffsetContainerState extends State<HoverOffsetContainer> {
  double _offset = 0.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _offset = widget.hoverOffset;
        });
      },
      onExit: (_) {
        setState(() {
          _offset = widget.defaultOffset;
        });
      },
      child: Transform.translate(
        offset: Offset(0, _offset),
        child: widget.child,
      ),
    );
  }
}

class Buildpackagetile extends StatelessWidget {
  const Buildpackagetile({super.key, required this.package});
  final Package package;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minVerticalPadding: 0,
          dense: Responsive.isDesktop(context)
              ? false
              : Responsive.isTablet(context)
                  ? false
                  : true,
          visualDensity: VisualDensity(
              horizontal: Responsive.isDesktop(context)
                  ? -4
                  : Responsive.isTablet(context)
                      ? -4
                      : -4,
              vertical: Responsive.isDesktop(context)
                  ? 1
                  : Responsive.isTablet(context)
                      ? 1
                      : -4),
          horizontalTitleGap: 10,
          leading: Transform.translate(
            offset: Offset(
                Responsive.isDesktop(context)
                    ? 50
                    : Responsive.isTablet(context)
                        ? 50
                        : 8,
                Responsive.isDesktop(context)
                    ? 0
                    : Responsive.isTablet(context)
                        ? 0
                        : -2),
            child: SizedBox(
                width: !Responsive.isMobile(context) ? 20.83 : 12.5,
                height: !Responsive.isMobile(context) ? 20.83 : 12.5,
                child: Image.asset("assets/packages/check.png")),
          ),
          title: Transform.translate(
            offset: Offset(
                Responsive.isDesktop(context)
                    ? 40
                    : Responsive.isTablet(context)
                        ? 40
                        : -10,
                Responsive.isDesktop(context)
                    ? 0
                    : Responsive.isTablet(context)
                        ? 0
                        : 0),
            child: Text(
              package.title,
              style: GoogleFonts.ibmPlexSansThai(
                  // color: package.position
                  //     ? Color.fromARGB(255, 255, 255, 255)
                  //     : Colors.black,
                  fontSize: !Responsive.isMobile(context) ? 20 : 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: package.children.length,
          itemBuilder: (context, index) {
            return ListTile(
              // contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: -50.0),
              dense: true,
              visualDensity: VisualDensity(
                  horizontal: Responsive.isDesktop(context)
                      ? 0
                      : Responsive.isTablet(context)
                          ? 0
                          : -4,
                  vertical: -4),
              horizontalTitleGap: 8,
              minVerticalPadding: 0,
              title: Transform.translate(
                offset: Offset(
                    Responsive.isDesktop(context)
                        ? 62.5
                        : Responsive.isTablet(context)
                            ? 62.5
                            : 15,
                    Responsive.isDesktop(context)
                        ? 0
                        : Responsive.isTablet(context)
                            ? 0
                            : 0),
                child: Text(package.children[index],
                    style: GoogleFonts.ibmPlexSansThai(
                        fontSize: !Responsive.isMobile(context) ? 18 : 14,
                        fontWeight: FontWeight.w400)),
              ),

              leading: Transform.translate(
                offset: Offset(
                    Responsive.isDesktop(context)
                        ? 90
                        : Responsive.isTablet(context)
                            ? 90
                            : 40,
                    Responsive.isDesktop(context)
                        ? 0
                        : Responsive.isTablet(context)
                            ? 0
                            : 0),
                child: SizedBox(
                    width: !Responsive.isMobile(context) ? 12 : 10,
                    height: !Responsive.isMobile(context) ? 12 : 10,
                    child: Image(image: AssetImage("packages/record.png"))),
              ),
            );
          },
        ),
      ],
    );
  }
}

class HButton extends StatefulWidget {
  @override
  const HButton(
      {super.key,
      required this.middlebox,
      required this.firstbox,
      required this.lastbox});
  final bool firstbox;
  final bool middlebox;
  final bool lastbox;
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<HButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: isHovered
              ? SizedBox(
                  width: !Responsive.isMobile(context) ? 321 : 193,
                  height: !Responsive.isMobile(context) ? 61 : 48,
                  child: TextButton(
                      onPressed: () => context.go(widget.firstbox
                          ? '/package/1'
                          : widget.middlebox
                              ? '/package/2'
                              : '/package/3'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 75, 195, 211),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        ' See more',
                        style: GoogleFonts.ibmPlexSansThai(
                            fontSize: !Responsive.isMobile(context) ? 22 : 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      )),
                )
              : SizedBox(
                  width: !Responsive.isMobile(context) ? 321 : 193,
                  height: !Responsive.isMobile(context) ? 61 : 48,
                  child: OutlinedButton(
                      onPressed: () => context.go(widget.firstbox
                          ? '/package/1'
                          : widget.middlebox
                              ? '/package/2'
                              : '/package/3'),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 75, 195, 211),
                        ),
                        backgroundColor: Color.fromARGB(19, 75, 195, 211),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        ' See more',
                        style: GoogleFonts.ibmPlexSansThai(
                            fontSize: !Responsive.isMobile(context) ? 22 : 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )),
                )),
    );
  }
}
