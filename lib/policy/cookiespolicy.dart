import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class cookiespolicy extends StatefulWidget {
  @override
  _cookiespolicy createState() => _cookiespolicy();
}

class _cookiespolicy extends State<cookiespolicy> {
  final List<String> optionsItem = [
    "option 1",
    "option 2",
    "option 3",
  ];

  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Responsive.isDesktop(context)
            ? Container(
                width: 1440,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 1440,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 1440,
                                  height: 2180,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 57, left: 100),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          width: 60,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 57, 128, 237),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 57, 128, 237),
                                                  width: 5)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          // color: Colors.amber,
                                          height: 20,
                                          child: Text(
                                            "Cookies Policy",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 57, 128, 237)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // height: 1450,
                                  width: 1440,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 150, left: 100),
                                                child: Text(
                                                  'OUR COOKIE POLICY นโยบายการใช้คุกกี้',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 48,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromARGB(
                                                        255, 5, 45, 97),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 40, left: 100),
                                                child: SizedBox(
                                                  height: 250,
                                                  width: 1200,
                                                  child: Text(
                                                    "คุกกี้ คือ ข้อมูลคอมพิวเตอร์ขนาดเล็ก (text file) ที่จะถูกติดตั้ง หรือบันทึกลงบนคอมพิวเตอร์หรืออุปกรณ์อิเล็กทรอนิกส์ของท่าน เมื่อท่าน เข้าชมเว็บไซต์ คุกกี้จะจดจำข้อมูลการใช้งานเว็บไซต์ของท่าน ทั้งนี้ บริษัทฯ จะเรียกเทคโนโลยีอื่นที่ทำหน้าที่คล้ายคลึงกันว่าคุกกี้ด้วย",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    157,
                                                                    157,
                                                                    157),
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                new Positioned(
                                  top: 430,
                                  left: 100,
                                  child: Container(
                                    width: 1250,
                                    height: 400,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 20,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Container(
                                        // margin: EdgeInsets.all(15),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5,
                                              left: 6,
                                              right: 6,
                                              bottom: 12),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  left: 15,
                                                  right: 900,
                                                ),
                                                child: Text(
                                                  'บริษัทฯ ใช้ คุกกี้ อย่างไร',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 24,
                                                          color: Color.fromARGB(
                                                              255,
                                                              75,
                                                              195,
                                                              211)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 50,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  '- เพื่อศึกษาพฤติกรรมการใช้งาน Website ของท่าน เพื่อนำไปพัฒนาให้สามารถใช้งานได้ง่าย รวดเร็ว และมีประสิทธิภาพยิ่งขึ้น',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 100,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  '- เพื่อทราบถึงรูปแบบการใช้และประวัติการใช้งานเว็บไซต์ ข้อมูลหรือบริการที่ท่านสนใจ และนำไปวิเคราะห์ เพื่อพัฒนาการให้บริการ แสดงเนื้อหา โฆษณา หรือประชาสัมพันธ์กิจกรรมที่เหมาะสมรวมถึงการบริการต่าง ๆ ที่ตรงกับความสนใจของท่าน เพื่อเพิ่มความพึงพอใจให้แก่ท่านได้มากยิ่งขึ้น',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 100,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  '- เพื่อแสดงโฆษณาบนเว็บไซต์ของบริษัทฯ หรือเพื่อจัดการโฆษณาของบริษัทฯ บนเว็บไซต์อื่น คู่ค้าเว็บไซต์อื่น ของบริษัทฯ อาจใช้เทคโนโลยี อย่างคุกกี้เพื่อรวบรวมข้อมูลกิจกรรมของท่านในเว็บไซต์นี้และเว็บไซต์อื่น เพื่อแสดงโฆษณาตามกิจกรรมและความสนใจที่ท่านเรียกดูให้กับท่าน',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                new Positioned(
                                  top: 900,
                                  left: 100,
                                  child: Container(
                                    width: 1250,
                                    height: 1200,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 20,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Container(
                                        // margin: EdgeInsets.all(15),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5,
                                              left: 6,
                                              right: 6,
                                              bottom: 12),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  left: 15,
                                                  right: 850,
                                                ),
                                                child: Text(
                                                  'ประเภทของ คุกกี้ ที่บริษัทฯ ใช้',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 24,
                                                          color: Color.fromARGB(
                                                              255,
                                                              75,
                                                              195,
                                                              211)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 50,
                                                  right: 710,
                                                ),
                                                child: Text(
                                                  'บริษัทฯ ใช้ คุกกี้ ดังต่อไปนี้ สำหรับ WEBSITE ของบริษัทฯ',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  left: 70,
                                                  right: 720,
                                                ),
                                                child: Text(
                                                  'คุกกี้ที่จำเป็น (NECESSARY COOKIES)',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 24,
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 100,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'คุกกี้ประเภทนี้มีความสำคัญต่อการทำงานของเว็บไซต์ ซึ่งรวมถึงคุกกี้ที่ทำให้ท่านสามารถเข้าถึงข้อมูลและใช้งานในเว็บไซต์ของบริษัทฯ ได้อย่างปลอดภัย การจัดการเครือข่ายและการเข้าถึงข้อมูลและใช้งานในเว็บไซต์ของบริษัทฯ ได้ทุกส่วน',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  left: 85,
                                                  right: 500,
                                                ),
                                                child: Text(
                                                  'คุกกี้เพื่อการเก็บข้อมูลที่ท่านเลือก (PREFERENCES COOKIES))',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 24,
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 100,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'คุกกี้ประเภทนี้ใช้ในการจดจำสิ่งที่ท่านชอบและเลือกไว้เมื่อท่านกลับมาใช้งานเว็บไซต์อีกครั้ง ซึ่งจะช่วยให้บริษัทฯ สามารถดึงเนื้อหาหรือการใช้งานที่ท่านเลือกไว้มาแสดงได้ อาทิ ภาษา หรือภูมิภาค หรือขนาดของตัวอักษรที่ท่านเลือกใช้ในการใช้งานในเว็บไซต์',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  left: 30,
                                                  right: 600,
                                                ),
                                                child: Text(
                                                  'คุกกี้สำหรับเก็บสถิติ (STATISTICS COOKIES))',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 24,
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 100,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'คุกกี้ประเภทนี้จะช่วยให้บริษัทฯ สามารถจดจำและนับจำนวนผู้เข้าเยี่ยมชมเว็บไซต์ตลอดจนช่วยให้บริษัทฯ ทราบถึงพฤติกรรมในการเยี่ยมชมเว็บไซต์ เพื่อช่วยบริษัทฯ ปรับปรุงเว็บไซต์ ของบริษัทฯ โดยรวบรวมและรายงานข้อมูลเกี่ยวกับวิธีการใช้งานของท่าน และช่วยให้บริษัทฯ เข้าใจถึงความสนใจของผู้ใช้ และวัดความมีประสิทธิผลของโฆษณาของบริษัทฯ คุกกี้จะรวบรวมข้อมูลในลักษณะที่ไม่สามารถระบุตัวบุคคลได้โดยตรง',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  left: 30,
                                                  right: 610,
                                                ),
                                                child: Text(
                                                  'คุกกี้เพื่อการตลาด (MARKETING COOKIES))',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 24,
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 100,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'คุกกี้ประเภทนี้ใช้เพื่อผลประโยชน์ทางการตลาด เช่น การส่งเสริมการขาย วิเคราะห์พฤติกรรมของท่านเพื่อให้บริษัทฯสามารถนำเสนอสินค้าและบริการต่าง ๆให้เหมาะสมกับการจัดการคุกกี้',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 100,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'แม้ว่าอินเทอร์เน็ตเบราว์เซอร์ (Internet Browsers) ส่วนมากจะได้รับการตั้งไว้ให้ยอมรับ Cookies โดยอัตโนมัติก็ตาม แต่อินเทอร์เน็ตเบราว์เซอร์ (Internet Browsers)ส่วนใหญ่ก็จะอนุญาตให้ท่านเปลี่ยนแปลงการตั้งค่าเพื่อสกัดกั้น Cookies หรือเตือนให้ท่านทราบเมื่อมีการส่ง Cookies เข้ามาที่อุปกรณ์ของท่าน',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 100,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'นอกจากทางเลือกที่ระบุไว้ข้างต้นแล้ว ท่านอาจปฏิเสธ ยอมรับ หรือเอา Cookies จากไซต์ออกไปในเวลาใดก็ได้โดยการเปิดใช้งานหรือเข้าไปในการตั้งเบราว์เซอร์ (Browser) ของท่าน ทั้งนี้ ข้อมูลเกี่ยวกับขั้นตอนที่จะต้องปฏิบัติตามเพื่อให้ Cookies ใช้งานได้ หรือเพื่อปิดการใช้งานของ Cookies หรือการเอา Cookies ออกไปนั้น ท่านจะหาดูได้จากเว็บไซต์ของผู้ให้บริการอินเทอร์เน็ตเบราว์เซอร์ (Internet Browser) ของท่าน ทั้งนี้ขอเรียนว่าหากท่านปิดการใช้งาน Cookies หรือเอา Cookies ออกไปนั้น คุณลักษณะบางอย่างของไซต์ อาจจะไม่ทำงานตามวัตถุประสงค์ที่กำหนดไว้ เช่น ท่านอาจจะไม่สามารถเข้าเยี่ยมพื้นที่บางส่วนของไซต์ หรือท่านอาจจะไม่ได้รับข้อมูลที่จัดให้ เป็นการเฉพาะตัวเมื่อท่านเยี่ยมชมไซต์ หากท่านใช้อุปกรณ์ต่างกันในการเปิดดูและเข้ามายังไซต์ (เช่น คอมพิวเตอร์ สมาร์ทโฟน แท็บเล็ต) ท่านจะต้องดำเนินการเพื่อปรับแต่ละเบราว์เซอร์ (Browser) ในแต่ละอุปกรณ์นั้นเพื่อให้สอดคล้องกับ Cookie Preferences ของท่าน',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color.fromARGB(
                                                              255, 33, 31, 37)),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Center(
                child: Stack(
                  children: [
                    Container(
                      width: 1540,
                      // width: Responsive.isTablet(context) ? 768 : 375,
                      height: Responsive.isTablet(context) ? 3500 : 3300,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Responsive.isTablet(context)
                              ? Padding(
                                  padding:
                                      const EdgeInsets.only(top: 83, left: 70),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          width: 60,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 57, 128, 237),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 57, 128, 237),
                                                  width: 5)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          // color: Colors.amber,
                                          height: 20,
                                          child: Text(
                                            "Cookies Policy",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 57, 128, 237)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : Container(),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height:
                                      Responsive.isTablet(context) ? 83 : 51,
                                ),
                                Responsive.isTablet(context)
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 43, right: 220),
                                        child: Text(
                                          'OUR COOKIE POLICY \nนโยบายการใช้คุกกี้',
                                          style: GoogleFonts.ibmPlexSansThai(
                                            fontSize:
                                                Responsive.isTablet(context)
                                                    ? 48
                                                    : 24,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromARGB(255, 5, 45, 97),
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 20, right: 130),
                                        child: Text(
                                          "OUR COOKIE POLICY \nนโยบายการใช้คุกกี้",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize:
                                                  Responsive.isTablet(context)
                                                      ? 32
                                                      : 24,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(
                                                  255, 5, 45, 97)),
                                        ),
                                      ),
                                Responsive.isTablet(context)
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            top: 40, left: 83, right: 40),
                                        child: Text(
                                          "คุกกี้ คือ ข้อมูลคอมพิวเตอร์ขนาดเล็ก (text file) ที่จะถูกติดตั้ง หรือบันทึกลงบนคอมพิวเตอร์หรืออุปกรณ์อิเล็กทรอนิกส์ของท่าน เมื่อท่าน เข้าชมเว็บไซต์ คุกกี้จะจดจำข้อมูลการใช้งานเว็บไซต์ของท่าน ทั้งนี้ บริษัทฯ จะเรียกเทคโนโลยีอื่นที่ทำหน้าที่คล้ายคลึงกันว่าคุกกี้ด้วย",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 157, 157, 157)),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.only(
                                            top: 40, left: 20, right: 20),
                                        child: Text(
                                          "คุกกี้ คือ ข้อมูลคอมพิวเตอร์ขนาดเล็ก (text file) ที่จะถูกติดตั้ง หรือบันทึกลงบนคอมพิวเตอร์หรืออุปกรณ์อิเล็กทรอนิกส์ของท่านเมื่อท่านเข้าชมเว็บไซต์คุกกี้จะจดจำข้อมูลการใช้งานเว็บไซต์ของท่าน ทั้งนี้ บริษัทฯ จะเรียกเทคโนโลยีอื่นที่ทำหน้าที่ คล้ายคลึงกันว่าคุกกี้ด้วย",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 157, 157, 157)),
                                        ),
                                      ),
                                Container(
                                  width:
                                      Responsive.isTablet(context) ? 625 : 350,
                                  height:
                                      Responsive.isTablet(context) ? 700 : 700,
                                  padding: const EdgeInsets.only(top: 40),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 20,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Responsive.isTablet(context)
                                          ? Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 20,
                                                          right: 320),
                                                  child: Text(
                                                    'บริษัทฯ ใช้ คุกกี้ อย่างไร',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    195,
                                                                    211)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 20,
                                                          right: 70),
                                                  child: Text(
                                                    '- เพื่อศึกษาพฤติกรรมการใช้งาน Website ของท่าน เพื่อนำไปพัฒนาให้สามารถใช้งานได้ง่าย รวดเร็ว และมีประสิทธิภาพยิ่งขึ้น',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 20,
                                                          right: 70),
                                                  child: Text(
                                                    '- เพื่อทราบถึงรูปแบบการใช้และประวัติการใช้งานเว็บไซต์ ข้อมูลหรือบริการที่ท่านสนใจ และนำไปวิเคราะห์ เพื่อพัฒนาการให้บริการ แสดงเนื้อหา โฆษณา หรือประชาสัมพันธ์กิจกรรมที่เหมาะสมรวมถึงการบริการต่าง ๆ ที่ตรงกับความสนใจของท่าน เพื่อเพิ่มความพึงพอใจให้แก่ท่านได้มากยิ่งขึ้น',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 40,
                                                          right: 70),
                                                  child: Text(
                                                    '- เพื่อแสดงโฆษณาบนเว็บไซต์ของบริษัทฯ หรือเพื่อจัดการโฆษณาของบริษัทฯ บนเว็บไซต์อื่น คู่ค้าเว็บไซต์อื่น ของบริษัทฯ อาจใช้เทคโนโลยี อย่างคุกกี้เพื่อรวบรวมข้อมูลกิจกรรมของท่านในเว็บไซต์นี้และเว็บไซต์อื่น เพื่อแสดงโฆษณาตามกิจกรรมและความสนใจที่ท่านเรียกดูให้กับท่าน',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                // Padding(
                                                //   padding:
                                                //       const EdgeInsets.only(
                                                //           left: 83, top: 40),
                                                //   child: Column(
                                                //     crossAxisAlignment:
                                                //         CrossAxisAlignment
                                                //             .start,
                                                //     children: [
                                                //       Container(
                                                //         // width: 310,
                                                //         child: Text(
                                                //           "Name",
                                                //           style: GoogleFonts
                                                //               .ibmPlexSansThai(
                                                //                   fontSize: 18,
                                                //                   fontWeight:
                                                //                       FontWeight
                                                //                           .w500,
                                                //                   color: Colors
                                                //                       .black),
                                                //         ),
                                                //       ),
                                                //     ],
                                                //   ),
                                                // ),
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20, top: 5),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                top: 20,
                                                                right: 100),
                                                        child: Text(
                                                          'บริษัทฯ ใช้ คุกกี้ อย่างไร',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 20,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          75,
                                                                          195,
                                                                          211)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 30,
                                                        ),
                                                        child: Text(
                                                          '- เพื่อศึกษาพฤติกรรมการใช้งาน Website ของท่าน เพื่อนำไปพัฒนาให้สามารถใช้งานได้ง่าย รวดเร็ว และมีประสิทธิภาพยิ่งขึ้น',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 30,
                                                        ),
                                                        child: Text(
                                                          '- เพื่อทราบถึงรูปแบบการใช้และประวัติการใช้งานเว็บไซต์ ข้อมูลหรือบริการที่ท่านสนใจ และนำไปวิเคราะห์ เพื่อพัฒนาการให้บริการ แสดงเนื้อหา โฆษณา หรือประชาสัมพันธ์กิจกรรมที่เหมาะสมรวมถึงการบริการต่าง ๆ ที่ตรงกับความสนใจของท่าน เพื่อเพิ่มความพึงพอใจให้แก่ท่านได้มากยิ่งขึ้น',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 30,
                                                        ),
                                                        child: Text(
                                                          '- เพื่อแสดงโฆษณาบนเว็บไซต์ของบริษัทฯ หรือเพื่อจัดการโฆษณาของบริษัทฯ บนเว็บไซต์อื่น คู่ค้าเว็บไซต์อื่น ของบริษัทฯ อาจใช้เทคโนโลยี อย่างคุกกี้เพื่อรวบรวมข้อมูลกิจกรรมของท่านในเว็บไซต์นี้และเว็บไซต์อื่น เพื่อแสดงโฆษณาตามกิจกรรมและความสนใจที่ท่านเรียกดูให้กับท่าน',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isTablet(context) ? 78 : 60,
                                ),
                                Container(
                                  width:
                                      Responsive.isTablet(context) ? 625 : 350,
                                  height: Responsive.isTablet(context)
                                      ? 2080
                                      : 2130,
                                  padding: const EdgeInsets.only(top: 40),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 20,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Responsive.isTablet(context)
                                          ? Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 35,
                                                          top: 40,
                                                          right: 280),
                                                  child: Text(
                                                    'ประเภทของ คุกกี้ ที่บริษัทฯ ใช้',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    195,
                                                                    211)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 28,
                                                          top: 10,
                                                          right: 100),
                                                  child: Text(
                                                    'บริษัทฯ ใช้ คุกกี้ ดังต่อไปนี้ สำหรับ WEBSITE ของบริษัทฯ',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20,
                                                          top: 20,
                                                          right: 110),
                                                  child: Text(
                                                    'คุกกี้ที่จำเป็น (NECESSARY COOKIES)',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 20,
                                                          right: 70),
                                                  child: Text(
                                                    'คุกกี้ประเภทนี้มีความสำคัญต่อการทำงานของเว็บไซต์ ซึ่งรวมถึงคุกกี้ที่ทำให้ท่านสามารถเข้าถึงข้อมูลและใช้งานในเว็บไซต์ของบริษัทฯ ได้อย่างปลอดภัย การจัดการเครือข่ายและการเข้าถึงข้อมูลและใช้งานในเว็บไซต์ของบริษัทฯ ได้ทุกส่วน',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 20,
                                                          right: 70),
                                                  child: Text(
                                                    'คุกกี้เพื่อการเก็บข้อมูลที่ท่านเลือก (PREFERENCES COOKIES))',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 20,
                                                          right: 70),
                                                  child: Text(
                                                    'คุกกี้ประเภทนี้ใช้ในการจดจำสิ่งที่ท่านชอบและเลือกไว้เมื่อท่านกลับมาใช้งานเว็บไซต์อีกครั้ง ซึ่งจะช่วยให้บริษัทฯ สามารถดึงเนื้อหาหรือการใช้งานที่ท่านเลือกไว้มาแสดงได้ อาทิ ภาษา หรือภูมิภาค หรือขนาดของตัวอักษรที่ท่านเลือกใช้ในการใช้งานในเว็บไซต์',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 60,
                                                          top: 20,
                                                          right: 80),
                                                  child: Text(
                                                    'คุกกี้สำหรับเก็บสถิติ (STATISTICS COOKIES))',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 20,
                                                          right: 70),
                                                  child: Text(
                                                    'คุกกี้ประเภทนี้จะช่วยให้บริษัทฯ สามารถจดจำและนับจำนวนผู้เข้าเยี่ยมชมเว็บไซต์ตลอดจนช่วยให้บริษัทฯ ทราบถึงพฤติกรรมในการเยี่ยมชมเว็บไซต์ เพื่อช่วยบริษัทฯ ปรับปรุงเว็บไซต์ ของบริษัทฯ โดยรวบรวมและรายงานข้อมูลเกี่ยวกับวิธีการใช้งานของท่าน และช่วยให้บริษัทฯ เข้าใจถึงความสนใจของผู้ใช้ และวัดความมีประสิทธิผลของโฆษณาของบริษัทฯ คุกกี้จะรวบรวมข้อมูลในลักษณะที่ไม่สามารถระบุตัวบุคคลได้โดยตรง',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 60,
                                                          top: 20,
                                                          right: 80),
                                                  child: Text(
                                                    'คุกกี้เพื่อการตลาด (MARKETING COOKIES))',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 20,
                                                          right: 70),
                                                  child: Text(
                                                    'คุกกี้ประเภทนี้ใช้เพื่อผลประโยชน์ทางการตลาด เช่น การส่งเสริมการขาย วิเคราะห์พฤติกรรมของท่านเพื่อให้บริษัทฯสามารถนำเสนอสินค้าและบริการต่าง ๆให้เหมาะสมกับการจัดการคุกกี้',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 20,
                                                          right: 70),
                                                  child: Text(
                                                    'แม้ว่าอินเทอร์เน็ตเบราว์เซอร์ (Internet Browsers) ส่วนมากจะได้รับการตั้งไว้ให้ยอมรับ Cookies โดยอัตโนมัติก็ตาม แต่อินเทอร์เน็ตเบราว์เซอร์ (Internet Browsers)ส่วนใหญ่ก็จะอนุญาตให้ท่านเปลี่ยนแปลงการตั้งค่าเพื่อสกัดกั้น Cookies หรือเตือนให้ท่านทราบเมื่อมีการส่ง Cookies เข้ามาที่อุปกรณ์ของท่าน',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70,
                                                          top: 20,
                                                          right: 70),
                                                  child: Text(
                                                    'นอกจากทางเลือกที่ระบุไว้ข้างต้นแล้ว ท่านอาจปฏิเสธ ยอมรับ หรือเอา Cookies จากไซต์ออกไปในเวลาใดก็ได้โดยการเปิดใช้งานหรือเข้าไปในการตั้งเบราว์เซอร์ (Browser) ของท่าน ทั้งนี้ ข้อมูลเกี่ยวกับขั้นตอนที่จะต้องปฏิบัติตามเพื่อให้ Cookies ใช้งานได้ หรือเพื่อปิดการใช้งานของ Cookies หรือการเอา Cookies ออกไปนั้น ท่านจะหาดูได้จากเว็บไซต์ของผู้ให้บริการอินเทอร์เน็ตเบราว์เซอร์ (Internet Browser) ของท่าน ทั้งนี้ขอเรียนว่าหากท่านปิดการใช้งาน Cookies หรือเอา Cookies ออกไปนั้น คุณลักษณะบางอย่างของไซต์ อาจจะไม่ทำงานตามวัตถุประสงค์ที่กำหนดไว้ เช่น ท่านอาจจะไม่สามารถเข้าเยี่ยมพื้นที่บางส่วนของไซต์ หรือท่านอาจจะไม่ได้รับข้อมูลที่จัดให้ เป็นการเฉพาะตัวเมื่อท่านเยี่ยมชมไซต์ หากท่านใช้อุปกรณ์ต่างกันในการเปิดดูและเข้ามายังไซต์ (เช่น คอมพิวเตอร์ สมาร์ทโฟน แท็บเล็ต) ท่านจะต้องดำเนินการเพื่อปรับแต่ละเบราว์เซอร์ (Browser) ในแต่ละอุปกรณ์นั้นเพื่อให้สอดคล้องกับ Cookie Preferences ของท่าน',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    33,
                                                                    31,
                                                                    37)),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20, top: 5),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                top: 10,
                                                                right: 80),
                                                        child: Text(
                                                          'ประเภทของ คุกกี้ ที่บริษัทฯ ใช้',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 20,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          75,
                                                                          195,
                                                                          211)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 10,
                                                          right: 80,
                                                        ),
                                                        child: Text(
                                                          'บริษัทฯ ใช้ คุกกี้ ดังต่อไปนี้ สำหรับ WEBSITE ของบริษัทฯ',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 5,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'คุกกี้ที่จำเป็น (NECESSARY COOKIES)',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 18,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'คุกกี้ประเภทนี้มีความสำคัญต่อการทำงานของเว็บไซต์ ซึ่งรวมถึงคุกกี้ที่ทำให้ท่านสามารถเข้าถึงข้อมูลและใช้งานในเว็บไซต์ของบริษัทฯ ได้อย่างปลอดภัย การจัดการเครือข่ายและการเข้าถึงข้อมูลและใช้งานในเว็บไซต์ของบริษัทฯ ได้ทุกส่วน',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'คุกกี้เพื่อการเก็บข้อมูลที่ท่านเลือก (PREFERENCES COOKIES))',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 20,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'คุกกี้ประเภทนี้ใช้ในการจดจำสิ่งที่ท่านชอบและเลือกไว้เมื่อท่านกลับมาใช้งานเว็บไซต์อีกครั้ง ซึ่งจะช่วยให้บริษัทฯ สามารถดึงเนื้อหาหรือการใช้งานที่ท่านเลือกไว้มาแสดงได้ อาทิ ภาษา หรือภูมิภาค หรือขนาดของตัวอักษรที่ท่านเลือกใช้ในการใช้งานในเว็บไซต์',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'คุกกี้สำหรับเก็บสถิติ (STATISTICS COOKIES))',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 20,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'คุกกี้ประเภทนี้จะช่วยให้บริษัทฯ สามารถจดจำและนับจำนวนผู้เข้าเยี่ยมชมเว็บไซต์ตลอดจนช่วยให้บริษัทฯ ทราบถึงพฤติกรรมในการเยี่ยมชมเว็บไซต์ เพื่อช่วยบริษัทฯ ปรับปรุงเว็บไซต์ ของบริษัทฯ โดยรวบรวมและรายงานข้อมูลเกี่ยวกับวิธีการใช้งานของท่าน และช่วยให้บริษัทฯ เข้าใจถึงความสนใจของผู้ใช้ และวัดความมีประสิทธิผลของโฆษณาของบริษัทฯ คุกกี้จะรวบรวมข้อมูลในลักษณะที่ไม่สามารถระบุตัวบุคคลได้โดยตรง',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'คุกกี้เพื่อการตลาด (MARKETING COOKIES))',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 20,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'คุกกี้ประเภทนี้ใช้เพื่อผลประโยชน์ทางการตลาด เช่น การส่งเสริมการขาย วิเคราะห์พฤติกรรมของท่านเพื่อให้บริษัทฯสามารถนำเสนอสินค้าและบริการต่าง ๆให้เหมาะสมกับการจัดการคุกกี้',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'แม้ว่าอินเทอร์เน็ตเบราว์เซอร์ (Internet Browsers) ส่วนมากจะได้รับการตั้งไว้ให้ยอมรับ Cookies โดยอัตโนมัติก็ตาม แต่อินเทอร์เน็ตเบราว์เซอร์ (Internet Browsers)ส่วนใหญ่ก็จะอนุญาตให้ท่านเปลี่ยนแปลงการตั้งค่าเพื่อสกัดกั้น Cookies หรือเตือนให้ท่านทราบเมื่อมีการส่ง Cookies เข้ามาที่อุปกรณ์ของท่าน',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 10,
                                                          left: 30,
                                                          right: 20,
                                                        ),
                                                        child: Text(
                                                          'นอกจากทางเลือกที่ระบุไว้ข้างต้นแล้ว ท่านอาจปฏิเสธ ยอมรับ หรือเอา Cookies จากไซต์ออกไปในเวลาใดก็ได้โดยการเปิดใช้งานหรือเข้าไปในการตั้งเบราว์เซอร์ (Browser) ของท่าน ทั้งนี้ ข้อมูลเกี่ยวกับขั้นตอนที่จะต้องปฏิบัติตามเพื่อให้ Cookies ใช้งานได้ หรือเพื่อปิดการใช้งานของ Cookies หรือการเอา Cookies ออกไปนั้น ท่านจะหาดูได้จากเว็บไซต์ของผู้ให้บริการอินเทอร์เน็ตเบราว์เซอร์ (Internet Browser) ของท่าน ทั้งนี้ขอเรียนว่าหากท่านปิดการใช้งาน Cookies หรือเอา Cookies ออกไปนั้น คุณลักษณะบางอย่างของไซต์ อาจจะไม่ทำงานตามวัตถุประสงค์ที่กำหนดไว้ เช่น ท่านอาจจะไม่สามารถเข้าเยี่ยมพื้นที่บางส่วนของไซต์ หรือท่านอาจจะไม่ได้รับข้อมูลที่จัดให้ เป็นการเฉพาะตัวเมื่อท่านเยี่ยมชมไซต์ หากท่านใช้อุปกรณ์ต่างกันในการเปิดดูและเข้ามายังไซต์ (เช่น คอมพิวเตอร์ สมาร์ทโฟน แท็บเล็ต) ท่านจะต้องดำเนินการเพื่อปรับแต่ละเบราว์เซอร์ (Browser) ในแต่ละอุปกรณ์นั้นเพื่อให้สอดคล้องกับ Cookie Preferences ของท่าน',
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          33,
                                                                          31,
                                                                          37)),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isTablet(context) ? 78 : 60,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ));
  }
}
