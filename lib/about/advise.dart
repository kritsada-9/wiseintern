import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:go_router/go_router.dart';

class AdvisePage extends StatefulWidget {
  @override
  _AdviseState createState() => _AdviseState();
}

class _AdviseState extends State<AdvisePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Responsive.isDesktop(context)
            ? Container(
                width: 1440,
                height: 556,
                color: Color.fromARGB(255, 5, 45, 97),
                child: Stack(
                  children: [
                    Container(
                      width: 1440,
                      height: 556,
                      color: Color.fromARGB(255, 5, 45, 97),
                    ),
                    Container(
                      width: 290,
                      height: 180,
                      // color: Colors.black,
                      child: Image.asset(
                        "assets/about/who/top.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    new Positioned(
                      top: 50,
                      right: 0,
                      child: Container(
                        width: 180,
                        height: 500,
                        // color: Color.fromARGB(255, 12, 6, 121),
                        child: Image.asset(
                          "assets/about/who/right.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 166.5,
                      left: 118,
                      child: Container(
                        width: 540,
                        height: 65,
                        // color: Colors.amber,
                        child: Text(
                          "พร้อมวางแผนให้ธุรกิจคุณ!",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    new Positioned(
                        top: 240,
                        left: 118,
                        child: Text(
                          "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ\nได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork",
                          style: GoogleFonts.ibmPlexSansThai(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                          textAlign: TextAlign.start,
                        )),
                    new Positioned(
                      top: 47,
                      left: 745,
                      child: SizedBox(
                          width: 506,
                          height: 435,
                          child: Image.asset("assets/about/advise/comp.png")),
                    ),
                    new Positioned(
                      top: 375,
                      left: 118,
                      child: SizedBox(
                        width: 193,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () => context.go('/contact'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 75, 195, 211),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                          ),
                          child: Text(
                            'ติดต่อเรา',
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Center(
                child: Stack(
                  children: [
                    Container(
                      width: 1440,
                      height: Responsive.isTablet(context) ? 385 : 265,
                      color: Color.fromARGB(255, 5, 45, 97),
                    ),
                    Container(
                      width: Responsive.isTablet(context) ? 290 : 200,
                      height: Responsive.isTablet(context) ? 385 : 265,
                      // color: Colors.black,
                      child: Image.asset(
                        "assets/about/who/union.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Container(
                          width: Responsive.isTablet(context) ? 768 : 375,
                          height: Responsive.isTablet(context) ? 385 : 265,
                          child: Stack(
                            children: [
                              // Container(
                              //   width: Responsive.isTablet(context) ? 768 : 375,
                              //   height:
                              //       Responsive.isTablet(context) ? 385 : 265,
                              //   color: Color.fromARGB(255, 5, 45, 97),
                              // ),
                              new Positioned(
                                top: Responsive.isTablet(context) ? 70 : 50,
                                left: Responsive.isTablet(context) ? 150 : 50,
                                child: Container(
                                  width:
                                      Responsive.isTablet(context) ? 540 : 267,
                                  // height: Responsive.isTablet(context) ? 45 : 40,
                                  // color: Colors.amber,
                                  child: Text(
                                    "พร้อมวางแผนให้ธุรกิจคุณ!",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: Colors.white,
                                        fontSize: Responsive.isTablet(context)
                                            ? 36
                                            : 24,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              new Positioned(
                                  top: Responsive.isTablet(context) ? 170 : 100,
                                  left: Responsive.isTablet(context) ? 150 : 50,
                                  child: Text(
                                    Responsive.isTablet(context)
                                        ? "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA\nหัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย ปรึกษาเรา\n#TeamWiseWork"
                                        : "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA\nหัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย\nปรึกษาเรา #TeamWiseWork",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: Responsive.isTablet(context)
                                            ? 20
                                            : 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                    textAlign: TextAlign.start,
                                  )),
                              new Positioned(
                                top: Responsive.isTablet(context) ? 300 : 200,
                                left: Responsive.isTablet(context) ? 280 : 100,
                                child: SizedBox(
                                  width: 193,
                                  height: 46,
                                  child: ElevatedButton(
                                    onPressed: () => context.go('/contact'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 75, 195, 211),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                    ),
                                    child: Text(
                                      'ติดต่อเรา',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
  }
}
