import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class termsofservice extends StatefulWidget {
  @override
  _termsofservice createState() => _termsofservice();
}

class _termsofservice extends State<termsofservice> {
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
                height: 2320,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 1440,
                        //height: 2220,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 1440,
                                  height: 2320,
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
                                            "Terms of Service",
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
                                                  'TERMS OF SERVICE เงื่อนไขและข้อตกลงการใช้บริการ',
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
                                                    "ข้อตกลงนี้ทำขึ้นระหว่าง คุณ กับ บริษัท เดอะไวซ์เวิร์ค จำกัด ซึ่งจะอธิบายสิทธิในการใช้ซอฟต์แวร์และบริการตามที่ได้แสดงไว้ โดยในการ เข้าถึงเว็บไซต์ ของบริษัทฯ ซอฟต์แวร์ บริการ หรือ ผลิตภัณฑ์ใดๆ ของบริษัทฯ ถือว่าท่านตกลงที่จะผูกพันตามข้อกำหนดและเงื่อนไข การใช้บริการนี้ โปรดทำการอ่าน ข้อตกลงอย่างละเอียด",
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
                                Container(
                                  // margin: EdgeInsets.all(15),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 430,
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
                                            left: 100,
                                            right: 1125,
                                          ),
                                          child: Text(
                                            'เงื่อนไขการให้บริการ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'บริษัท เดอะไวซ์เวิร์ค จำกัด (ซึ่งต่อไปนี้เรียกว่า “บริษัท”) เป็นเจ้าของและผู้ดูแลจัดการเว็บไซต์นี้ โดยมีวัตถุประสงค์เพื่อเป็นแหล่งรวบรวม เผยแพร่ข้อมูลด้านต่างๆ ของบริษัท และผู้ให้บริการ แพลตฟอร์ม wisework PDPA Management ข้อตกลงนี้ใช้บังคับระหว่าง บริษัทฯ กับผู้ขอใช้บริการ ที่ระบุไว้ตามข้อตกลงนี้ (ซึ่งต่อไปนี้เรียกว่า “ผู้ใช้บริการ”) โดยผู้ใช้บริการยินยอมผูกพัน และปฏิบัติตามข้อตกลง ข้อกำหนดและเงื่อนไขในการใช้งานผลิตภัณฑ์ของ wisework ทุกประการ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 1062,
                                          ),
                                          child: Text(
                                            'สิทธิ์ในทรัพย์สินทางปัญญา',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'บริษัท เดอะไวซ์เวิร์ค จำกัด เป็นเจ้าของลิขสิทธิ์ข้อมูล ภาพ ข้อความ สื่อโฆษณา และส่วนประกอบอื่นๆ ที่อยู่บนเว็บไซต์นี้ เช่น เครื่องหมายการค้า สัญลักษณ์ และชื่อทางการค้า โดยห้ามมิให้ ทำซ้ำ คัดลอก ถ่ายสำเนา ดัดแปลง เผยแพร่ หรือกระทำการอื่นใด เพื่อเผยแพร่ต่อสาธารณชน หรือเพื่อหาประโยชน์ โดยไม่ได้รับการยินยอมเป็นลายลักษณ์อักษรล่วงหน้าจากบริษัทฯ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 1243,
                                          ),
                                          child: Text(
                                            'ข้อสงวน',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'ข้อมูลที่แสดงในเว็บไซต์นี้ บริษัทฯ ดูแลและจัดทำเว็บไซต์ขึ้นตามความเหมาะสมของประเทศไทย ซึ่งทางบริษัทฯ จะไม่ขอรับผิดชอบในเรื่องของความถูกต้องของข้อมูลกับต่างประเทศ ความเหมาะสมเนื้อหากับประเทศอื่นๆ นอกจากประเทศไทย บริษัทขอสงวนสิทธิ์ในการปรับปรุง เปลี่ยนแปลง สร้าง รวมถึง ลบข้อมูลบางส่วนของเว็บไซต์โดยไม่แจ้งให้ทราบล่วงหน้าเพื่อ ความเหมาะสมและทันสมัยของข้อมูล',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 964,
                                          ),
                                          child: Text(
                                            'นโยบายการคุ้มครองข้อมูลส่วนบุคคล',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'รายละเอียดเกี่ยวกับนโยบายการคุ้มครองข้อมูลส่วนบุคคลสำหรับผู้ใช้บริการ สามารถอ่านและศึกษาได้จาก Privacy Policy หรือ ประกาศนโยบายคุ้มครองข้อมูลส่วนบุคคล',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 1207,
                                          ),
                                          child: Text(
                                            'เงื่อนไขทั่วไป',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'บริษัทฯ ขอสงวนสิทธิในการเปลี่ยนแปลง แก้ไข ยกเลิก เงื่อนไขการใช้บริการใดๆ ได้ทุกเมื่อ โดยผู้ใช้บริการสามารถตรวจสอบเงื่อนไขการใช้บริการได้อย่างสม่ำเสมอผ่านหน้าเว็บไซต์ของบริษัทฯ หลังจากเงื่อนไขใหม่มีผลบังคับใช้แล้วให้ถือว่า ผู้ใช้บริการ ได้ยอมรับเงื่อนไขใหม่นั้นๆ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 33, 31, 37)),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 20,
                                            left: 5,
                                            right: 1042,
                                          ),
                                          child: Text(
                                            'การเชื่อมโยงเว็บไซต์',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'การเชื่อมโยงไปยังเว็บไซต์อื่นเป็นเพียงการให้บริการเพื่ออำนวยความสะดวกแก่ผู้ใช้บริการเท่านั้น บริษัทฯ มิได้มีส่วนเกี่ยวข้องหรือมีอำนาจควบคุม รับรอง ความถูกต้อง ความน่าเชื่อถือ ตลอดจนความรับผิดชอบในเนื้อหาข้อมูลของเว็บไซต์นั้นๆ และ บริษัทฯ ไม่รับผิดชอบต่อเนื้อหาใดๆ ที่แสดงบนเว็บไซต์อื่นที่เชื่อมโยงมายังเว็บไซต์ของบริษัทฯ หรือต่อความเสียหายใดๆ ที่เกิดขึ้นจากการเข้าเยี่ยมชมเว็บไซต์ดังกล่าวการเชื่อมโยงมายังเว็บไซต์ บริษัทฯ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 864,
                                          ),
                                          child: Text(
                                            'การลงทะเบียนใช้บริการ และผู้ไม่มีสิทธิใช้บริการ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'ในการลงทะเบียนใช้งานผลิตภัณฑ์ของบริษัทฯ ท่านตกลงที่จะให้ข้อมูลรายละเอียดที่ถูกต้องตรงตามความเป็นจริง และหากมีการเปลี่ยนแปลงใดๆ เกี่ยวกับข้อมูลรายละเอียดที่ท่านได้ให้ไว้ แก่บริษัทฯ ท่านตกลงจะแจ้งให้บริษัทฯ ทราบผ่านทางทางอีเมล info@thewisework.com หรือทำการแก้ไขข้อมูลผ่านทางหน้าเว็บไซต์โดยตรงทันที หรือช่องทางติดต่ออื่นๆ ของบริษัทฯ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 680,
                                          ),
                                          child: Text(
                                            'หากท่านประสงค์จะยกเลิกการลงทะเบียน ให้ท่านแจ้งทางโทรศัพท์ 02-103-4379',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            'บริษัทฯ มีสิทธิที่จะระงับหรือยกเลิกการลงทะเบียนของท่านได้ หากบริษัทฯ มีเหตุผลอันควรเชื่อได้ว่าท่านฝ่าฝืนข้อตกลงและเงื่อนไขนี้ ทั้งนี้ การยกเลิกการลงทะเบียนนี้จะไม่มีผลกระทบต่อ ข้อตกลงและเงื่อนไขซึ่งมีลักษณะเป็นการต่อเนื่องแต่ประการใด',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 1160,
                                          ),
                                          child: Text(
                                            'สิทธิในการเข้าถึง',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'บริษัทฯ สงวนสิทธิในการปรับปรุงหรือแก้ไขเว็บไซต์หรือเนื้อหาบนเว็บไซต์นี้ ในเวลาใดๆ รวมทั้งขอสงวนสิทธิที่จะปฏิเสธหรือจำกัดการเข้าถึงเว็บไซต์นี้ของบุคคลใด หรือจากเลขที่อยู่อินเทอร์เน็ตใด โดยไม่จำเป็นต้องบอกกล่าวหรือระบุเหตุผลในการดำเนินการนั้น',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 1075,
                                          ),
                                          child: Text(
                                            'การจำกัดความรับผิดชอบ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'บริษัทฯ ไม่รับผิดชอบต่อความเสียหาย ความสูญเสีย หรือ ค่าใช้จ่ายที่เกิดขึ้นจากการใช้บริการของบริษัทฯ หรือ เว็บไซต์ ระบบภายนอกที่เชื่อมโยงกับเรา โดยรวมถึงความไม่ถูกต้อง, ความล่าช้า ของการรับส่งข้อมูล, ระยะเวลา หรือ เหตุขัดข้องของการเชื่อมต่อ ความเสถียรของระบบ จนถึง ไวรัส และ มัลแวร์คอมพิวเตอร์',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 1146,
                                          ),
                                          child: Text(
                                            'กฎหมายที่ใช้บังคับ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            left: 100,
                                            right: 503,
                                          ),
                                          child: Text(
                                            'การใช้บริการเว็บไซต์นี้หรือการตีความข้อตกลงและเงื่อนไขการให้บริการฉบับนี้ ให้เป็นไปตามกฎหมายไทย',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                                            right: 808,
                                          ),
                                          child: Text(
                                            'ข้อตกลงในการเปลี่ยนแปลงข้อตกลงและเงื่อนไขต่างๆ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color.fromARGB(
                                                    255, 75, 195, 211)),
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
                                            'บริษัทฯ ขอสงวนสิทธิ์ในการเปลี่ยนแปลงข้อตกลงการใช้บริการนี้ โดยไม่ต้องแจ้งให้ทราบล่วงหน้า กรุณาตรวจสอบเงื่อนไขในการใช้บริการฉบับนี้อย่างสม่ำเสมอเพื่อให้แน่ใจได้ว่า ท่านรับทราบ ถึงการเปลี่ยนแปลงใดๆ ที่บริษัทได้จัดทำขึ้น หากท่านยังคงใช้เว็บไซต์ของบริษัทฯ ต่อไป ให้ถือว่าท่านได้ยอมรับการเปลี่ยนแปลงข้อตกลงและเงื่อนไขต่างๆ ของบริษัทฯ',
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w400,
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
                      width: 1440,
                      // width: Responsive.isTablet(context) ? 768 : 375,
                      height: Responsive.isTablet(context) ? 3400 : 3400,
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
                                            "Privacy Policy",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 57, 128, 237)),
                                          ),
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
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 50,
                                                              left: 0,
                                                              right: 60),
                                                      child: Text(
                                                        'TERMS OF SERVICE\nเงื่อนไขและข้อตกลงการใช้บริการ',
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                          fontSize: 48,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color.fromARGB(
                                                              255, 5, 45, 97),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 40,
                                                              left: 0,
                                                              right: 60),
                                                      child: SizedBox(
                                                        height: 200,
                                                        width: 700,
                                                        child: Text(
                                                          "ข้อตกลงนี้ทำขึ้นระหว่าง คุณ กับ บริษัท เดอะไวซ์เวิร์ค จำกัด ซึ่งจะอธิบายสิทธิในการใช้ซอฟต์แวร์และบริการตามที่ได้แสดงไว้ โดยในการ เข้าถึงเว็บไซต์ ของบริษัทฯ ซอฟต์แวร์ บริการ หรือ ผลิตภัณฑ์ใดๆ ของบริษัทฯ ถือว่าท่านตกลงที่จะผูกพันตามข้อกำหนดและเงื่อนไข การใช้บริการนี้ โปรดทำการอ่าน ข้อตกลงอย่างละเอียด",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          157,
                                                                          157,
                                                                          157),
                                                                  fontSize: 24,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                          textAlign:
                                                              TextAlign.start,
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
                                      Container(
                                        // margin: EdgeInsets.all(15),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 30,
                                              left: 0,
                                              right: 6,
                                              bottom: 12),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 30,
                                                  left: 0,
                                                  right: 539,
                                                ),
                                                child: Text(
                                                  'เงื่อนไขการให้บริการ',
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
                                                  left: 0,
                                                  right: 60,
                                                ),
                                                child: Text(
                                                  'บริษัท เดอะไวซ์เวิร์ค จำกัด (ซึ่งต่อไปนี้เรียกว่า “บริษัท”) เป็นเจ้าของและผู้ดูแลจัดการเว็บไซต์นี้ โดยมีวัตถุประสงค์เพื่อเป็นแหล่งรวบรวม เผยแพร่ข้อมูลด้านต่างๆ ของบริษัท และผู้ให้บริการ แพลตฟอร์ม wisework PDPA Management ข้อตกลงนี้ใช้บังคับระหว่าง บริษัทฯ กับผู้ขอใช้บริการ ที่ระบุไว้ตามข้อตกลงนี้ (ซึ่งต่อไปนี้เรียกว่า “ผู้ใช้บริการ”) โดยผู้ใช้บริการยินยอมผูกพัน และปฏิบัติตามข้อตกลง ข้อกำหนดและเงื่อนไขในการใช้งานผลิตภัณฑ์ของ wisework ทุกประการ',
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
                                                  top: 30,
                                                  left: 0,
                                                  right: 478,
                                                ),
                                                child: Text(
                                                  'สิทธิ์ในทรัพย์สินทางปัญญา',
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
                                                  left: 0,
                                                  right: 60,
                                                ),
                                                child: Text(
                                                  'บริษัท เดอะไวซ์เวิร์ค จำกัด เป็นเจ้าของลิขสิทธิ์ข้อมูล ภาพ ข้อความ สื่อโฆษณา และส่วนประกอบอื่นๆ ที่อยู่บนเว็บไซต์นี้ เช่น เครื่องหมายการค้า สัญลักษณ์ และชื่อทางการค้า โดยห้ามมิให้ ทำซ้ำ คัดลอก ถ่ายสำเนา ดัดแปลง เผยแพร่ หรือกระทำการอื่นใด เพื่อเผยแพร่ต่อสาธารณชน หรือเพื่อหาประโยชน์ โดยไม่ได้รับการยินยอมเป็นลายลักษณ์อักษรล่วงหน้าจากบริษัทฯ',
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
                                                  top: 30,
                                                  left: 0,
                                                  right: 660,
                                                ),
                                                child: Text(
                                                  'ข้อสงวน',
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
                                                  left: 0,
                                                  right: 60,
                                                ),
                                                child: Text(
                                                  'ข้อมูลที่แสดงในเว็บไซต์นี้ บริษัทฯ ดูแลและจัดทำเว็บไซต์ขึ้นตามความเหมาะสมของประเทศไทย ซึ่งทางบริษัทฯ จะไม่ขอรับผิดชอบในเรื่องของความถูกต้องของข้อมูลกับต่างประเทศ ความเหมาะสมเนื้อหากับประเทศอื่นๆ นอกจากประเทศไทย บริษัทขอสงวนสิทธิ์ในการปรับปรุง เปลี่ยนแปลง สร้าง รวมถึง ลบข้อมูลบางส่วนของเว็บไซต์โดยไม่แจ้งให้ทราบล่วงหน้าเพื่อ ความเหมาะสมและทันสมัยของข้อมูล',
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
                                                  top: 30,
                                                  left: 0,
                                                  right: 377,
                                                ),
                                                child: Text(
                                                  'นโยบายการคุ้มครองข้อมูลส่วนบุคคล',
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
                                                  left: 0,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'รายละเอียดเกี่ยวกับนโยบายการคุ้มครองข้อมูลส่วนบุคคลสำหรับผู้ใช้บริการ สามารถอ่านและศึกษาได้จาก Privacy Policy หรือ ประกาศนโยบายคุ้มครองข้อมูลส่วนบุคคล',
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
                                                  top: 30,
                                                  left: 0,
                                                  right: 620,
                                                ),
                                                child: Text(
                                                  'เงื่อนไขทั่วไป',
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
                                                  left: 0,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'บริษัทฯ ขอสงวนสิทธิในการเปลี่ยนแปลง แก้ไข ยกเลิก เงื่อนไขการใช้บริการใดๆ ได้ทุกเมื่อ โดยผู้ใช้บริการสามารถตรวจสอบเงื่อนไขการใช้บริการได้อย่างสม่ำเสมอผ่านหน้าเว็บไซต์ของบริษัทฯ หลังจากเงื่อนไขใหม่มีผลบังคับใช้แล้วให้ถือว่า ผู้ใช้บริการ ได้ยอมรับเงื่อนไขใหม่นั้นๆ',
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
                                                  left: 0,
                                                  right: 540,
                                                ),
                                                child: Text(
                                                  'การเชื่อมโยงเว็บไซต์',
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
                                                  left: 0,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'การเชื่อมโยงไปยังเว็บไซต์อื่นเป็นเพียงการให้บริการเพื่ออำนวยความสะดวกแก่ผู้ใช้บริการเท่านั้น บริษัทฯ มิได้มีส่วนเกี่ยวข้องหรือมีอำนาจควบคุม รับรอง ความถูกต้อง ความน่าเชื่อถือ ตลอดจนความรับผิดชอบในเนื้อหาข้อมูลของเว็บไซต์นั้นๆ และ บริษัทฯ ไม่รับผิดชอบต่อเนื้อหาใดๆ ที่แสดงบนเว็บไซต์อื่นที่เชื่อมโยงมายังเว็บไซต์ของบริษัทฯ หรือต่อความเสียหายใดๆ ที่เกิดขึ้นจากการเข้าเยี่ยมชมเว็บไซต์ดังกล่าวการเชื่อมโยงมายังเว็บไซต์ บริษัทฯ',
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
                                                  top: 30,
                                                  left: 0,
                                                  right: 280,
                                                ),
                                                child: Text(
                                                  'การลงทะเบียนใช้บริการ และผู้ไม่มีสิทธิใช้บริการ',
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
                                                  left: 0,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'ในการลงทะเบียนใช้งานผลิตภัณฑ์ของบริษัทฯ ท่านตกลงที่จะให้ข้อมูลรายละเอียดที่ถูกต้องตรงตามความเป็นจริง และหากมีการเปลี่ยนแปลงใดๆ เกี่ยวกับข้อมูลรายละเอียดที่ท่านได้ให้ไว้ แก่บริษัทฯ ท่านตกลงจะแจ้งให้บริษัทฯ ทราบผ่านทางทางอีเมล info@thewisework.com หรือทำการแก้ไขข้อมูลผ่านทางหน้าเว็บไซต์โดยตรงทันที หรือช่องทางติดต่ออื่นๆ ของบริษัทฯ',
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
                                                  left: 0,
                                                  right: 190,
                                                ),
                                                child: Text(
                                                  'หากท่านประสงค์จะยกเลิกการลงทะเบียน ให้ท่านแจ้งทางโทรศัพท์ 02-103-4379',
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
                                                  left: 0,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'บริษัทฯ มีสิทธิที่จะระงับหรือยกเลิกการลงทะเบียนของท่านได้ หากบริษัทฯ มีเหตุผลอันควรเชื่อได้ว่าท่านฝ่าฝืนข้อตกลงและเงื่อนไขนี้ ทั้งนี้ การยกเลิกการลงทะเบียนนี้จะไม่มีผลกระทบต่อ ข้อตกลงและเงื่อนไขซึ่งมีลักษณะเป็นการต่อเนื่องแต่ประการใด',
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
                                                  top: 30,
                                                  left: 0,
                                                  right: 575,
                                                ),
                                                child: Text(
                                                  'สิทธิในการเข้าถึง',
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
                                                  left: 0,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'บริษัทฯ สงวนสิทธิในการปรับปรุงหรือแก้ไขเว็บไซต์หรือเนื้อหาบนเว็บไซต์นี้ ในเวลาใดๆ รวมทั้งขอสงวนสิทธิที่จะปฏิเสธหรือจำกัดการเข้าถึงเว็บไซต์นี้ของบุคคลใด หรือจากเลขที่อยู่อินเทอร์เน็ตใด โดยไม่จำเป็นต้องบอกกล่าวหรือระบุเหตุผลในการดำเนินการนั้น',
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
                                                  top: 30,
                                                  left: 0,
                                                  right: 491,
                                                ),
                                                child: Text(
                                                  'การจำกัดความรับผิดชอบ',
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
                                                  left: 0,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'บริษัทฯ ไม่รับผิดชอบต่อความเสียหาย ความสูญเสีย หรือ ค่าใช้จ่ายที่เกิดขึ้นจากการใช้บริการของบริษัทฯ หรือ เว็บไซต์ ระบบภายนอกที่เชื่อมโยงกับเรา โดยรวมถึงความไม่ถูกต้อง, ความล่าช้า ของการรับส่งข้อมูล, ระยะเวลา หรือ เหตุขัดข้องของการเชื่อมต่อ ความเสถียรของระบบ จนถึง ไวรัส และ มัลแวร์คอมพิวเตอร์',
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
                                                  top: 30,
                                                  left: 0,
                                                  right: 563,
                                                ),
                                                child: Text(
                                                  'กฎหมายที่ใช้บังคับ',
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
                                                  left: 0,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'การใช้บริการเว็บไซต์นี้หรือการตีความข้อตกลงและเงื่อนไขการให้บริการฉบับนี้ ให้เป็นไปตามกฎหมายไทย',
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
                                                  top: 30,
                                                  left: 0,
                                                  right: 224,
                                                ),
                                                child: Text(
                                                  'ข้อตกลงในการเปลี่ยนแปลงข้อตกลงและเงื่อนไขต่างๆ',
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
                                                  left: 0,
                                                  right: 100,
                                                ),
                                                child: Text(
                                                  'บริษัทฯ ขอสงวนสิทธิ์ในการเปลี่ยนแปลงข้อตกลงการใช้บริการนี้ โดยไม่ต้องแจ้งให้ทราบล่วงหน้า กรุณาตรวจสอบเงื่อนไขในการใช้บริการฉบับนี้อย่างสม่ำเสมอเพื่อให้แน่ใจได้ว่า ท่านรับทราบ ถึงการเปลี่ยนแปลงใดๆ ที่บริษัทได้จัดทำขึ้น หากท่านยังคงใช้เว็บไซต์ของบริษัทฯ ต่อไป ให้ถือว่าท่านได้ยอมรับการเปลี่ยนแปลงข้อตกลงและเงื่อนไขต่างๆ ของบริษัทฯ',
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
                                    ],
                                  ),
                                )
                              : Container(
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
                                                    top: 50,
                                                    left: 20,
                                                    right: 60),
                                                child: Text(
                                                  'TERMS OF SERVICE\nเงื่อนไขและข้อตกลงการใช้บริการ',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromARGB(
                                                        255, 5, 45, 97),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 40,
                                                    left: 20,
                                                    right: 60),
                                                child: SizedBox(
                                                  height: 180,
                                                  width: 345,
                                                  child: Text(
                                                    "ข้อตกลงนี้ทำขึ้นระหว่าง คุณ กับ บริษัท เดอะไวซ์เวิร์ค จำกัด ซึ่งจะอธิบายสิทธิในการใช้ซอฟต์แวร์และบริการตามที่ได้แสดงไว้ โดยในการ เข้าถึงเว็บไซต์ ของบริษัทฯ ซอฟต์แวร์ บริการ หรือ ผลิตภัณฑ์ใดๆ ของบริษัทฯ ถือว่าท่านตกลงที่จะผูกพันตามข้อกำหนดและเงื่อนไข การใช้บริการนี้ โปรดทำการอ่าน ข้อตกลงอย่างละเอียด",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    157,
                                                                    157,
                                                                    157),
                                                            fontSize: 16,
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
                          Container(
                            // margin: EdgeInsets.all(15),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 20, right: 6, bottom: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 196,
                                    ),
                                    child: Text(
                                      'เงื่อนไขการให้บริการ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'บริษัท เดอะไวซ์เวิร์ค จำกัด (ซึ่งต่อไปนี้เรียกว่า “บริษัท”) เป็นเจ้าของและผู้ดูแลจัดการเว็บไซต์นี้ โดยมีวัตถุประสงค์เพื่อเป็นแหล่งรวบรวม เผยแพร่ข้อมูลด้านต่างๆ ของบริษัท และผู้ให้บริการ แพลตฟอร์ม wisework PDPA Management ข้อตกลงนี้ใช้บังคับระหว่าง บริษัทฯ กับผู้ขอใช้บริการ ที่ระบุไว้ตามข้อตกลงนี้ (ซึ่งต่อไปนี้เรียกว่า “ผู้ใช้บริการ”) โดยผู้ใช้บริการยินยอมผูกพัน และปฏิบัติตามข้อตกลง ข้อกำหนดและเงื่อนไขในการใช้งานผลิตภัณฑ์ของ wisework ทุกประการ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 142,
                                    ),
                                    child: Text(
                                      'สิทธิ์ในทรัพย์สินทางปัญญา',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'บริษัท เดอะไวซ์เวิร์ค จำกัด เป็นเจ้าของลิขสิทธิ์ข้อมูล ภาพ ข้อความ สื่อโฆษณา และส่วนประกอบอื่นๆ ที่อยู่บนเว็บไซต์นี้ เช่น เครื่องหมายการค้า สัญลักษณ์ และชื่อทางการค้า โดยห้ามมิให้ ทำซ้ำ คัดลอก ถ่ายสำเนา ดัดแปลง เผยแพร่ หรือกระทำการอื่นใด เพื่อเผยแพร่ต่อสาธารณชน หรือเพื่อหาประโยชน์ โดยไม่ได้รับการยินยอมเป็นลายลักษณ์อักษรล่วงหน้าจากบริษัทฯ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 291,
                                    ),
                                    child: Text(
                                      'ข้อสงวน',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'ข้อมูลที่แสดงในเว็บไซต์นี้ บริษัทฯ ดูแลและจัดทำเว็บไซต์ขึ้นตามความเหมาะสมของประเทศไทย ซึ่งทางบริษัทฯ จะไม่ขอรับผิดชอบในเรื่องของความถูกต้องของข้อมูลกับต่างประเทศ ความเหมาะสมเนื้อหากับประเทศอื่นๆ นอกจากประเทศไทย บริษัทขอสงวนสิทธิ์ในการปรับปรุง เปลี่ยนแปลง สร้าง รวมถึง ลบข้อมูลบางส่วนของเว็บไซต์โดยไม่แจ้งให้ทราบล่วงหน้าเพื่อ ความเหมาะสมและทันสมัยของข้อมูล',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 60,
                                    ),
                                    child: Text(
                                      'นโยบายการคุ้มครองข้อมูลส่วนบุคคล',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'รายละเอียดเกี่ยวกับนโยบายการคุ้มครองข้อมูลส่วนบุคคลสำหรับผู้ใช้บริการ สามารถอ่านและศึกษาได้จาก Privacy Policy หรือ ประกาศนโยบายคุ้มครองข้อมูลส่วนบุคคล',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 261,
                                    ),
                                    child: Text(
                                      'เงื่อนไขทั่วไป',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'บริษัทฯ ขอสงวนสิทธิในการเปลี่ยนแปลง แก้ไข ยกเลิก เงื่อนไขการใช้บริการใดๆ ได้ทุกเมื่อ โดยผู้ใช้บริการสามารถตรวจสอบเงื่อนไขการใช้บริการได้อย่างสม่ำเสมอผ่านหน้าเว็บไซต์ของบริษัทฯ หลังจากเงื่อนไขใหม่มีผลบังคับใช้แล้วให้ถือว่า ผู้ใช้บริการ ได้ยอมรับเงื่อนไขใหม่นั้นๆ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 20,
                                      left: 0,
                                      right: 199,
                                    ),
                                    child: Text(
                                      'การเชื่อมโยงเว็บไซต์',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'การเชื่อมโยงไปยังเว็บไซต์อื่นเป็นเพียงการให้บริการเพื่ออำนวยความสะดวกแก่ผู้ใช้บริการเท่านั้น บริษัทฯ มิได้มีส่วนเกี่ยวข้องหรือมีอำนาจควบคุม รับรอง ความถูกต้อง ความน่าเชื่อถือ ตลอดจนความรับผิดชอบในเนื้อหาข้อมูลของเว็บไซต์นั้นๆ และ บริษัทฯ ไม่รับผิดชอบต่อเนื้อหาใดๆ ที่แสดงบนเว็บไซต์อื่นที่เชื่อมโยงมายังเว็บไซต์ของบริษัทฯ หรือต่อความเสียหายใดๆ ที่เกิดขึ้นจากการเข้าเยี่ยมชมเว็บไซต์ดังกล่าวการเชื่อมโยงมายังเว็บไซต์ บริษัทฯ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 41,
                                    ),
                                    child: Text(
                                      'การลงทะเบียนใช้บริการ และผู้ไม่มีสิทธิใช้บริการ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'ในการลงทะเบียนใช้งานผลิตภัณฑ์ของบริษัทฯ ท่านตกลงที่จะให้ข้อมูลรายละเอียดที่ถูกต้องตรงตามความเป็นจริง และหากมีการเปลี่ยนแปลงใดๆ เกี่ยวกับข้อมูลรายละเอียดที่ท่านได้ให้ไว้ แก่บริษัทฯ ท่านตกลงจะแจ้งให้บริษัทฯ ทราบผ่านทางทางอีเมล info@thewisework.com หรือทำการแก้ไขข้อมูลผ่านทางหน้าเว็บไซต์โดยตรงทันที หรือช่องทางติดต่ออื่นๆ ของบริษัทฯ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 100,
                                    ),
                                    child: Text(
                                      'หากท่านประสงค์จะยกเลิกการลงทะเบียน ให้ท่านแจ้งทางโทรศัพท์ 02-103-4379',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'บริษัทฯ มีสิทธิที่จะระงับหรือยกเลิกการลงทะเบียนของท่านได้ หากบริษัทฯ มีเหตุผลอันควรเชื่อได้ว่าท่านฝ่าฝืนข้อตกลงและเงื่อนไขนี้ ทั้งนี้ การยกเลิกการลงทะเบียนนี้จะไม่มีผลกระทบต่อ ข้อตกลงและเงื่อนไขซึ่งมีลักษณะเป็นการต่อเนื่องแต่ประการใด',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 224,
                                    ),
                                    child: Text(
                                      'สิทธิในการเข้าถึง',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'บริษัทฯ สงวนสิทธิในการปรับปรุงหรือแก้ไขเว็บไซต์หรือเนื้อหาบนเว็บไซต์นี้ ในเวลาใดๆ รวมทั้งขอสงวนสิทธิที่จะปฏิเสธหรือจำกัดการเข้าถึงเว็บไซต์นี้ของบุคคลใด หรือจากเลขที่อยู่อินเทอร์เน็ตใด โดยไม่จำเป็นต้องบอกกล่าวหรือระบุเหตุผลในการดำเนินการนั้น',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 153,
                                    ),
                                    child: Text(
                                      'การจำกัดความรับผิดชอบ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'บริษัทฯ ไม่รับผิดชอบต่อความเสียหาย ความสูญเสีย หรือ ค่าใช้จ่ายที่เกิดขึ้นจากการใช้บริการของบริษัทฯ หรือ เว็บไซต์ ระบบภายนอกที่เชื่อมโยงกับเรา โดยรวมถึงความไม่ถูกต้อง, ความล่าช้า ของการรับส่งข้อมูล, ระยะเวลา หรือ เหตุขัดข้องของการเชื่อมต่อ ความเสถียรของระบบ จนถึง ไวรัส และ มัลแวร์คอมพิวเตอร์',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 213,
                                    ),
                                    child: Text(
                                      'กฎหมายที่ใช้บังคับ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'การใช้บริการเว็บไซต์นี้หรือการตีความข้อตกลงและเงื่อนไขการให้บริการฉบับนี้ ให้เป็นไปตามกฎหมายไทย',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'ข้อตกลงในการเปลี่ยนแปลงข้อตกลงและเงื่อนไขต่างๆ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 75, 195, 211)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 20,
                                    ),
                                    child: Text(
                                      'บริษัทฯ ขอสงวนสิทธิ์ในการเปลี่ยนแปลงข้อตกลงการใช้บริการนี้ โดยไม่ต้องแจ้งให้ทราบล่วงหน้า กรุณาตรวจสอบเงื่อนไขในการใช้บริการฉบับนี้อย่างสม่ำเสมอเพื่อให้แน่ใจได้ว่า ท่านรับทราบ ถึงการเปลี่ยนแปลงใดๆ ที่บริษัทได้จัดทำขึ้น หากท่านยังคงใช้เว็บไซต์ของบริษัทฯ ต่อไป ให้ถือว่าท่านได้ยอมรับการเปลี่ยนแปลงข้อตกลงและเงื่อนไขต่างๆ ของบริษัทฯ',
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 33, 31, 37)),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
  }
}
