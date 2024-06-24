import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:go_router/go_router.dart';

class GAMSfeaturesPage extends StatelessWidget {
  const GAMSfeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> reason = [
      Responsive.isMobile(context)
          ? "บันทึกและจัดเก็บเอกสาร ที่ใช้งานภายใต้มาตรฐาน ISO/IEC 27001"
          : "บันทึกและจัดเก็บเอกสาร ที่ใช้งานภายใต้มาตรฐาน ISO/IEC 27001",
      Responsive.isMobile(context)
          ? "บริหารจัดการเวอร์ชั่นของเอกสาร เพื่อลดความเสี่ยงการหยิบใช้งานเอกสารที่ไม่ได้ใช้งานแล้ว"
          : "รบริหารจัดการเวอร์ชั่นของเอกสาร เพื่อลดความเสี่ยงการหยิบใช้งานเอกสารที่ไม่ได้ใช้งานแล้ว",
      Responsive.isMobile(context)
          ? "จําแนกเอกสารตามหมวดหมู่ ประเภทของเอกสาร ตามประเภทเอกสารที่กําหนดขึ้น"
          : "จําแนกเอกสารตามหมวดหมู่ ประเภทของเอกสาร ตามประเภทเอกสารที่กําหนดขึ้น",
      Responsive.isMobile(context)
          ? "ระบบจัดการมาตรการควบคุม Statement of Applicability (SoA) และจัดเก็บเวอร์ชันของ SOA"
          : "ระบบจัดการมาตรการควบคุม Statement of Applicability (SoA) และจัดเก็บเวอร์ชันของ SOA",
      Responsive.isMobile(context)
          ? "บันทึกและจัดการระดับชั้นความลับของเอกสาร เพื่อสะดวกสําหรับการจัดการสิทธิการเข้าใช้งานแต่ละเอกสาร"
          : "บันทึกและจัดการระดับชั้นความลับของเอกสาร เพื่อสะดวกสําหรับการจัดการสิทธิการเข้าใช้งานแต่ละเอกสาร",
      Responsive.isMobile(context)
          ? "แสดง Master List ในปัจจุบัน เพื่อง่ายต่อการติดตาม และใช้งานเอกสารภายใต้มาตรฐาน ISO/IEC 27001"
          : "มีแสดง Master List ในปัจจุบัน เพื่อง่ายต่อการติดตาม และใช้งานเอกสารภายใต้มาตรฐาน ISO/IEC 27001",
      Responsive.isMobile(context)
          ? "แสดงข้อกําหนดต่างๆ ของมาตรฐาน ISO/IEC 27001 ที่ต้องมีการจัดการเอกสาร หลักฐาน เพื่อง่ายต่อการติดตาม และทบทวนเอกสารเหล่านั้น"
          : "แสดงข้อกําหนดต่างๆ ของมาตรฐาน ISO/IEC 27001 ที่ต้องมีการจัดการเอกสาร หลักฐาน เพื่อง่ายต่อการติดตาม และทบทวนเอกสารเหล่านั้น",
      Responsive.isMobile(context)
          ? "สามารถค้นหาชื่อเอกสารและแสดงรายละเอียดรายการเอกสารที่ค้นหาได้"
          : "สามารถค้นหาชื่อเอกสารและแสดงรายละเอียดรายการเอกสารที่ค้นหาได้",
      Responsive.isMobile(context)
          ? "จัดทํารายงาน รายการเอกสารออกจากระบบในรูปแบบ Excel ได้"
          : "จัดทํารายงาน รายการเอกสารออกจากระบบในรูปแบบ Excel ได้"
    ];

    var gamsreasonsList = Container(
      width: Responsive.isDesktop(context)
          ? 900
          : Responsive.isTablet(context)
              ? 680
              : 360,
      height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: reason.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset("assets/about/gams/icon_Check.png")),
            ),
            title: Transform.translate(
              offset: Offset(-20, 2.5),
              child: Text(
                reason[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );

    List<String> riskreason = [
      Responsive.isMobile(context)
          ? "จัดการทรัพย์สินรอการประเมินความเสี่ยง"
          : "จัดการทรัพย์สินรอการประเมินความเสี่ยง",
      Responsive.isMobile(context)
          ? "จัดการรายการประเมินความเสี่ยง"
          : "จัดการรายการประเมินความเสี่ยง",
      Responsive.isMobile(context)
          ? "จัดการแบบประเมินความเสี่ยง"
          : "จัดการแบบประเมินความเสี่ยง",
    ];

    var riskreasonsList = Container(
      width: Responsive.isDesktop(context)
          ? 900
          : Responsive.isTablet(context)
              ? 680
              : 360,
      height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: riskreason.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset("assets/about/gams/icon_Check.png")),
            ),
            title: Transform.translate(
              offset: Offset(-20, 2.5),
              child: Text(
                riskreason[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );

    List<String> riskreason2 = [
      Responsive.isMobile(context)
          ? "ค้นหาและจัดเรียงสถานะรายการความเสี่ยง"
          : "ค้นหาและจัดเรียงสถานะรายการความเสี่ยง",
      Responsive.isMobile(context)
          ? "รายงานสรุปรายการตอบสนองความเสี่ยง"
          : "รายงานสรุปรายการตอบสนองความเสี่ยง",
      Responsive.isMobile(context)
          ? "รายงานสรุปรายการประเมินความเสี่ยง"
          : "รายงานสรุปรายการประเมินความเสี่ยง",
    ];

    var riskreasons2List = Container(
      width: Responsive.isDesktop(context)
          ? 900
          : Responsive.isTablet(context)
              ? 680
              : 360,
      height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: riskreason2.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset("assets/about/gams/icon_Check.png")),
            ),
            title: Transform.translate(
              offset: Offset(-20, 2.5),
              child: Text(
                riskreason2[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );

    List<String> riskreasonMobile = [
      Responsive.isMobile(context)
          ? "จัดการทรัพย์สินรอการประเมินความเสี่ยง"
          : "จัดการทรัพย์สินรอการประเมินความเสี่ยง",
      Responsive.isMobile(context)
          ? "จัดการรายการประเมินความเสี่ยง"
          : "จัดการรายการประเมินความเสี่ยง",
      Responsive.isMobile(context)
          ? "จัดการแบบประเมินความเสี่ยง"
          : "จัดการแบบประเมินความเสี่ยง",
      Responsive.isMobile(context)
          ? "ค้นหาและจัดเรียงสถานะรายการความเสี่ยง"
          : "ค้นหาและจัดเรียงสถานะรายการความเสี่ยง",
      Responsive.isMobile(context)
          ? "รายงานสรุปรายการตอบสนองความเสี่ยง"
          : "รายงานสรุปรายการตอบสนองความเสี่ยง",
      Responsive.isMobile(context)
          ? "รายงานสรุปรายการประเมินความเสี่ยง"
          : "รายงานสรุปรายการประเมินความเสี่ยง",
    ];

    var riskreasonMobileList = Container(
      width: Responsive.isDesktop(context)
          ? 900
          : Responsive.isTablet(context)
              ? 680
              : 360,
      height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: riskreasonMobile.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset("assets/about/gams/icon_Check.png")),
            ),
            title: Transform.translate(
              offset: Offset(-20, 2.5),
              child: Text(
                riskreason[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );

    List<String> AMSreason = [
      Responsive.isMobile(context)
          ? "จัดการประเมินความเสี่ยงเพื่อการตรวจสอบ"
          : "จัดการประเมินความเสี่ยงเพื่อการตรวจสอบ",
      Responsive.isMobile(context)
          ? "จัดการแผนการตรวจสอบ"
          : "จัดการแผนการตรวจสอบ",
      Responsive.isMobile(context)
          ? "จัดการโปรแกรมการตรวจสอบ"
          : "จัดการโปรแกรมการตรวจสอบ",
      Responsive.isMobile(context)
          ? "จัดการรายการตรวจสอบ"
          : "จัดการรายการตรวจสอบ",
    ];

    var AMSreasonsList = Container(
      width: Responsive.isDesktop(context)
          ? 900
          : Responsive.isTablet(context)
              ? 680
              : 360,
      height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: AMSreason.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset("assets/about/gams/icon_Check.png")),
            ),
            title: Transform.translate(
              offset: Offset(-20, 2.5),
              child: Text(
                AMSreason[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );

    List<String> AMSreason2 = [
      Responsive.isMobile(context)
          ? "จัดการผลการตรวจสอบ"
          : "จัดการผลการตรวจสอบ",
      Responsive.isMobile(context)
          ? "จัดการความเห็นการปรับปรุง"
          : "จัดการความเห็นการปรับปรุง",
      Responsive.isMobile(context)
          ? "ติดตามผลการปรับปรุง"
          : "ติดตามผลการปรับปรุง",
      Responsive.isMobile(context)
          ? "รายงานสรุปผลการตรวจสอบ"
          : "รายงานสรุปผลการตรวจสอบ",
    ];

    var AMSreasons2List = Container(
      width: Responsive.isDesktop(context)
          ? 900
          : Responsive.isTablet(context)
              ? 680
              : 360,
      height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: AMSreason2.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset("assets/about/gams/icon_Check.png")),
            ),
            title: Transform.translate(
              offset: Offset(-20, 2.5),
              child: Text(
                AMSreason2[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );

    List<String> KMSreason = [
      Responsive.isMobile(context)
          ? "ช่วยเหลือการใช้งานระบบ"
          : "ช่วยเหลือการใช้งานระบบ",
      Responsive.isMobile(context)
          ? "จัดการคู่มือการใช้งานระบบ"
          : "จัดการคู่มือการใช้งานระบบ",
    ];

    var KMSreasonsList = Container(
      width: Responsive.isDesktop(context)
          ? 900
          : Responsive.isTablet(context)
              ? 680
              : 360,
      height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: KMSreason.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset("assets/about/gams/icon_Check.png")),
            ),
            title: Transform.translate(
              offset: Offset(-20, 2.5),
              child: Text(
                KMSreason[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );

    List<String> KMSreason2 = [
      Responsive.isMobile(context)
          ? "จัดการเอกสารประกอบการดูแลระบบ"
          : "จัดการเอกสารประกอบการดูแลระบบ",
      Responsive.isMobile(context)
          ? "จัดการความรู้ตามกรอบมาตรฐาน"
          : "จัดการความรู้ตามกรอบมาตรฐาน",
    ];

    var KMSreasons2List = Container(
      width: Responsive.isDesktop(context)
          ? 900
          : Responsive.isTablet(context)
              ? 680
              : 360,
      height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: KMSreason2.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: Transform.translate(
              offset: Offset(-10, 0),
              child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset("assets/about/gams/icon_Check.png")),
            ),
            title: Transform.translate(
              offset: Offset(-20, 2.5),
              child: Text(
                KMSreason2[index],
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          );
        },
      ),
    );

    return Center(
      child: Responsive.isDesktop(context)
          ? Container(
              width: 1440,
              //height: 3000,
              child: Column(
                children: [
                  Container(
                    width: 1440,
                    //height: 3000,
                    color: Colors.white,
                    // color: Colors.amber,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 100),
                                  child: Container(
                                      width: 611,
                                      height: 574,
                                      child: Image.asset(
                                          "assets/about/gams/Iphone_GAMS01.png")),
                                ),
                                // Padding(
                                //   padding:
                                //       const EdgeInsets.only(top: 68, left: 106),
                                //   child: Wrap(
                                //     children: [
                                //       Padding(
                                //         padding: const EdgeInsets.only(top: 10),
                                //         child: Container(
                                //           width: 60,
                                //           height: 5,
                                //           decoration: BoxDecoration(
                                //               color: Color.fromARGB(
                                //                   255, 57, 128, 237),
                                //               borderRadius:
                                //                   BorderRadius.circular(20),
                                //               border: Border.all(
                                //                   color: Color.fromARGB(
                                //                       255, 57, 128, 237),
                                //                   width: 5)),
                                //         ),
                                //       ),
                                //       //
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 28),
                                    child: Container(
                                      width: 800,
                                      height: 150,
                                      child: Text(
                                        "Standard Document Control System\nระบบบริหารจัดการเอกสาร",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      width: 730,
                                      height: 280,
                                      child: Text(
                                        "การบริหารจัดการเอกสารตามมาตรฐาน ISO/IEC 27001 เป็นสิ่งสําคัญ เนื่องจากข้อกําหนดได้กําหนดให้มีการจัดทํา Documented Information เพื่อให้เป็นไปตามมาตรฐาน อีกทั้งเพื่อให้มั่นใจว่าผู้ปฏิบัติงานภายใต้ขอบเขต การขอรับรองจะสามารถปฏิบัติตามกระบวนการได้อย่างถูกต้องและเป็นปัจจุบัน จําเป็นต้องมีการบริหารจัดการเอกสาร ที่เกี่ยวข้องภายใต้ขอบเขต การขอรับรองที่มีประสิทธิภาพช่วยในการบริหารจัดการเอกสาร",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(
                                                255, 157, 157, 157)),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    top: 50,
                                    left: 406.6,
                                    right: 100,
                                    // right: 213.53,
                                    child: Container(
                                      width: 800,
                                      height: 450,
                                      // color: Colors.red,
                                      child: gamsreasonsList,
                                    ),
                                  ),
                                  // Container(
                                  //   width: 800,
                                  //   height: 388,
                                  //   child: Text.rich(TextSpan(children: [
                                  //     TextSpan(
                                  //         text:
                                  //             '\u2022 บันทึกและจัดเก็บเอกสาร ที่ใช้งานภายใต้มาตรฐาน ISO/IEC 27001\n',
                                  //         style: GoogleFonts.ibmPlexSansThai(
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w400,
                                  //             color: Colors.black)),
                                  //     TextSpan(
                                  //         text:
                                  //             '\u2022 บริหารจัดการเวอร์ชั่นของเอกสาร เพื่อลดความเสี่ยงการหยิบใช้งานเอกสารที่ไม่ได้ใช้งานแล้ว\n',
                                  //         style: GoogleFonts.ibmPlexSansThai(
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w400,
                                  //             color: Colors.black)),
                                  //     TextSpan(
                                  //         text:
                                  //             '\u2022 จําแนกเอกสารตามหมวดหมู่ ประเภทของเอกสาร ตามประเภทเอกสารที่กําหนดขึ้น\n',
                                  //         style: GoogleFonts.ibmPlexSansThai(
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w400,
                                  //             color: Colors.black)),
                                  //     TextSpan(
                                  //         text:
                                  //             '\u2022 ระบบจัดการมาตรการควบคุม Statement of Applicability (SoA) และจัดเก็บเวอร์ชันของ SOA\n',
                                  //         style: GoogleFonts.ibmPlexSansThai(
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w400,
                                  //             color: Colors.black)),
                                  //     TextSpan(
                                  //         text:
                                  //             '\u2022 บันทึกและจัดการระดับชั้นความลับของเอกสาร เพื่อสะดวกสําหรับการจัดการสิทธิการเข้าใช้งานแต่ละเอกสาร\n',
                                  //         style: GoogleFonts.ibmPlexSansThai(
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w400,
                                  //             color: Colors.black)),
                                  //     TextSpan(
                                  //         text:
                                  //             '\u2022 แสดง Master List ในปัจจุบัน เพื่อง่ายต่อการติดตาม และใช้งานเอกสารภายใต้มาตรฐาน ISO/IEC 27001\n',
                                  //         style: GoogleFonts.ibmPlexSansThai(
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w400,
                                  //             color: Colors.black)),
                                  //     TextSpan(
                                  //         text:
                                  //             '\u2022 แสดงข้อกําหนดต่างๆ ของมาตรฐาน ISO/IEC 27001 ที่ต้องมีการจัดการเอกสาร หลักฐาน เพื่อง่ายต่อการติดตาม และทบทวนเอกสารเหล่านั้น\n',
                                  //         style: GoogleFonts.ibmPlexSansThai(
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w400,
                                  //             color: Colors.black)),
                                  //     TextSpan(
                                  //         text:
                                  //             '\u2022 สามารถค้นหาชื่อเอกสารและแสดงรายละเอียดรายการเอกสารที่ค้นหาได้\n',
                                  //         style: GoogleFonts.ibmPlexSansThai(
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w400,
                                  //             color: Colors.black)),
                                  //     TextSpan(
                                  //         text:
                                  //             '\u2022 จัดทํารายงาน รายการเอกสารออกจากระบบในรูปแบบ Excel ได้',
                                  //         style: GoogleFonts.ibmPlexSansThai(
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w400,
                                  //             color: Colors.black)),
                                  //   ])),
                                  // )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 1440,
                    height: 800,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Center(
                      child: Container(
                        width: 1370,
                        height: 663,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 20,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 80,
                                          left: 0,
                                        ),
                                        child: Container(
                                          width: 670,
                                          height: 120,
                                          // decoration: BoxDecoration(
                                          //     border: Border.all(
                                          //         color: Colors.blueAccent)),
                                          child: Text(
                                            "Risk Management System\nระบบบริหารจัดการความเสี่ยง",
                                            style: GoogleFonts.poppins(
                                                fontSize: 36,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0)),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 34,
                                          left: 0,
                                        ),
                                        child: Container(
                                          width: 570,
                                          height: 140,
                                          child: Text(
                                            "ฟังก์ชันที่ใช้ในการบริหารจัดการโอกาสที่จะเกิดเหตุการณ์ความเสี่ยงลดลงหรือผลกระทบของความเสียหายจากเหตุการณ์ความเสี่ยงลดลง และอยู่ในระดับที่องค์กรยอมรับได้",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromARGB(
                                                    255, 157, 157, 157)),
                                          ),
                                        ),
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            new Positioned(
                                              top: 50,
                                              left: 500,
                                              right: 10,
                                              child: Container(
                                                width: 395,
                                                height: 200,

                                                // color: Colors.red,
                                                child: riskreasonsList,
                                              ),
                                            ),
                                            new Positioned(
                                              top: 30,
                                              // left: 550,
                                              // right: 10,
                                              child: Container(
                                                width: 400,
                                                height: 200,

                                                // color: Colors.red,
                                                child: riskreasons2List,
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 80, left: 800),
                                        child: Container(
                                            width: 470,
                                            height: 500,
                                            child: Image.asset(
                                                "assets/about/gams/Ipad_GAMS02.png")),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 1440,
                    height: 750,
                    color: Color.fromARGB(255, 232, 242, 254),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 1250),
                          child: Container(
                              width: 100,
                              height: 132,
                              child: Image.asset(
                                  "assets/about/gams/Frame-220.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Text(
                            "Asset Management System\nระบบบริหารจัดการทรัพย์สิน",
                            style: GoogleFonts.ibmPlexSansThai(
                                fontSize: 36,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 1000,
                            height: 200,
                            child: Text(
                              "ทุกองค์กรตระหนักถึงความจำเป็นในการตรวจสอบดูแลทรัพย์สินสำคัญ ที่องค์กรต้องพึ่งพา ไม่ว่าจะเป็น Hardware, Software, Information และ Process โดยในการบริหารจัดการ รวบรวม และจัดเก็บบันทึกรายการทรัพย์สิน ควรมีการจัดทำได้โดยง่าย สะดวก รวดเร็ว และทำให้การปรับปรุงข้อมูลเป็นไปได้อย่างถูกต้อง Asset Management เป็นระบบจัดการทรัพย์สิน โดยผู้ใช้งานสามารถดูรายการที่ทรัพย์สินทั้งหมด สามารถเพิ่ม และจัดการทรัพย์สินได้",
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 200, right: 80),
                                child: Container(
                                    width: 63,
                                    height: 60,
                                    child: Image.asset(
                                        "assets/about/gams/AMS_01.png")),
                              ),
                              VerticalDivider(
                                color: const Color.fromARGB(255, 57, 128, 237),
                                thickness: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 80, right: 80),
                                child: Container(
                                    width: 63,
                                    height: 60,
                                    child: Image.asset(
                                        "assets/about/gams/AMS_02.png")),
                              ),
                              VerticalDivider(
                                color: const Color.fromARGB(255, 57, 128, 237),
                                thickness: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 80, right: 80),
                                child: Container(
                                    width: 63,
                                    height: 60,
                                    child: Image.asset(
                                        "assets/about/gams/AMS_03.png")),
                              ),
                              VerticalDivider(
                                color: const Color.fromARGB(255, 57, 128, 237),
                                thickness: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 80, right: 80),
                                child: Container(
                                    width: 63,
                                    height: 60,
                                    child: Image.asset(
                                        "assets/about/gams/AMS_04.png")),
                              ),
                              VerticalDivider(
                                color: const Color.fromARGB(255, 57, 128, 237),
                                thickness: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 80, right: 150),
                                child: Container(
                                    width: 63,
                                    height: 60,
                                    child: Image.asset(
                                        "assets/about/gams/AMS_05.png")),
                              ),
                            ],
                          ),
                        ),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 150, right: 50),
                                child: Container(
                                  width: 170,
                                  height: 100,
                                  child: Text(
                                    "จัดการกลุ่มทรัพย์สิน",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 10, right: 50),
                                child: Container(
                                  width: 170,
                                  height: 100,
                                  child: Text(
                                    "จัดการรายละเอียดทรัพย์สิน",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 20, right: 40),
                                child: Container(
                                  width: 170,
                                  height: 100,
                                  child: Text(
                                    "จัดการประเภททรัพย์สิน",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 40, right: 50),
                                child: Container(
                                  width: 170,
                                  height: 100,
                                  child: Text(
                                    "ค้นหาและจัดเรียงรายการทรัพย์สิน",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              //
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 20, right: 50),
                                child: Container(
                                  width: 170,
                                  height: 100,
                                  child: Text(
                                    "รายงานสรุปรายการทรัพย์สิน",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1440,
                    height: 700,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 81, left: 0),
                                    child: Container(
                                      width: 610,
                                      height: 120,
                                      child: Text(
                                        "Assurance Management System ระบบบริหารงานตรวจสอบภายใน",
                                        style: GoogleFonts.poppins(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 34, left: 0),
                                    child: Container(
                                      width: 680,
                                      height: 250,
                                      child: Text(
                                        "กระบวนการตรวจสอบเป็นกระบวนการที่สำคัญในการสอบทานความถูกต้องและครบถ้วนของการปฏิบัติงานให้เป็นไปตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล ระบบจัดการกระบวนการตรวจสอบ ช่วยในการปฏิบัติงานของผู้ตรวจสอบ สามารถกำหนดการตรวจสอบตามกรอบพรบ.คุ้มครองข้อมูลส่วนบุคคล ออกรายงานและติดตามความคืบหน้าผลการแก้ไขจากประเด็นการตรวจสอบได้อย่างต่อเนื่อง",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromARGB(
                                                255, 157, 157, 157)),
                                      ),
                                    ),
                                  ),
                                  Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        new Positioned(
                                          top: 100,
                                          left: 0,
                                          // right: 100,
                                          child: Container(
                                            width: 420,
                                            height: 200,

                                            // color: Colors.red,
                                            child: AMSreasonsList,
                                          ),
                                        ),
                                        new Positioned(
                                          top: 50,
                                          left: 10,
                                          // right: 213.53,
                                          child: Container(
                                            width: 320,
                                            height: 200,

                                            // color: Colors.red,
                                            child: AMSreasons2List,
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 110, left: 750),
                                    child: Container(
                                        width: 590,
                                        height: 500,
                                        child: Image.asset(
                                            "assets/about/gams/PC_GAMS03.png")),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 1440,
                    color: Colors.white,
                    // color: Colors.amber,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 100, left: 0),
                                        child: Container(
                                            width: 611,
                                            height: 500,
                                            child: Image.asset(
                                                "assets/about/gams/Laptop_GAMS04.png")),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 650),
                                    child: Stack(
                                      children: [
                                        Column(
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 0, left: 520),
                                              child: Container(
                                                  width: 100,
                                                  height: 132,
                                                  child: Image.asset(
                                                      "assets/about/gams/Frame-220.png")),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, left: 0),
                                              child: Container(
                                                width: 600,
                                                height: 120,
                                                child: Text(
                                                  "Knowledge Management System ระบบคลังความรู้",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 36,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0)),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, left: 0),
                                              child: Container(
                                                width: 600,
                                                height: 120,
                                                child: Text(
                                                  "กระบวนการในการช่วยเหลือการใช้งานระบบ Governance & Assurance Master Suite จัดการคู่มือการใช้งานระบบ เอกสารประกอบการดูแลระบบ พร้อมความรู้ตามกรอบมาตรฐาน",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromARGB(
                                                              255,
                                                              157,
                                                              157,
                                                              157)),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                            Row(children: <Widget>[
                                              new Positioned(
                                                top: 50,
                                                left: 0,
                                                // right: 100,
                                                child: Container(
                                                  width: 300,
                                                  height: 150,

                                                  // color: Colors.red,
                                                  child: KMSreasonsList,
                                                ),
                                              ),
                                              new Positioned(
                                                top: 50,
                                                left: 0,
                                                // right: 213.53,
                                                child: Container(
                                                  width: 300,
                                                  height: 150,

                                                  // color: Colors.red,
                                                  child: KMSreasonsList,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 1440,
                    height: 700,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 150, left: 30),
                              child: Container(
                                width: 610,
                                height: 120,
                                child: Text(
                                  "Executive Support System ระบบสนับสนุนงานผู้บริหาร",
                                  style: GoogleFonts.poppins(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 34, left: 120, right: 90),
                              child: Container(
                                width: 610,
                                height: 150,
                                child: Text(
                                  "ฟังก์ชันที่ช่วยสนับสนุนงานสำหรับผู้บริหาร หรือผู้บังคับบัญชา สามารถมอบหมายงานให้ผู้รับผิดชอบ และติดตามผลการปฏิบัติงาน ช่วยให้ผู้บริหารติดตามผลการปฏิบัติงานได้อย่างครบถ้วน",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromARGB(
                                          255, 157, 157, 157)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: SizedBox(
                                    width: 193,
                                    height: 48,
                                    child: ElevatedButton(
                                      onPressed: () => context.go('/contact'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 52, 145, 206),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                      ),
                                      child: Text(
                                        'รับใบเสนอราคา',
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 20, right: 200),
                                  child: SizedBox(
                                    width: 193,
                                    height: 48,
                                    child: ElevatedButton(
                                      onPressed: () => context.go('/package'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 75, 195, 211),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                      ),
                                      child: Text(
                                        'Request Demo',
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 90, right: 17),
                              child: Container(
                                  width: 500,
                                  height: 500,
                                  child: Image.asset(
                                      "assets/about/gams/Ipad_GAMS05.png")),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Responsive.isTablet(context)
              ? Container(
                  width: 768,
                  //height: 3000,
                  child: Column(
                    children: [
                      Container(
                        width: 768,
                        //height: 3000,
                        color: Colors.white,
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Container(
                                          width: 337,
                                          height: 317,
                                          child: Image.asset(
                                              "assets/about/gams/Iphone_GAMS01.png")),
                                    ),

                                    // ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 28),
                                        child: Container(
                                          width: 400,
                                          height: 200,
                                          child: Text(
                                            "Standard Document Control System\nระบบบริหารจัดการเอกสาร",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 36,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0)),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Container(
                                          width: 400,
                                          height: 320,
                                          child: Text(
                                            "การบริหารจัดการเอกสารตามมาตรฐาน ISO/IEC 27001 เป็นสิ่งสําคัญ เนื่องจากข้อกําหนดได้กําหนดให้มีการจัดทํา Documented Information เพื่อให้เป็นไปตามมาตรฐาน อีกทั้งเพื่อให้มั่นใจว่าผู้ปฏิบัติงานภายใต้ขอบเขต การขอรับรองจะสามารถปฏิบัติตามกระบวนการได้อย่างถูกต้องและเป็นปัจจุบัน จําเป็นต้องมีการบริหารจัดการเอกสาร ที่เกี่ยวข้องภายใต้ขอบเขต การขอรับรองที่มีประสิทธิภาพช่วยในการบริหารจัดการเอกสาร",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 157, 157, 157)),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      new Positioned(
                                        top: 50,
                                        left: 406.6,
                                        right: 100,
                                        // right: 213.53,
                                        child: Container(
                                          width: 400,
                                          height: 650,
                                          // color: Colors.red,
                                          child: gamsreasonsList,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 768,
                        height: 850,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Center(
                          child: Container(
                            width: 712,
                            height: 750,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),

                            //color: Colors.white,
                            // color: Colors.amber,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Stack(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50, left: 0),
                                            child: Container(
                                              width: 400,
                                              height: 180,
                                              child: Text(
                                                "Risk Management\nSystem ระบบบริหารจัดการความเสี่ยง",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 36,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0)),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30, left: 0, right: 150),
                                            child: Container(
                                              width: 360,
                                              height: 170,
                                              child: Text(
                                                "ฟังก์ชันที่ใช้ในการบริหารจัดการโอกาสที่จะเกิดเหตุการณ์ความเสี่ยงลดลงหรือผลกระทบของความเสียหายจากเหตุการณ์ความเสี่ยงลดลง และอยู่ในระดับที่องค์กรยอมรับได้",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color.fromARGB(
                                                            255,
                                                            157,
                                                            157,
                                                            157)),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                          new Positioned(
                                            // top: 50,
                                            // left: 500,
                                            // right: 10,
                                            child: Container(
                                              width: 360,
                                              height: 130,

                                              // color: Colors.red,
                                              child: riskreasonsList,
                                            ),
                                          ),
                                          new Positioned(
                                            //top: 10,
                                            // left: 550,
                                            // right: 10,
                                            child: Container(
                                              width: 370,
                                              height: 130,

                                              // color: Colors.red,
                                              child: riskreasons2List,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 150, left: 350),
                                            child: Container(
                                                width: 334,
                                                height: 343,
                                                child: Image.asset(
                                                    "assets/about/gams/Ipad_GAMS02.png")),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 768,
                        height: 800,
                        color: Color.fromARGB(255, 232, 242, 254),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5, right: 600),
                              child: Container(
                                  width: 100,
                                  height: 132,
                                  child: Image.asset(
                                      "assets/about/gams/Frame-220.png")),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Text(
                                "Asset Management System\nระบบบริหารจัดการทรัพย์สิน",
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 578,
                                height: 300,
                                child: Text(
                                  "ทุกองค์กรตระหนักถึงความจำเป็นในการตรวจสอบดูแลทรัพย์สินสำคัญ ที่องค์กรต้องพึ่งพา ไม่ว่าจะเป็น Hardware, Software, Information และ Process โดยในการบริหารจัดการ รวบรวม และจัดเก็บบันทึกรายการทรัพย์สิน ควรมีการจัดทำได้โดยง่าย สะดวก รวดเร็ว และทำให้การปรับปรุงข้อมูลเป็นไปได้อย่างถูกต้อง Asset Management เป็นระบบจัดการทรัพย์สิน โดยผู้ใช้งานสามารถดูรายการที่ทรัพย์สินทั้งหมด สามารถเพิ่ม และจัดการทรัพย์สินได้",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 70, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_01.png")),
                                  ),
                                  VerticalDivider(
                                    color:
                                        const Color.fromARGB(255, 57, 128, 237),
                                    thickness: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 30, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_02.png")),
                                  ),
                                  VerticalDivider(
                                    color:
                                        const Color.fromARGB(255, 57, 128, 237),
                                    thickness: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 30, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_03.png")),
                                  ),
                                  VerticalDivider(
                                    color:
                                        const Color.fromARGB(255, 57, 128, 237),
                                    thickness: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 30, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_04.png")),
                                  ),
                                  VerticalDivider(
                                    color:
                                        const Color.fromARGB(255, 57, 128, 237),
                                    thickness: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 30, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_05.png")),
                                  ),
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 55, right: 20),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      child: Text(
                                        "จัดการกลุ่มทรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 0, right: 20),
                                    child: Container(
                                      width: 130,
                                      height: 100,
                                      child: Text(
                                        "จัดการรายละเอียดทรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 0, right: 20),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      child: Text(
                                        "จัดการประเภททรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 0, right: 20),
                                    child: Container(
                                      width: 120,
                                      height: 100,
                                      child: Text(
                                        "ค้นหาและจัดเรียงรายการทรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  //
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 0, right: 20),
                                    child: Container(
                                      width: 120,
                                      height: 100,
                                      child: Text(
                                        "รายงานสรุปรายการทรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 768,
                        height: 1150,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 100, left: 100),
                                        child: Container(
                                            width: 481,
                                            height: 369,
                                            child: Image.asset(
                                                "assets/about/gams/PC_GAMS03.png")),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 500, left: 0, right: 70),
                                        child: Container(
                                          width: 600,
                                          height: 120,
                                          child: Text(
                                            "Assurance Management System ระบบบริหารงานตรวจสอบภายใน",
                                            style: GoogleFonts.poppins(
                                                fontSize: 36,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0)),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 34, left: 0, right: 50),
                                        child: Container(
                                          width: 620,
                                          height: 250,
                                          child: Text(
                                            "กระบวนการตรวจสอบเป็นกระบวนการที่สำคัญในการสอบทานความถูกต้องและครบถ้วนของการปฏิบัติงานให้เป็นไปตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล ระบบจัดการกระบวนการตรวจสอบ ช่วยในการปฏิบัติงานของผู้ตรวจสอบ สามารถกำหนดการตรวจสอบตามกรอบพรบ.คุ้มครองข้อมูลส่วนบุคคล ออกรายงานและติดตามความคืบหน้าผลการแก้ไขจากประเด็นการตรวจสอบได้อย่างต่อเนื่อง",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromARGB(
                                                    255, 157, 157, 157)),
                                          ),
                                        ),
                                      ),
                                      Row(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            new Positioned(
                                              top: 100,
                                              left: 0,
                                              // right: 100,
                                              child: Container(
                                                width: 380,
                                                height: 200,

                                                // color: Colors.red,
                                                child: AMSreasonsList,
                                              ),
                                            ),
                                            new Positioned(
                                              top: 50,
                                              left: 10,
                                              // right: 213.53,
                                              child: Container(
                                                width: 320,
                                                height: 200,

                                                // color: Colors.red,
                                                child: AMSreasons2List,
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 768,
                        height: 1000,
                        color: Colors.white,
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
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
                                                top: 60, left: 0),
                                            child: Container(
                                                width: 611,
                                                height: 500,
                                                child: Image.asset(
                                                    "assets/about/gams/Laptop_GAMS04.png")),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Stack(
                                          children: [
                                            Column(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0, left: 600),
                                                  child: Container(
                                                      width: 100,
                                                      height: 132,
                                                      child: Image.asset(
                                                          "assets/about/gams/Frame-220.png")),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 400, left: 0),
                                                  child: Container(
                                                    width: 600,
                                                    height: 120,
                                                    child: Text(
                                                      "Knowledge Management System ระบบคลังความรู้",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 36,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color
                                                                  .fromARGB(255,
                                                                      0, 0, 0)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5, left: 0),
                                                  child: Container(
                                                    width: 600,
                                                    height: 120,
                                                    child: Text(
                                                      "กระบวนการในการช่วยเหลือการใช้งานระบบ Governance & Assurance Master Suite จัดการคู่มือการใช้งานระบบ เอกสารประกอบการดูแลระบบ พร้อมความรู้ตามกรอบมาตรฐาน",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      157,
                                                                      157,
                                                                      157)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                ),
                                                Row(children: <Widget>[
                                                  new Positioned(
                                                    top: 50,
                                                    left: 0,
                                                    // right: 100,
                                                    child: Container(
                                                      width: 300,
                                                      height: 150,

                                                      // color: Colors.red,
                                                      child: KMSreasonsList,
                                                    ),
                                                  ),
                                                  new Positioned(
                                                    top: 50,
                                                    left: 0,
                                                    // right: 213.53,
                                                    child: Container(
                                                      width: 300,
                                                      height: 150,

                                                      // color: Colors.red,
                                                      child: KMSreasonsList,
                                                    ),
                                                  ),
                                                ]),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 1440,
                        height: 800,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50, left: 0, right: 280),
                                            child: Container(
                                              width: 300,
                                              height: 220,
                                              child: Text(
                                                "Executive Support System ระบบสนับสนุนงานผู้บริหาร",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 36,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 34, left: 0, right: 230),
                                            child: Container(
                                              width: 350,
                                              height: 200,
                                              child: Text(
                                                "ฟังก์ชันที่ช่วยสนับสนุนงานสำหรับผู้บริหาร หรือผู้บังคับบัญชา สามารถมอบหมายงานให้ผู้รับผิดชอบ และติดตามผลการปฏิบัติงาน ช่วยให้ผู้บริหารติดตามผลการปฏิบัติงานได้อย่างครบถ้วน",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color
                                                                .fromARGB(255,
                                                            157, 157, 157)),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, left: 20),
                                                child: SizedBox(
                                                  width: 193,
                                                  height: 48,
                                                  child: ElevatedButton(
                                                    onPressed: () =>
                                                        context.go('/contact'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              52, 145, 206),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0)),
                                                    ),
                                                    child: Text(
                                                      'รับใบเสนอราคา',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10,
                                                    left: 20,
                                                    right: 200),
                                                child: SizedBox(
                                                  width: 193,
                                                  height: 48,
                                                  child: ElevatedButton(
                                                    onPressed: () =>
                                                        context.go('/package'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              75, 195, 211),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0)),
                                                    ),
                                                    child: Text(
                                                      'Request Demo',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 90, left: 450),
                                            child: Container(
                                                width: 249,
                                                height: 345,
                                                child: Image.asset(
                                                    "assets/about/gams/Ipad_GAMS05.png")),
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
                      ),
                    ],
                  ),
                )
              : Center(
                  //width: 768,
                  //height: 3000,
                  child: Column(
                    children: [
                      Container(
                        width: 375,
                        height: 1500,
                        color: Colors.white,
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 40),
                                        child: Container(
                                            width: 337,
                                            height: 317,
                                            child: Image.asset(
                                                "assets/about/gams/Iphone_GAMS01.png")),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 350, left: 0, right: 10),
                                        child: Container(
                                          width: 340,
                                          height: 120,
                                          child: Text(
                                            "Standard Document Control System\nระบบบริหารจัดการเอกสาร",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0)),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 0),
                                        child: Container(
                                          width: 350,
                                          height: 280,
                                          child: Text(
                                            "การบริหารจัดการเอกสารตามมาตรฐาน ISO/IEC 27001 เป็นสิ่งสําคัญ เนื่องจากข้อกําหนดได้กําหนดให้มีการจัดทํา Documented Information เพื่อให้เป็นไปตามมาตรฐาน อีกทั้งเพื่อให้มั่นใจว่าผู้ปฏิบัติงานภายใต้ขอบเขต การขอรับรองจะสามารถปฏิบัติตามกระบวนการได้อย่างถูกต้องและเป็นปัจจุบัน จําเป็นต้องมีการบริหารจัดการเอกสาร ที่เกี่ยวข้องภายใต้ขอบเขต การขอรับรองที่มีประสิทธิภาพช่วยในการบริหารจัดการเอกสาร",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 157, 157, 157)),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      new Positioned(
                                        top: 50,
                                        left: 0,
                                        right: 150,
                                        // right: 213.53,
                                        child: Container(
                                          width: 350,
                                          height: 700,
                                          // decoration: BoxDecoration(
                                          //     border: Border.all(
                                          //         color: Colors.blueAccent)),
                                          // color: Colors.red,
                                          child: gamsreasonsList,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 1100,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Center(
                          child: Container(
                            width: 350,
                            height: 1000,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),

                            //color: Colors.white,
                            // color: Colors.amber,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Stack(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50, left: 0),
                                            child: Container(
                                                width: 334,
                                                height: 343,
                                                child: Image.asset(
                                                    "assets/about/gams/Ipad_GAMS02.png")),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 430, left: 0),
                                            child: Container(
                                              width: 350,
                                              height: 90,
                                              child: Text(
                                                "Risk ManagementSystem\nระบบบริหารจัดการความเสี่ยง",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0)),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 0, right: 20),
                                            child: Container(
                                              width: 320,
                                              height: 130,
                                              // decoration: BoxDecoration(
                                              //     border: Border.all(
                                              //         color:
                                              //             Colors.blueAccent)),
                                              child: Text(
                                                "ฟังก์ชันที่ใช้ในการบริหารจัดการโอกาสที่จะเกิดเหตุการณ์ความเสี่ยงลดลงหรือผลกระทบของความเสียหายจากเหตุการณ์ความเสี่ยงลดลง และอยู่ในระดับที่องค์กรยอมรับได้",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color.fromARGB(
                                                            255,
                                                            157,
                                                            157,
                                                            157)),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                          new Positioned(
                                            // top: 50,
                                            // left: 500,
                                            // right: 10,
                                            child: Container(
                                              width: 350,
                                              height: 140,

                                              // color: Colors.red,
                                              child: riskreasonsList,
                                            ),
                                          ),
                                          new Positioned(
                                            //top: 10,
                                            // left: 550,
                                            // right: 10,
                                            child: Container(
                                              width: 350,
                                              height: 150,

                                              // color: Colors.red,
                                              child: riskreasons2List,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 768,
                        height: 1100,
                        color: Color.fromARGB(255, 232, 242, 254),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 250),
                              child: Container(
                                  width: 80,
                                  height: 112,
                                  child: Image.asset(
                                      "assets/about/gams/Frame-220.png")),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Text(
                                "Asset Management System\nระบบบริหารจัดการทรัพย์สิน",
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 350,
                                height: 300,
                                child: Text(
                                  "ทุกองค์กรตระหนักถึงความจำเป็นในการตรวจสอบดูแลทรัพย์สินสำคัญ ที่องค์กรต้องพึ่งพา ไม่ว่าจะเป็น Hardware, Software, Information และ Process โดยในการบริหารจัดการ รวบรวม และจัดเก็บบันทึกรายการทรัพย์สิน ควรมีการจัดทำได้โดยง่าย สะดวก รวดเร็ว และทำให้การปรับปรุงข้อมูลเป็นไปได้อย่างถูกต้อง Asset Management เป็นระบบจัดการทรัพย์สิน โดยผู้ใช้งานสามารถดูรายการที่ทรัพย์สินทั้งหมด สามารถเพิ่ม และจัดการทรัพย์สินได้",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 70, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_01.png")),
                                  ),
                                  VerticalDivider(
                                    color:
                                        const Color.fromARGB(255, 57, 128, 237),
                                    thickness: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 30, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_02.png")),
                                  ),
                                  VerticalDivider(
                                    color:
                                        const Color.fromARGB(255, 57, 128, 237),
                                    thickness: 3,
                                  ),
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 55, right: 20),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      child: Text(
                                        "จัดการกลุ่มทรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 0, right: 20),
                                    child: Container(
                                      width: 130,
                                      height: 100,
                                      child: Text(
                                        "จัดการรายละเอียดทรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 70, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_03.png")),
                                  ),
                                  VerticalDivider(
                                    color:
                                        const Color.fromARGB(255, 57, 128, 237),
                                    thickness: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 30, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_04.png")),
                                  ),
                                  VerticalDivider(
                                    color:
                                        const Color.fromARGB(255, 57, 128, 237),
                                    thickness: 3,
                                  ),
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 50, right: 30),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      child: Text(
                                        "จัดการประเภททรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 0, right: 20),
                                    child: Container(
                                      width: 120,
                                      height: 100,
                                      child: Text(
                                        "ค้นหาและจัดเรียงรายการทรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 70, right: 30),
                                    child: Container(
                                        width: 60,
                                        height: 60,
                                        child: Image.asset(
                                            "assets/about/gams/AMS_05.png")),
                                  ),
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 40, right: 30),
                                    child: Container(
                                      width: 120,
                                      height: 100,
                                      child: Text(
                                        "รายงานสรุปรายการทรัพย์สิน",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 1050,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 100, left: 30),
                                        child: Container(
                                            width: 290,
                                            height: 329,
                                            child: Image.asset(
                                                "assets/about/gams/PC_GAMS03.png")),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 450, left: 0, right: 350),
                                        child: Container(
                                          width: 350,
                                          height: 100,
                                          child: Text(
                                            "Assurance Management System ระบบบริหารงานตรวจสอบภายใน",
                                            style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0)),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 0, right: 350),
                                        child: Container(
                                          width: 350,
                                          height: 250,
                                          child: Text(
                                            "กระบวนการตรวจสอบเป็นกระบวนการที่สำคัญในการสอบทานความถูกต้องและครบถ้วนของการปฏิบัติงานให้เป็นไปตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล ระบบจัดการกระบวนการตรวจสอบ ช่วยในการปฏิบัติงานของผู้ตรวจสอบ สามารถกำหนดการตรวจสอบตามกรอบพรบ.คุ้มครองข้อมูลส่วนบุคคล ออกรายงานและติดตามความคืบหน้าผลการแก้ไขจากประเด็นการตรวจสอบได้อย่างต่อเนื่อง",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromARGB(
                                                    255, 157, 157, 157)),
                                          ),
                                        ),
                                      ),
                                      Row(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            new Positioned(
                                              top: 100,
                                              left: 0,
                                              // right: 100,
                                              child: Container(
                                                width: 380,
                                                height: 200,

                                                // color: Colors.red,
                                                child: AMSreasonsList,
                                              ),
                                            ),
                                            new Positioned(
                                              top: 50,
                                              left: 10,
                                              // right: 213.53,
                                              child: Container(
                                                width: 320,
                                                height: 200,

                                                // color: Colors.red,
                                                child: AMSreasons2List,
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 750,
                        color: Colors.white,
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
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
                                                top: 100, left: 0),
                                            child: Container(
                                                width: 320,
                                                height: 163,
                                                child: Image.asset(
                                                    "assets/about/gams/Laptop_GAMS04.png")),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Stack(
                                          children: [
                                            Column(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0, left: 250),
                                                  child: Container(
                                                      width: 80,
                                                      height: 112,
                                                      child: Image.asset(
                                                          "assets/about/gams/Frame-220.png")),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 200,
                                                          left: 0,
                                                          right: 0),
                                                  child: Container(
                                                    width: 350,
                                                    height: 100,
                                                    child: Text(
                                                      "Knowledge Management System ระบบคลังความรู้",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color
                                                                  .fromARGB(255,
                                                                      0, 0, 0)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5,
                                                          left: 0,
                                                          right: 0),
                                                  child: Container(
                                                    width: 350,
                                                    height: 120,
                                                    child: Text(
                                                      "กระบวนการในการช่วยเหลือการใช้งานระบบ Governance & Assurance Master Suite จัดการคู่มือการใช้งานระบบ เอกสารประกอบการดูแลระบบ พร้อมความรู้ตามกรอบมาตรฐาน",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      157,
                                                                      157,
                                                                      157)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                ),
                                                new Positioned(
                                                  top: 50,
                                                  left: 0,
                                                  // right: 100,
                                                  child: Container(
                                                    width: 350,
                                                    height: 85,

                                                    // color: Colors.red,
                                                    child: KMSreasonsList,
                                                  ),
                                                ),
                                                new Positioned(
                                                  top: 50,
                                                  left: 0,
                                                  // right: 213.53,
                                                  child: Container(
                                                    width: 350,
                                                    height: 90,

                                                    // color: Colors.red,
                                                    child: KMSreasonsList,
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
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 700,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Stack(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50, left: 100),
                                            child: Container(
                                                width: 161,
                                                height: 224,
                                                child: Image.asset(
                                                    "assets/about/gams/Ipad_GAMS05.png")),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 340, left: 0, right: 240),
                                            child: Container(
                                              width: 300,
                                              height: 90,
                                              child: Text(
                                                "Executive Support System ระบบสนับสนุนงานผู้บริหาร",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 0, right: 200),
                                            child: Container(
                                              width: 340,
                                              height: 140,
                                              child: Text(
                                                "ฟังก์ชันที่ช่วยสนับสนุนงานสำหรับผู้บริหาร หรือผู้บังคับบัญชา สามารถมอบหมายงานให้ผู้รับผิดชอบ และติดตามผลการปฏิบัติงาน ช่วยให้ผู้บริหารติดตามผลการปฏิบัติงานได้อย่างครบถ้วน",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color
                                                                .fromARGB(255,
                                                            157, 157, 157)),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, left: 20),
                                                child: SizedBox(
                                                  width: 138,
                                                  height: 40,
                                                  child: ElevatedButton(
                                                    onPressed: () =>
                                                        context.go('/contact'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              52, 145, 206),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0)),
                                                    ),
                                                    child: Text(
                                                      'รับใบเสนอราคา',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10,
                                                    left: 20,
                                                    right: 230),
                                                child: SizedBox(
                                                  width: 150,
                                                  height: 40,
                                                  child: ElevatedButton(
                                                    onPressed: () =>
                                                        context.go('/package'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              75, 195, 211),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0)),
                                                    ),
                                                    child: Text(
                                                      'Request Demo',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
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
    );
  }
}
