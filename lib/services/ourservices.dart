import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OurservicesPage extends StatefulWidget {
  @override
  _OurservicesPageState createState() => _OurservicesPageState();
}

class _OurservicesPageState extends State<OurservicesPage> {
  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<String> pdpalistDT = [
      "ควบคุมกระบวนการด้วยระบบ บริหารงานผ่านระบบทั้งหมด\nได้อย่างมีประสิทธิภาพ ควบคุมกระบวนการได้ถูกต้องตามกฎหมาย",
      "จัดเก็บข้อมูลในระบบ รวบรวม consent ไว้ที่เดียว\nจัดการได้ง่าย เป็นปัจจุบัน มั่นใจว่านำไปใช้ตามวัตถุประสงค์",
      "ประเมิน ติดตามความเสี่ยง ตรวจสอบอย่างเป็นระบบ\nพร้อมบันทึกข้อมูลสำคัญที่จำเป็นในคดีความ เมื่อต้องใช้ในชั้นศาล",
      "บันทึกการขอใช้สิทธิฯ และการเปลี่ยนแปลงแก้ไขอย่างละเอียด\nรองรับการตรวจสอบจากสำนักงานคุ้มครองข้อมูลส่วนบุคคล"
    ];
    List<String> pdpalistTL = [
      "ควบคุมกระบวนการด้วยระบบ บริหารงานผ่านระบบทั้งหมด\nได้อย่างมีประสิทธิภาพ ควบคุมกระบวนการได้ถูกต้องตามกฎหมาย",
      "จัดเก็บข้อมูลในระบบ รวบรวม consent ไว้ที่เดียว จัดการได้ง่าย\nเป็นปัจจุบัน มั่นใจว่านำไปใช้ตามวัตถุประสงค์",
      "ประเมิน ติดตามความเสี่ยง ตรวจสอบอย่างเป็นระบบ\nพร้อมบันทึกข้อมูลสำคัญที่จำเป็นในคดีความ เมื่อต้องใช้ในชั้นศาล",
      "บันทึกการขอใช้สิทธิฯ และการเปลี่ยนแปลงแก้ไขอย่างละเอียด\nรองรับการตรวจสอบจากสำนักงานคุ้มครองข้อมูลส่วนบุคคล"
    ];
    List<String> pdpalistMB = [
      "ควบคุมกระบวนการด้วยระบบบริหารงาน\nผ่านระบบทั้งหมด ได้อย่างมีประสิทธิภาพ\nควบคุมกระบวนการได้ถูกต้องตามกฎหมาย",
      "จัดเก็บข้อมูลในระบบ รวบรวม consent\nไว้ที่เดียว จัดการได้ง่าย เป็นปัจจุบัน มั่นใจ\nว่านำไปใช้ตามวัตถุประสงค์",
      "ประเมิน ติดตามความเสี่ยง ตรวจสอบ\nอย่างเป็นระบบ พร้อมบันทึกข้อมูลสำคัญที่\nจำเป็นในคดีความ เมื่อต้องใช้ในชั้นศาล",
      "บันทึกการขอใช้สิทธิฯ และการเปลี่ยนแปลง\nแก้ไขอย่างละเอียด รองรับการตรวจสอบ\nจากสำนักงานคุ้มครองข้อมูลส่วนบุคคล"
    ];

    var pdpaDT = Container(
      // color: Colors.purpleAccent,
      width: 540,
      // height: 300,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: pdpalistDT.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4, horizontal: -4),
                  leading: Transform.translate(
                    offset: Offset(0, 0),
                    child: SizedBox(
                        width: 19,
                        height: 13,
                        child: Image.asset("assets/customer/black-check.png")),
                  ),
                  title: Transform.translate(
                    offset: Offset(0, 0),
                    child: Text(
                      pdpalistDT[index],
                      style: GoogleFonts.ibmPlexSansThai(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            );
          }),
    );
    var pdpaTL = Container(
      // color: Colors.purpleAccent,
      width: 520,
      // height: 300,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: pdpalistDT.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4, horizontal: -4),
                  leading: Transform.translate(
                    offset: Offset(0, 0),
                    child: SizedBox(
                        width: 19,
                        height: 13,
                        child: Image.asset("assets/customer/black-check.png")),
                  ),
                  title: Transform.translate(
                    offset: Offset(0, 0),
                    child: Text(
                      pdpalistDT[index],
                      style: GoogleFonts.ibmPlexSans(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            );
          }),
    );
    var pdpaMB = Container(
      // color: Colors.purpleAccent,
      width: 290,
      // height: 300,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: pdpalistDT.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4, horizontal: -4),
                  leading: Transform.translate(
                    offset: Offset(0, 0),
                    child: SizedBox(
                        width: 19,
                        height: 13,
                        child: Image.asset("assets/customer/black-check.png")),
                  ),
                  title: Transform.translate(
                    offset: Offset(0, -20),
                    child: Text(
                      pdpalistDT[index],
                      style: GoogleFonts.ibmPlexSansThai(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            );
          }),
    );

    return Center(
        child: Responsive.isDesktop(context)
            ? Column(
                children: [
                  Container(
                    width: 1440,
                    height: 800,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 60, left: 135),
                                  child: Container(
                                    width: 502,
                                    // color: Colors.indigo,
                                    child: Text(
                                      "PDPA\nManagement Platform",
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontSize: 48,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              Color.fromARGB(255, 31, 40, 79)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 44, left: 157),
                                  child: Container(
                                    // width: 662,
                                    // color: Colors.amber,
                                    child: Text(
                                      "Software ที่ถูกออกแบบมา โดยรวมข้อมูลเข้าสู่ศูนย์กลาง\nเพื่อการจัดการอย่างเป็นระบบ ครบทุกขั้นตอนใน Platform เดียว ",
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 74, 195, 212)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 140),
                                  child: pdpaDT,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 729,
                                  child: CarouselSlider(
                                    carouselController: _controller,
                                    options: CarouselOptions(
                                      viewportFraction: 1.25,
                                      height: 543,
                                      // enlargeCenterPage: true,
                                      autoPlay: true,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _current = index;
                                          // print('Current Page: $_current');
                                        });
                                      },
                                    ),
                                    items: [
                                      Image.asset(
                                          "assets/customer/notebook.png"),
                                      Image.asset("assets/customer/Ipad.png"),
                                      Image.asset("assets/customer/Iphone.png")
                                    ],
                                  ),
                                ),
                                Container(
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: _current,
                                      count: 3,
                                      effect: ScaleEffect(
                                          activePaintStyle:
                                              PaintingStyle.stroke,
                                          scale: 1.4,
                                          activeStrokeWidth: 1.0,
                                          dotWidth: 16,
                                          dotHeight: 16,
                                          dotColor:
                                              Color.fromARGB(255, 5, 45, 97))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1440,
                    color: Color.fromARGB(255, 232, 242, 254),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            "จัดการ PDPA อย่างเป็นระบบ ด้วย wisework",
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 48.36,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 5, 45, 97)),
                          ),
                        ),
                        Container(
                          child: Text(
                            "“การเก็บ ใช้ เปิดเผย และถ่ายโอนข้อมูลส่วนบุคคล ต้องได้รับความยินยอมจากเจ้าของข้อมูล\nโดยข้อยกเว้นจะมีเหตุอื่นที่ได้รับอนุญาตตามกฎหมาย”",
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Text(
                              "พร้อมให้คำปรึกษา วางแผน และวางระบบตามกฎหมาย สำหรับองค์กรและธุรกิจต่างๆ\nเติมเต็มให้ครบทั้ง People Process และ Technology มั่นใจได้ว่า เป็นไปตามที่กฎหมายกำหนด",
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 50),
                          child: Container(
                              width: 705,
                              height: 705,
                              child:
                                  Image.asset("assets/customer/process.png")),
                        )
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Container(
                    width: 1440,
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: Responsive.isTablet(context) ? 768 : 375,
                              // height: Responsive.isTablet(context) ? 1300 : 1000,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Responsive.isTablet(context)
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              top: 77, left: 74),
                                          child: Container(
                                            width: 502,
                                            child: Text(
                                              "PDPA\nManagemnet Platform",
                                              style: GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 48,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 31, 40, 79)),
                                            ),
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              top: 53, left: 35),
                                          child: Container(
                                            width: 251,
                                            child: Text(
                                              "PDPA\nManagemnet Platform",
                                              style: GoogleFonts.ibmPlexSansThai(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 31, 40, 79)),
                                            ),
                                          ),
                                        ),
                                  Responsive.isTablet(context)
                                      ? Padding(
                                          padding:
                                              const EdgeInsets.only(left: 74),
                                          child: Container(
                                            width: 629,
                                            child: Text(
                                                "Software ที่ถูกออกแบบมา โดยรวมข้อมูลเข้าสู่ศูนย์กลาง\nเพื่อการจัดการอย่างเป็นระบบ ครบทุกขั้นตอนใน Platform เดียว ",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 74, 195, 212))),
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              top: 25, left: 35),
                                          child: Container(
                                            width: 317,
                                            child: Text(
                                                "Software ที่ถูกออกแบบมา\nโดยรวมข้อมูลเข้าสู่ศูนย์กลาง\nเพื่อการจัดการอย่างเป็นระบบ",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 74, 195, 212))),
                                          ),
                                        ),
                                  Responsive.isTablet(context)
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, left: 70),
                                          child: pdpaTL,
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, left: 35),
                                          child: pdpaMB,
                                        ),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              // width: Responsive.isTablet(context) ? 697 : 376,
                              width: 1440,
                              child: CarouselSlider(
                                carouselController: _controller,
                                options: CarouselOptions(
                                  viewportFraction: 1.25,
                                  height:
                                      Responsive.isTablet(context) ? 430 : 230,
                                  // enlargeCenterPage: true,
                                  autoPlay: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                      // print('Current Page: $_current');
                                    });
                                  },
                                ),
                                items: [
                                  Image.asset("assets/customer/notebook.png"),
                                  Image.asset("assets/customer/Ipad.png"),
                                  Image.asset("assets/customer/Iphone.png")
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              child: AnimatedSmoothIndicator(
                                  activeIndex: _current,
                                  count: 3,
                                  effect: ScaleEffect(
                                      activePaintStyle: PaintingStyle.stroke,
                                      scale: 1.4,
                                      activeStrokeWidth: 1.0,
                                      dotWidth: 16,
                                      dotHeight: 16,
                                      dotColor:
                                          Color.fromARGB(255, 5, 45, 97))),
                            ),
                          ),
                          SizedBox(
                            height: Responsive.isTablet(context)?150:60,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 1440,
                    color: Color.fromARGB(255, 232, 242, 254),
                    child: Center(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Responsive.isTablet(context)
                            ? Padding(
                                padding: const EdgeInsets.only(top: 67),
                                child: Text(
                                  "จัดการ PDPA อย่างเป็นระบบ\nด้วย wisework",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 48,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 5, 45, 97)),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Text(
                                  "จัดการ PDPA อย่างเป็นระบบ\nด้วย wisework",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 5, 45, 97)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                        Responsive.isTablet(context)
                            ? Padding(
                                padding: const EdgeInsets.only(top: 52),
                                child: Text(
                                  "“การเก็บ ใช้ เปิดเผย และถ่ายโอนข้อมูลส่วนบุคคล ต้องได้รับความยินยอมจากเจ้าของข้อมูล\nโดยข้อยกเว้นจะมีเหตุอื่นที่ได้รับอนุญาตตามกฎหมาย”",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  "“การเก็บ ใช้ เปิดเผย\nและถ่ายโอนข้อมูลส่วนบุคคล\nต้องได้รับความยินยอมจาก\nเจ้าของข้อมูลโดยข้อยกเว้นจะมี\nเหตุอื่นที่ได้รับอนุญาตตามกฎหมาย”",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                        Responsive.isTablet(context)
                            ? Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Text(
                                  "พร้อมให้คำปรึกษา วางแผน และวางระบบตามกฎหมาย\nสำหรับองค์กรและธุรกิจต่างๆ\nเติมเต็มให้ครบทั้ง People Process และ Technology\nมั่นใจได้ว่า เป็นไปตามที่กฎหมายกำหนด",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  "พร้อมให้คำปรึกษา วางแผน\nและวางระบบตามกฎหมาย\nสำหรับองค์กรและธุรกิจต่างๆ\nเติมเต็มให้ครบทั้ง People Process และ\nTechnology มั่นใจได้ว่า\nเป็นไปตามที่กฎหมายกำหนด",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                        Responsive.isTablet(context)
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, bottom: 67),
                                child: SizedBox(
                                    width: 705,
                                    height: 705,
                                    child: Image.asset(
                                        "assets/customer/process.png")),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, bottom: 50),
                                child: SizedBox(
                                    width: 320,
                                    height: 320,
                                    child: Image.asset(
                                        "assets/customer/process.png")),
                              )
                      ],
                    )),
                  )
                ],
              ));
  }
}
