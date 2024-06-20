import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';

class Item {
  // final int id;
  final String title;
  final String description;
  bool isExpanded;
  Item(
    // this.id,
    this.title,
    this.description,
    this.isExpanded,
  );
}

class FAQ extends StatefulWidget {
  // final double opacity;

  FAQ();

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  List<Item> items = [
  Item(
      // 1,
      "PDPA คืออะไร?",
      "PDPA (Personal Data Protection Act, B.E. 2562 (2019)) หรือ พระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ.2562 มีผลบังคับใช้อย่างเป็นทางการเมื่อ 1 มิ.ย. 2565 เหตุผลในการประกาศใช้ PDPA เนื่องมาจากเทคโนโลยีก้าวหน้าขึ้น ช่องทางสื่อสารต่างๆมีหลากหลายขึ้น ทำให้การละเมิดสิทธิความเป็นส่วนตัวของข้อมูลส่วนบุคคลทำได้ง่ายขึ้นและหลายครั้งก็นำมาซึ่งความเดือดร้อนรำคาญหรือสร้างความเสียหายให้แก่เจ้าของข้อมูล ตลอดจนสามารถส่งผลต่อเศรษฐกิจโดยรวมของประเทศได้ด้วย จึงต้องมีกฎหมายว่าด้วยการคุ้มครองข้อมูลส่วนบุคคลขึ้นเพื่อกำหนดหลักเกณฑ์ กลไก หรือมาตรการกำกับดูแลเกี่ยวกับการให้ความคุ้มครองข้อมูลส่วนบุคคลที่รวมถึงการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลขึ้น",
      false),
  Item(
      // 2,
      "ธุรกิจอะไรบ้างที่ต้องปฏิบัติตาม PDPA?",
      "ธุรกิจทุกประเภทหน่วยงานภาครัฐและองค์กรเอกชนที่มีความเกี่ยวข้องเกี่ยวกับข้อมูลส่วนบุคคล โดยมี “การเก็บ ใช้ เปิดเผยและถ่ายโอนข้อมูลส่วนบุคคล ในไทยให้เป็นไปตามมาตรการปกป้องข้อมูลของผู้อื่นจากการถูกละเมิดสิทธิส่วนบุคคลโดยต้องได้รับความยินยอมจากเจ้าของข้อมูลโดยข้อยกเว้นจะมีเหตุอื่นที่ได้รับอนุญาตตามกฎหมาย”องค์กรที่มีการละเมิดข้อกำหนด PDPA หรือพรบ.คุ้มครองข้อมูลส่วนบุคคล จะมีความผิดโดยมีบทลงโทษทางแพ่ง โทษทางอาญา และโทษทางปกครอง",
     false),
  Item(
      // 3,
      "ต้องการทำ PDPA จะเริ่มต้นอย่างไร",
      "ธุรกิจควรทำความเข้าใจเกี่ยวกับกฎระเบียบและข้อบังคับของPDPA โดยมีขั้นตอนสำคัญ ดังนี้\n1) จัดตั้งทีม DPO (Data Protection Officer)\n2) จัดอบรบพนักงานให้เข้าใจ PDPA\n3) เชื่อมโยงข้อมูล Data Mapping\n4) จัดทำนโยบายความเป็นส่วนตัว (Privacy Policy)\n5) ทบทวนพื้นฐานทางกฎหมาย (Lawful Basis for Processing)\n6) ประเมินผลกระทบการละเมิดข้อมูส่วนบุคคล (DPIA)\n7) ระบบแจ้งเตือนเฝ้าระวัง (Data Breach notification)\n8)Provide Technology Control \n\nปรึกษาเรา #Teamwisework พร้อมวางแผนให้อย่างเป็นระบบให้ธุรกิจของคุณดำเนินไปอย่างถูกต้องตามกฎหมาย",
     false),
  Item(
      // 4,
      "wisework สามารถให้คำปรึกษาเรื่อง PDPA ได้ไหม",
      "wisework มีทีมผู้ให้คำปรึกษาที่มีประสบการณ์มามากกว่า 50+ โครงการ พร้อมให้คำปรึกษา วางแผน และวางระบบตามกฎหมายสำหรับองค์กรและธุรกิจต่างๆการันตีความเชี่ยวชาญด้วยทีมที่ปรึกษาด้านกฎหมายและนักพัฒนามากประสบการณ์ที่ผ่านการฝึกอบรมและได้รับรองมาตรฐานระดับสากลเราดูแลตั้งแต่เริ่มต้นจนเสร็จสิ้นกระบวนการช่วยเติมเต็มให้ครบทั้ง People Process และ Technology",
     false),
  Item(
      // 5,
      "wisework มีมาตรฐานอะไรบ้างในการควบคุมกระบวนการบริหารความเสี่ยง",
      "wiseworksควบคุมกระบวนบริหารความเสี่ยงโดยอ้างอิงตามมาตรฐานISO31000 – Risk Management, COSO ERM- Enterprise Risk Management, ISO27005 - Information Security Risk Management, NIST 800-30 Risk Assessment และอื่นๆ",
      false),
  Item(
      // 6,
      "wisework มี solutions อะไรให้ใช้งานบ้าง",
      "wisework ระบบช่วยบริหารจัดการการจัดเก็บข้อมูลส่วนบุคคล Solution ที่ถูกคิดและพัฒนาโดยปฎิบัติตาม พ.ร.บ.คุ้มครองข้อมูลส่วนบุคคล ครอบคลุมฟังก์ชั่นการทำงานที่ธุรกิจต้องการหรือปรับเปลี่ยนให้เหมาะสมกับความต้องการของธุรกิจได้เชื่อมโยงข้อมูลที่หลากหลายรวมเข้าสู่โปรแกรมเดียว ด้วย 11 ฟังก์ชันการทำงานสำคัญที่ถูกออกแบบมาให้มีความสะดวกปลอดภัย และมีประสิทธิภาพสูงสุดรองรับภาษาไทยแบบเต็มรูปแบบ โดยมีความแม่นยำมากกว่า 95%",
      false),
  Item(
      // 7,
       "wisework ติดตั้งบนระบบ ERP รูปแบบใด",
      "wiseworks สามารถติดตั้งไว้บนระบบ ERP ทั้งแบบ On-Premise และ On-Cloud ใน Microsoft Azure ที่มีความยืดหยุ่นและรองรับการทำงานด้วยประสิทธิภาพสูงสุดอย่างต่อเนื่อง ทั้งนี้ขึ้นอยู่กับความต้องการของลูกค้าในการเลือกระบบ ERP ที่เหมาะกับองค์กรและสามารถตอบโจทย์ในการดำเนินธุรกิจมากที่สุด ปัจจุบันเรากำลังพัฒนา “Hybrid Cloud” ซึ่งเป็นการนำองค์ประกอบของ On-premise มาใช้ร่วมกับระบบ Cloud เพื่อช่วยอำนวยความสะดวกและง่ายต่อการเรียกข้อมูลมาใช้งานได้ในทุกที่ ทุกเวลา และตอบโจทย์รูปแบบการทำงานในปัจจุบัน",
     false),
  Item(
      // 8,
      "wisework สามารถเชื่อมต่อกับ software ภายในองค์กรได้ไหม",
      "wiseworks เชื่อมต่อกับ operation หรือ monitor software ภายในเพื่อดึงค่าที่สนใจ มาประมวลผลเพื่อประเมินความเสี่ยง หรือใช้เป็นตัวชี้วัดระดับความเสี่ยง KRI ซึ่งช่วยในการบริหารจัดการความเสี่ยงให้กับองค์กร",
     false),
  Item(
      // 9,
      "wisework ช่วยประเมินความเสี่ยงได้อย่างไร แบบใด",
      "wisework สามารถกำหนด Risk Tolerance (RT) ระดับความเสี่ยงที่สามารถยอมรับได้ ได้แบบ Dynamic มีความยืดหยุ่นสูงโดยผูกกับตัวชี้วัดระดับความเสี่ยง KRI (Key Risk Indicator) พร้อมกันได้หลายตัว ซึ่งช่วยให้องค์กรสามารถคัดเลือกและจัดลำดับการดำเนินการที่เหมาะสมในการลดและควบคุมความเสี่ยง",
      false),
  Item(
      // 10,
       "wisework จะช่วย support การบริหารจัดการได้ไหม",
      "wisework เชื่อมต่อกับ Module ‘Executive support system’ Feature สำคัญที่ช่วยในการติดตาม รายงาน และสั่งการ RTP ได้อย่างมีประสิทธิภาพ ผู้บริหารสามารถสั่งการและ มองเห็นภาพรวมของความคืบหน้าของงานได้อย่างต่อเนื่อง สามารถจัดการประสิทธิผลและประสิทธิภาพของงานให้เป็นไปตามแนวทางที่กำหนดไว้ โดยระบบสามารถสรุปการสั่งงานและข้อมูลงานทั้งหมด ออกมาเป็นแผนภาพ (Dashboard) ได้",
       false),
  Item(
      // 11,
      "wisework มีคู่มือการใช้งานให้หรือไม่",
      "หากมีข้อสงสัยเกี่ยวกับการใช้งานผลิตภัณฑ์สามารถติดต่อสอบถามรายละเอียดเพิ่มเติมได้ที่ admin@thewiseworks.com",
     false),
  Item(
      // 12,
       "สนใจผลิตภัณฑ์ wisework จะขอทดลองใช้งานได้อย่างไร",
      "หากสนใจ wisework และต้องการสอบถามรายละเอียดเกี่ยวกับผลิตภัณฑ์หรือทดลองใช้งาน สามารถติดต่อผ่านทางอีเมล์ admin@thewiseworks.com โดยทางเจ้าหน้าที่จะติดต่อกลับโดยเร็วที่สุดเพื่อขอข้อมูลเพิ่มเติมเพื่อแนะนำ solutions ที่เหมาะสมที่สุดสำหรับธุรกิจของคุณ",
     false),
  
];

  @override
  Widget build(BuildContext context) {
    var button = SizedBox(
      width: Responsive.isDesktop(context)
          ? 190
          : Responsive.isTablet(context)
              ? 193
              : 193,
      height: Responsive.isDesktop(context)
          ? 48
          : Responsive.isTablet(context)
              ? 50
              : 46,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 75, 195, 211),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
        child: Text(
          'รับคำปรึกษา',
          style: GoogleFonts.ibmPlexSans(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );

    return Center(
      child: Container(
        color: Color.fromARGB(255, 5, 45, 97),
        width: 1440,
        child: Column(
          children: [
            Responsive.isDesktop(context)
                ? Stack(
                    children: [
                      new Positioned(
                        left: 1325,
                        child: Container(
                          width: 205,
                          height: 205,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(108, 0, 112, 240)),
                        ),
                      ),
                      new Positioned(
                        top: 750,
                        child: Container(
                            // color: Colors.black,
                            height: 700,
                            child: Image.asset(
                              "assets/faq/Union.png",
                              fit: BoxFit.fitHeight,
                            )),
                      ),
                      new Positioned(
                        top:448,
                        left: 73,
                        child: Image.asset(
                          "assets/faq/qa.png",
                          height: 460,
                          width: 467,
                        ),
                      ),
                      Container(
                        // height: 1450,
                        width: 1440,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 90, left: 91),
                                      child: Text(
                                        'พร้อมวางแผนให้ธุรกิจคุณปรึกษา',
                                        style: GoogleFonts.ibmPlexSansThai(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 91),
                                      child: Text(
                                        '#Teamwisework',
                                        style: GoogleFonts.ibmPlexSansThai(
                                            color: Colors.white,
                                            fontSize: 36,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 91),
                                      child: button,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 80, left: 225),
                                      child: Text(
                                        'รวมคำถามที่พบบ่อย',
                                        style: GoogleFonts.ibmPlexSansThai(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 75, 195, 211),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 225),
                                      child: Text(
                                        'Frequently Asked Questions',
                                        style: GoogleFonts.ibmPlexSansThai(
                                          fontSize: 48,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(
                                              255, 232, 242, 254),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 85,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 225),
                                      child: Container(
                                        width: 728,
                                        child: _buildPanel()),
                                    )
                                  ],
                                )
                              ],
                            ),
                            // Row(
                            //   children: [
                            //     Column(
                            //       children: [
                            //         Padding(
                            //           padding: const EdgeInsets.only(
                            //               top: 160, left: 73),
                            //           child: Image.asset(
                            //             "assets/faq/qa.png",
                            //             height: 460,
                            //             width: 467,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //     Column(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Padding(
                            //           padding: const EdgeInsets.only(left: 225),
                            //           child: Container(
                            //             width: 728,
                            //             child: _buildPanel()),
                            //         )
                            //         ],
                            //     )
                            //   ],
                            // )
                          
                          ],
                        ),
                      ),
                    ],
                  )
                : Stack(
                    children: [
                      // Container(
                      //   height: Responsive.isTablet(context) ? 448 : 400,
                      //   width: 1440,
                      //   color: Color.fromARGB(0, 204, 220, 57),
                      // ),
                      Responsive.isTablet(context)
                          ? new Positioned(
                              left: 0,
                              child: Container(
                                width: 230,
                                height: 448,
                                child: Image.asset(
                                  "assets/faq/Union.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            )
                          : Container(
                              width: 290,
                              height: 390,
                            ),
                      Center(
                        child: Container(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  new SizedBox(
                                    height: Responsive.isTablet(context)
                                        ? 448
                                        : 400,
                                    width: Responsive.isTablet(context)
                                        ? 768
                                        : 375,
                                  ),
                                  new Positioned(
                                    top: Responsive.isTablet(context) ? 91 : 67,
                                    left:
                                        Responsive.isTablet(context) ? 230 : 71,
                                    child: SizedBox(
                                      height: 48,
                                      width: Responsive.isTablet(context)
                                          ? 357
                                          : 233,
                                      child: Text(
                                        "พร้อมวางแผนให้ธุรกิจคุณ ปรึกษา",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontWeight: FontWeight.w400,
                                            fontSize:
                                                Responsive.isTablet(context)
                                                    ? 24
                                                    : 16,
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    left:
                                        Responsive.isTablet(context) ? 240 : 47,
                                    top: Responsive.isTablet(context)
                                        ? 130
                                        : 108,
                                    child: SizedBox(
                                        height: Responsive.isTablet(context)
                                            ? 48
                                            : 32,
                                        width: 281,
                                        child: Text(
                                          "#Teamwisework",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize:
                                                  Responsive.isTablet(context)
                                                      ? 36
                                                      : 25,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        )),
                                  ),
                                  new Positioned(
                                    left:
                                        Responsive.isTablet(context) ? 245 : 38,
                                    top: Responsive.isTablet(context)
                                        ? 210
                                        : 171,
                                    child: SizedBox(
                                        height: Responsive.isTablet(context)
                                            ? 48
                                            : 100,
                                        width: Responsive.isTablet(context)
                                            ? 422
                                            : 320,
                                        child: Text(
                                          Responsive.isTablet(context)
                                              ? "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA\nหัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย"
                                              : "ให้องค์กรของคุณ วางแผนและจัดการกับ \nDATAหัวใจสำคัญของธุรกิจ\nได้ถูกต้องตามกฎหมาย",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                          textAlign:
                                              Responsive.isTablet(context)
                                                  ? TextAlign.start
                                                  : TextAlign.center,
                                        )),
                                  ),
                                  new Positioned(
                                    top: 294,
                                    left: Responsive.isTablet(context)
                                        ? 230
                                        : 100,
                                    child: button,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return MediaQuery(
      data: MediaQuery.of(context),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ExpansionPanelList(
        animationDuration: Duration(seconds: 1),
        dividerColor: Color.fromARGB(255, 72, 108, 156),
        elevation: 0,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            items[index].isExpanded = isExpanded;
          });
        },
        children: items.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            backgroundColor: Color.fromARGB(0, 255, 255, 255),
            canTapOnHeader: true,
            // hasIcon: false,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Wrap(
                children: [
                  ListTile(
                    // style: ListTileStyle.,
                    title: Text(
                      item.title,
                      style: TextStyle(
                          color: isExpanded
                              ? Color.fromARGB(255, 75, 195, 211)
                              : Colors.white,
                          fontSize: Responsive.isDesktop(context) ? 20 : 15),
                    ),
                    // iconColor: Colors.amber,
                    // selectedColor: Colors.amber,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    child: Transform.translate(
                      offset: Offset(
                          Responsive.isDesktop(context)
                              ? 680
                              : Responsive.isTablet(context)
                                  ? 670
                                  : 350,
                          -30),
                      child: Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_up
                            : Icons.expand_more_outlined,
                        color: isExpanded
                            ? Color.fromARGB(255, 75, 195, 211)
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              );
            },
            body: ListTile(
                contentPadding: EdgeInsets.all(20),
                title: Text(
                  item.description,
                  style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 20 : 15,
                      color: Colors.white),
                ),
                onTap: () {}),
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}
