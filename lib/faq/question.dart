import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/home/faq.dart';

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

class Questions extends StatefulWidget {
  // final double opacity;

  Questions();

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  // bool _showCustomers = false;
  // const Faq({super.key});
  // int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

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
          style: GoogleFonts.ibmPlexSansThai(
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
                ? FAQ()
                : Stack(
                    children: [
                      Container(
                        // height: 1500,
                        width: 1440,
                        color: Color.fromARGB(0, 204, 220, 57),
                      ),
                      Responsive.isTablet(context)
                          ? Center(
                              child: Stack(
                                children: [
                                  new Positioned(
                                    top: 300,
                                    left: 0,
                                    child: Container(
                                        // color: Colors.black,
                                        width: 250,
                                        height: 700,
                                        child: Image.asset(
                                          "assets/faq/Union.png",
                                          fit: BoxFit.fitWidth,
                                        )),
                                  ),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 700,
                                          // height: 1500,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 90, left: 15),
                                                    child: Text(
                                                      'รวมคำถามที่พบบ่อย',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                        fontSize: 32,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 75, 195, 211),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  'Frequently Asked Questions',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
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
                                              // listChoice,
                                              _buildPanel()
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Center(
                              child: Stack(
                                children: [
                                  new Positioned(
                                    top: 200,
                                    left: 0,
                                    child: Container(
                                        // color: Colors.black,
                                        width: 250,
                                        height: 700,
                                        child: Image.asset(
                                          "assets/faq/Union.png",
                                          fit: BoxFit.fitWidth,
                                        )),
                                  ),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 375,
                                          // height: 1758,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 86, left: 15),
                                                    child: Text(
                                                      'รวมคำถามที่พบบ่อย',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 75, 195, 211),
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  'Frequently Asked\nQuestions',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromARGB(
                                                        255, 232, 242, 254),
                                                  ),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),

                                              SizedBox(
                                                height: 20,
                                              ),
                                              // listChoice,
                                              _buildPanel(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                    ],
                  ),
            Responsive.isDesktop(context)
                ? Container()
                : Responsive.isTablet(context)
                    ? Column(
                        children: [
                          Container(
                            width: 1440,
                            height: 51,
                            color: Color.fromARGB(255, 232, 242, 254),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 1440,
                                height: 360,
                                color: Color.fromARGB(255, 5, 45, 97),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 73),
                                      child: Text(
                                        "พร้อมวางแผนให้ธุรกิจคุณ!",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 32),
                                      child: Text(
                                        "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ\nได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 19),
                                      child: button,
                                    )
                                  ],
                                ),
                              ),
                              new Positioned(
                                left: 0,
                                child: SizedBox(
                                    height: 360,
                                    child: Image.asset(
                                      "assets/faq/half.png",
                                      fit: BoxFit.fitHeight,
                                    )),
                              )
                            ],
                          )
                        ],
                      )
                    : Container(
                        width: 376,
                        height: 374,
                        color: Color.fromARGB(255, 5, 45, 97),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Text(
                                "พร้อมวางแผนให้ธุรกิจคุณ ปรึกษา",
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              "#Teamwisework",
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 34),
                              child: Text(
                                "ให้องค์กรของคุณ วางแผนและจัดการกับ\nDATA หัวใจสำคัญของธุรกิจ\nได้ถูกต้องตามกฎหมาย",
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 34),
                              child: button,
                            )
                          ],
                        ),
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
            // _titleColor = _isexpanded ? Colors.black : Color.fromARGB(255, 75, 195, 211);
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
                          fontSize: Responsive.isDesktop(context)
                              ? 20
                              : Responsive.isTablet(context)
                                  ? 18
                                  : 16),
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
                                  ? 650
                                  : 325,
                          Responsive.isDesktop(context)
                              ? -30
                              : Responsive.isTablet(context)
                                  ? -30
                                  : -33),
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
                      fontSize: Responsive.isDesktop(context)
                          ? 20
                          : Responsive.isTablet(context)
                              ? 18
                              : 14,
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
