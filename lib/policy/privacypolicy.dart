import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter/services.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class privacypolicy extends StatefulWidget {
  // final double opacity;

  privacypolicy();

  @override
  _privacypolicyState createState() => _privacypolicyState();
}

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

class _privacypolicyState extends State<privacypolicy> {
  List<Item> items = [
    Item(
        // 1,
        "ขอบเขต",
        "นโยบายการคุ้มครองข้อมูลส่วนบุคคลฉบับนี้ได้จัดทำขึ้นเพื่อแจ้งข้อมูลให้แก่ผู้ใช้บริการอันเกี่ยวกับสิทธิและหน้าที่ ตลอดจนเงื่อนไขต่างๆ ในการเก็บ รวมรวบ ใช้ และเปิดเผยข้อมูลส่วนบุคคลโดยนโยบายนี้มีผลบังคับใช้กับผู้ที่เกี่ยวข้องกับ การบริหารจัดการข้อมูลตลอดวงจรชีวิตข้อมูลของบริษัทฯ เช่น ที่ปรึกษา พนักงาน ลูกจ้าง ผู้สมัครงาน นักศึกษาฝึกงาน หน่วยงานภายนอก หรือบุคคลภายนอกที่ปฏิบัติงานในนามหรือร่วมงานบริษัทฯ เป็นต้น ทราบถึงวัตถุประสงค์และ รายละเอียด เกี่ยวกับการเก็บรวบรวม ใช้ และเปิดเผยข้อมูลส่วนบุคคล ตลอดจนสิทธิตามกฎหมายที่เกี่ยวข้องกับข้อมูล ส่วนบุคคลซึ่ง บริษัทฯ ได้ทำการเก็บรวบรวม ใช้ และเปิดเผยข้อมูลส่วนบุคคลของท่านเพื่อให้บรรลุวัตถุประสงค์ในการ สมัครงาน การจ้างงาน หรือการฝึกงาน ข้อมูลส่วนบุคคลที่บริษัทฯ ได้ทำการเก็บรวบรวม ใช้ และเปิดเผย นอกเหนือจาก ที่ได้มาจากความสัมพันธ์ เกี่ยวกับการสมัครงาน การจ้างงาน หรือการฝึกงาน เช่น ข้อมูลส่วนบุคคลที่บริษัทฯ เก็บรวบรวม ใช้ และเปิดเผย จากการใช้ ผลิตภัณฑ์หรือบริการของบริษัทฯ จะไม่อยู่ภายใต้ ขอบเขตการใช้ของนโยบายฉบับนี้",
        false),
    Item(
        // 2,
        "คำนิยาม",
        "ข้อมูลส่วนบุคคล แต่ไม่รวมถึงข้อมูลของผู้ถึงแก่กรรมโดยเฉพาะ อาทิเช่น ชื่อ นามสกุล ชื่อเล่น อีเมล หมายเลขโทรศัพท์ ที่อยู่\nเจ้าของข้อมูลส่วนบุคคล หมายถึง บุคคลซึ่งสามารถถูกระบุตัวตนได้โดยข้อมูลส่วนบุคคลนั้น ๆ ไม่ว่าโดยทางตรงหรือทางอ้อม\nข้อมูลชีวภาพ หมายถึง ข้อมูลส่วนบุคคลที่เกิดจากการใช้เทคนิคหรือเทคโนโลยีที่เกี่ยวข้องกับการนำลักษณะเด่นทางกายภาพหรือ ทางพฤติกรรมของบุคคลมาใช้ ทำให้สามารถ ยืนยันตัวตนของบุคคลนั้นที่ไม่เหมือนกับบุคคลอื่นได้ เช่น ข้อมูลจำลองภาพใบหน้า ข้อมูลจำลองม่านตา หรือข้อมูลจำลองลายนิ้วมือ\nผู้ควบคุมข้อมูลส่วนบุคคล หมายถึง ผู้ที่มีอำนาจหน้าที่ตัดสินใจเกี่ยวกับการรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคล\nผู้ประมวลผลข้อมูล หมายถึง ผู้ซึ่งดำเนินการเกี่ยวกับการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลตามคำสั่งหรือในนามของผู้ควบคุมข้อมูลส่วนบุคคล\nการประมวลผลข้อมูล หมายถึง การดำเนินการใด ๆ ซึ่งกระทำต่อข้อมูลส่วนบุคคลหรือชุดข้อมูลส่วนบุคคล ไม่ว่าจะโดยวิธีการอัตโนมัติหรือไม่ เช่น การเก็บ บันทึก จัดระบบจัดโครงสร้าง เก็บรักษา เปลี่ยนแปลงหรือปรับเปลี่ยน การรับ พิจารณา ใช้ เปิดเผย ด้วยการส่งต่อ เผยแพร่ หรือการกระทำอื่นใดซึ่งทำให้เกิดความพร้อม ใช้งาน การจัดวางหรือ ผสมเข้าด้วยกัน การจำกัด การลบ หรือการทำลาย\nแอปพลิเคชัน หมายถึง โปรแกรม หรือชุดคำสั่งที่ใช้ควบคุมการทำงานของคอมพิวเตอร์เคลื่อนที่และอุปกรณ์ต่อพ่วงต่าง ๆ เพื่อให้ทำงานตามคำสั่ง และตอบสนองความต้องการ ของผู้ใช้ โดยแอพพลิเคชั่น (Application) ต้องมีสิ่งที่เรียกว่า ส่วนติดต่อกับผู้ใช้ (User Interface หรือ UI) เพื่อเป็นตัวกลางการใช้งานต่าง ๆ\nคุกกี้ (Cookie) หมายถึง ข้อมูลขนาดเล็กที่เว็บไซต์ของบริษัทฯ ส่งไปยังคอมพิวเตอร์หรืออุปกรณ์อิเล็กทรอนิกส์ที่เชื่อมต่ออินเทอร์เน็ต เพื่อเก็บข้อมูลส่วนบุคคล โดยคุกกี้จะถูก ส่งกลับไปที่เว็บไซต์ต้นทางในแต่ละครั้งที่กลับเข้ามาดูที่เว็บไซต์ดังกล่าว\nสำนักงาน หมายถึง สำนักงานคณะกรรมการคุ้มครองข้อมูลส่วนบุคคล\nพนักงาน หมายถึง ผู้บริหาร พนักงาน ลูกจ้าง ผู้ที่ทำงานหรือปฏิบัติงานให้กับบริษัท เดอะไวซ์เวิร์ค จำกัด",
        false),
    Item(
        // 3,
        "วัตถุประสงค์ในการเก็บรวบรวม ใช้ และเปิดเผยข้อมูลส่วนบุคคล",
        "ข้อมูลส่วนบุคคล คือ ข้อมูลที่ทำให้สามารถระบุตัวตนได้ ไม่ว่าทางตรงหรือทางอ้อม (แต่ไม่รวมถึงข้อมูลของผู้ถึงแก่กรรม) ได้แก่",
        false),
    Item(
        // 4,
        "ข้อมูลส่วนบุคคลที่เก็บรวบรวม ใช้ และเปิดเผย",
        "การปฏิบัติตามสัญญา (Contractual Basis) เพื่อการปฏิบัติตามสัญญาที่ท่านเป็นคู่สัญญา เช่น สัญญาจ้าง สัญญาการฝึกงาน หรือสัญญาอื่นใด หรือเพื่อใช้ในการดำเนินการตามคำขอ/ใบสมัครของท่านก่อนเข้าทำสัญญา หรือเพื่อความจำเป็นต่อการให้บริการหรือปฏิบัติตามสัญญาระหว่าง เจ้าของข้อมูลและบริษัท ตามแต่กรณี\n1. การปฏิบัติตามสัญญา (Contractual Basis) เพื่อการปฏิบัติตามสัญญาที่ท่านเป็นคู่สัญญา เช่น สัญญาจ้าง สัญญาการฝึกงาน หรือสัญญาอื่นใด หรือเพื่อใช้ในการดำเนินการตามคำขอ/ใบสมัครของท่านก่อนเข้าทำสัญญา หรือเพื่อความจำเป็นต่อการให้บริการหรือปฏิบัติตามสัญญาระหว่าง เจ้าของข้อมูลและบริษัท ตามแต่กรณี\n2. การปฏิบัติตามกฎหมาย (Legal Obligation) เพื่อปฏิบัติหน้าที่ตามกฎหมายที่กำหนด หน้าที่ของบริษัทฯ ในฐานะของนายจ้างหรือในฐานะอื่นใด\n3. ประโยชน์โดยชอบด้วยกฎหมาย (Legitimate Interest) เพื่อประโยชน์โดยชอบด้วยกฎหมายของบริษัทฯ หรือของบุคคลหรือนิติบุคคลอื่น โดยไม่เกินขอบเขตที่ท่านสามารถคาดหมายได้อย่างสมเหตุสมผล หรือเพื่อวัตถุประสงค์อื่น ๆ ตามที่กฎหมายอนุญาตให้ทำได้",
        false),
    Item(
        // 5,
        "การเปิดเผยข้อมูลส่วนบุคคล",
        "บริษัทฯ อาจเปิดเผยข้อมูลส่วนบุคคลให้แก่ผู้อื่นภายใต้ความยินยอมของท่าน หรือฐานทางกฎหมายอื่นตามวัตถุประสงค์ที่ระบุไว้ในนโยบายฉบับนี้ เช่น ผู้ประมวลผลข้อมูลส่วนบุคคล ผู้ให้บริการภายนอกทั้งในประเทศและต่างประเทศ ตัวแทนของบริษัทฯ หน่วยงานหรือบริษัทภายนอกที่บริษัทฯ ไปศึกษาดูงาน ผู้รับจ้างช่วงงานต่อ สถาบันการเงิน ผู้สอบบัญชี ผู้ตรวจสอบภายนอก ผู้มีอำนาจตามกฎหมาย ผู้สนใจจะเข้ารับโอนสิทธิ และ/หรือผู้รับโอนสิทธิหรือการควบรวมกิจการต่าง ๆ ของบริษัท นิติบุคคล/บุคคลใด ๆ ที่มีความสัมพันธ์หรือมีสัญญาอยู่กับบริษัทฯ ซึ่งรวมตลอดถึง ผู้บริหาร พนักงาน ลูกจ้าง ที่ปรึกษาของบริษัทฯ และของบุคคลหรือหน่วยงานที่เป็นผู้รับข้อมูลดังกล่าว",
        false),
    Item(
        // 6,
        "การส่งหรือโอนข้อมูลส่วนบุคคลไปต่างประเทศ",
        "บริษัทฯ มีการดำเนินธุรกิจในหลายประเทศ บริษัทฯ จึงอาจมีความจำเป็นต้องส่งหรือโอนข้อมูลส่วนบุคคลของท่านไปยังบริษัทธุรกิจเดียวกันที่อยู่ ต่างประเทศ ซึ่งอาจเป็นประเทศที่ท่านทำงาน หรือไปยังผู้รับข้อมูลอื่น ซึ่งเป็นส่วนหนึ่งของการดำเนินธุรกิจตามปกติของบริษัทฯ เช่น การส่งหรือโอน ข้อมูลส่วนบุคคลไปเก็บไว้บน Server/Cloud ในประเทศต่าง ๆ กรณีที่ประเทศปลายทาง มีมาตรฐานไม่เพียงพอ บริษัทฯ จะดูแลการส่งหรือโอนข้อมูล ส่วนบุคคลให้เป็นไปตามกรณีที่กฎหมายกำหนด และจะดำเนินการให้มีมาตรการคุ้มครองข้อมูลส่วนบุคคล และมาตรการเยียวยาตามที่เห็นว่าจำเป็น และเหมาะสมสอดคล้องกับมาตรฐานการรักษาความลับตามที่กฎหมายประเทศนั้นกำหนด เช่น กำหนดให้ผู้รับข้อมูลมีมาตรการในการรักษาความมั่นคง ปลอดภัยของข้อมูลส่วนบุคคลเทียบเท่ากับมาตรการของบริษัทฯ มีข้อตกลงรักษาความลับกับผู้รับข้อมูลในประเทศดังกล่าวหรือในกรณีที่ผู้รับข้อมูลเป็น บริษัทธุรกิจเดียวกัน บริษัทฯ อาจเลือกใช้วิธีการดำเนินการให้มีนโยบายการคุ้มครองข้อมูลส่วนบุคคลที่ได้รับการตรวจสอบและรับรองจากผู้มีอำนาจ ตามกฎหมายที่เกี่ยวข้องและจะดำเนินการให้การส่งหรือโอนข้อมูลส่วนบุคคลไปยังบริษัทธุรกิจเดียวกันที่อยู่ต่างประเทศเป็นไปตามนโยบายการคุ้มครองข้อมูลส่วนบุคคลดังกล่าวแทนการดำเนินการตามที่กฎหมายกำหนดไว้ก็ได้",
        false),
    Item(
        // 7,
        "ระยะเวลาการจัดเก็บข้อมูลส่วนบุคคล",
        "บริษัทฯ จะเก็บรักษาข้อมูลส่วนบุคคลของท่านไว้ตามระยะเวลาที่จำเป็นในระหว่างที่ท่านเป็นผู้สมัครหรือบุคลากรของบริษัทฯ หรือตลอดระยะเวลาที่ จำเป็นเพื่อให้บรรลุวัตถุประสงค์ที่เกี่ยวข้อง ในนโยบายฉบับนี้ ซึ่งอาจจำเป็นต้องเก็บรักษาไว้ต่อไปภายหลังจากนั้นหากมีกฎหมายกำหนดหรืออนุญาตไว้",
        false),
    Item(
        // 8,
        "การคุ้มครองข้อมูลส่วนบุคคล",
        "บริษัทฯ จะเก็บรักษาข้อมูลส่วนบุคคลของท่านไว้เป็นอย่างดีตามมาตรการเชิงเทคนิค (Technical Measure) และมาตรการเชิงบริหารจัดการ (Organizational Measure) เพื่อรักษาความมั่นคง ปลอดภัยในการประมวลผลข้อมูลส่วนบุคคลที่เหมาะสม และเพื่อป้องกันการละเมิดข้อมูลส่วนบุคคล โดยบริษัทฯ ได้กำหนดนโยบาย ระเบียบ และหลักเกณฑ์ในการคุ้มครองข้อมูลส่วนบุคคล เช่น มาตรฐานความปลอดภัยของระบบเทคโนโลยีสารสนเทศ และมาตรการเพื่อป้องกันไม่ให้ผู้รับข้อมูลไปจากบริษัทฯ ใช้หรือเปิดเผยข้อมูลนอกวัตถุประสงค์ หรือโดยไม่มีอำนาจหรือโดยไม่ชอบ และบริษัทฯ ได้มี การปรับปรุงนโยบาย ระเบียบ และหลักเกณฑ์ดังกล่าวเป็นระยะ ๆ ตามความจำเป็นและเหมาะสม\n นอกจากนี้ บริษัทฯ ยังได้กำหนดให้พนักงาน และผู้รับข้อมูลจากบริษัทฯ มีหน้าที่รักษาข้อมูลส่วนบุคคลของท่านไว้เป็นความลับและมีความปลอดภัย ตามมาตรการที่บริษัทฯ กำหนด เมื่อต้องมีการ ดำเนินการใด ๆ กับข้อมูลส่วนบุคคลของท่าน",
        false),
    Item(
        // 9,
        "สิทธิของเจ้าของข้อมูลส่วนบุคคล",
        "สิทธิของท่าน เป็นสิทธิตามกฎหมายที่ท่านควรทราบ โดยท่านสามารถขอใช้สิทธิต่าง ๆ ได้ภายใต้ข้อกำหนดของกฎหมาย และนโยบายที่กำหนดไว้ในขณะนี้ หรือที่จะมีการแก้ไขเพิ่มเติมในอนาคต ตลอดจนหลักเกณฑ์ตามที่บริษัทฯ กำหนดขึ้น",
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
      // child: ElevatedButton(
      //   onPressed: () {},
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: Color.fromARGB(255, 75, 195, 211),
      //     shape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      //   ),
      //   child: Text(
      //     'รับคำปรึกษา',
      //     style: GoogleFonts.ibmPlexSans(
      //       fontSize: 20,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      // ),
    );

    return Center(
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        width: 1440,
        child: Column(
          children: [
            Responsive.isDesktop(context)
                ? Stack(
                    children: [
                      // new Positioned(
                      //   left: 1325,
                      //   child: Container(
                      //     width: 205,
                      //     height: 205,
                      //     decoration: BoxDecoration(
                      //         shape: BoxShape.circle,
                      //         color: Color.fromARGB(108, 0, 112, 240)),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 57, left: 100),
                        child: Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 60,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 57, 128, 237),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 57, 128, 237),
                                        width: 5)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                // color: Colors.amber,
                                height: 20,
                                child: Text(
                                  "Privacy Policy",
                                  style: GoogleFonts.ibmPlexSansThai(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 57, 128, 237)),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(
                            //       top: 420, left: 20, right: 100),
                            //   child:
                            //       Container(width: 1300, child: _buildPanel()),
                            // ),
                          ],
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
                                          top: 150, left: 100),
                                      child: Text(
                                        'PRIVACY POLICY นโยบายความเป็นส่วนตัว',
                                        style: GoogleFonts.ibmPlexSansThai(
                                          fontSize: 48,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(255, 5, 45, 97),
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
                                          "บริษัท เดอะไวซ์เวิร์ค จำกัด ซึ่งต่อไปนี้จะเรียกว่า “บริษัทฯ” ตระหนักถึงความสำคัญของการคุ้มครองข้อมูลส่วนบุคคลและการปฏิบัติตาม พระราชบัญญัติ คุ้มครองข้อมูลส่วนบุคคล พ.ศ. 2562 เนื่องจากการคุ้มครองข้อมูลส่วนบุคคลเป็นส่วนหนึ่งของการรับผิดชอบต่อสังคม และเป็นรากฐานในการสร้าง ความสัมพันธ์ทางธุรกิจที่น่าเชื่อถือกับลูกค้า บริษัทฯ จึงยึดมั่นในการปฏิบัติตามกรอบของกฎหมายคุ้มครอง ข้อมูลส่วนบุคคล บริษัทฯ จึงได้มีการจัดทำ นโยบายความเป็นส่วนตัว (Privacy Policy) เพื่อกำหนดแนวทางและหลักปฏิบัติในการดำเนินการ คุ้มครอง ข้อมูลส่วนบุคคลของบริษัทฯ",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              color: Color.fromARGB(
                                                  255, 157, 157, 157),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 100),
                                      child: Container(
                                          width: 1200, child: _buildPanel()),
                                    ),                                   
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 57, left: 20),
                        child: Wrap(
                          children: [
                            Responsive.isTablet(context)
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                        top: 50, left: 100),
                                    child: Wrap(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
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
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontWeight:
                                                          FontWeight.w600,
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
                          ],
                        ),
                      ),
                      Container(
                        // height: 1450,
                        width: Responsive.isTablet(context) ? 1400 : 400,
                        padding: const EdgeInsets.only(
                            top: 50, left: 20, right: 100),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: Responsive.isTablet(context)
                                          ? 83
                                          : 51,
                                    ),
                                    Responsive.isTablet(context)
                                        ? Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50, left: 100, right: 100),
                                            child: Text(
                                              'PRIVACY POLICY \nนโยบายความเป็นส่วนตัว',
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                fontSize:
                                                    Responsive.isTablet(context)
                                                        ? 48
                                                        : 24,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 5, 45, 97),
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 10, right: 300),
                                            child: Text(
                                              "PRIVACY POLICY \nนโยบายความเป็นส่วนตัว",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize:
                                                          Responsive.isTablet(
                                                                  context)
                                                              ? 24
                                                              : 24,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 5, 45, 97)),
                                            ),
                                          ),
                                    Responsive.isTablet(context)
                                        ? Padding(
                                            padding: const EdgeInsets.only(
                                                top: 40, left: 100, right: 100),
                                            child: SizedBox(
                                              height: 300,
                                              width: 600,
                                              child: Text(
                                                "บริษัท เดอะไวซ์เวิร์ค จำกัด ซึ่งต่อไปนี้จะเรียกว่า “บริษัทฯ” ตระหนักถึงความสำคัญของการคุ้มครองข้อมูลส่วนบุคคลและการปฏิบัติตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ. 2562 เนื่องจากการคุ้มครองข้อมูลส่วนบุคคลเป็นส่วนหนึ่งของการรับผิดชอบต่อสังคม และเป็นรากฐานในการสร้างความสัมพันธ์ทางธุรกิจที่น่าเชื่อถือกับลูกค้า บริษัทฯ จึงยึดมั่นในการปฏิบัติตามกรอบของกฎหมายคุ้มครองข้อมูลส่วนบุคคล บริษัทฯ จึงได้มีการจัดทำ นโยบายความเป็นส่วนตัว (Privacy Policy)เพื่อกำหนดแนวทางและหลักปฏิบัติในการดำเนินการ คุ้มครองข้อมูลส่วนบุคคลของบริษัทฯ",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        color: Color.fromARGB(
                                                            255, 157, 157, 157),
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                top: 40, left: 10, right: 400),
                                            child: SizedBox(
                                              height: 350,
                                              width: 330,
                                              child: Text(
                                                "บริษัท เดอะไวซ์เวิร์ค จำกัด ซึ่งต่อไปนี้จะเรียกว่า “บริษัทฯ” ตระหนักถึงความสำคัญของการคุ้มครองข้อมูลส่วนบุคคลและการปฏิบัติตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ. 2562 เนื่องจากการคุ้มครองข้อมูลส่วนบุคคลเป็นส่วนหนึ่งของการรับผิดชอบต่อสังคม และเป็นรากฐานในการสร้างความสัมพันธ์ทางธุรกิจที่น่าเชื่อถือกับลูกค้า บริษัทฯ จึงยึดมั่นในการปฏิบัติตามกรอบของกฎหมายคุ้มครองข้อมูลส่วนบุคคล บริษัทฯ จึงได้มีการจัดทำ นโยบายความเป็นส่วนตัว (Privacy Policy)เพื่อกำหนดแนวทางและหลักปฏิบัติในการดำเนินการ คุ้มครองข้อมูลส่วนบุคคลของบริษัทฯ",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        color: Color.fromARGB(
                                                            255, 157, 157, 157),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),

                                    SizedBox(
                                      height: 0,
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(left: 100),
                                    //   child: Container(
                                    //       width: 1200, child: _buildPanel()),
                                    // ),
                                    Responsive.isTablet(context)
                                        ? Padding(
                                            padding: const EdgeInsets.only(
                                                left: 100),
                                            child: Container(
                                                width: 600,
                                                child: _buildPanel()),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: Container(
                                                width: 330,
                                                child: _buildPanel()),
                                          ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
            Responsive.isDesktop(context)
                ? Container(
                    width: 1440,
                    height: 550,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Padding(
                      padding: const EdgeInsets.all(100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // width: 1440,
                            // height: 600,
                            child: new Material(
                              child: new Container(
                                width: 1200,
                                height: 350,
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
                                child: Center(
                                  child: Container(
                                    // margin: EdgeInsets.all(15),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 48,
                                          left: 6,
                                          right: 6,
                                          bottom: 12),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 80,
                                              right: 100,
                                            ),
                                            child: Text(
                                              'หากท่านมีข้อสงสัยหรือมีความประสงค์จะแก้ไข ลบข้อมูล ใช้สิทธิ หรือติดต่อเรื่องอื่น ๆ ที่เกี่ยวกับข้อมูลของท่าน กรุณาติดต่อผ่านช่องทางการติดต่อด้านล่าง',
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
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
                                              top: 48,
                                              left: 6,
                                              right: 265,
                                              bottom: 12,
                                            ),
                                            child: Text(
                                              'บริษัท เดอะไวซ์เวิร์ค จำกัด\n4 Central Tower, 12th Floor, Room 1209, Rajdamri Road, Pathumwan, Bangkok 10330\nโทร 02-000-0323',
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
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
                                              top: 0,
                                              left: 10,
                                              right: 777,
                                            ),
                                            child: Text(
                                              'อีเมล info@thewiseworks.com\n\n\n\n\n\n\n',
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 20,
                                                      color: Color.fromARGB(
                                                          255, 52, 145, 206)),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(
                    child: Stack(
                      children: [
                        Container(
                          width: 1440,
                          // width: Responsive.isTablet(context) ? 768 : 375,
                          height: Responsive.isTablet(context) ? 750 : 580,
                          color: Color.fromARGB(255, 232, 242, 254),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Responsive.isTablet(context)
                                  ? Container(
                                      width: 1000,
                                      height: 550,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 100),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              // width: 1440,
                                              // height: 600,
                                              child: new Material(
                                                child: new Container(
                                                  width: Responsive.isTablet(
                                                          context)
                                                      ? 600
                                                      : 400,
                                                  height: Responsive.isTablet(
                                                          context)
                                                      ? 448
                                                      : 400,
                                                  decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.3),
                                                          spreadRadius: 2,
                                                          blurRadius: 20,
                                                          offset: Offset(0,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Center(
                                                    child: Container(
                                                      // margin: EdgeInsets.all(15),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 25,
                                                                left: 6,
                                                                right: 6,
                                                                bottom: 12),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 5,
                                                                left: 30,
                                                              ),
                                                              child: Text(
                                                                'หากท่านมีข้อสงสัยหรือมีความประสงค์จะแก้ไข ลบข้อมูล ใช้สิทธิ หรือติดต่อเรื่องอื่น ๆ ที่เกี่ยวกับข้อมูลของท่าน กรุณาติดต่อผ่านช่องทางการติดต่อด้านล่าง',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        20,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            33,
                                                                            31,
                                                                            37)),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 35,
                                                                left: 10,
                                                                right: 128,
                                                              ),
                                                              child: Text(
                                                                'บริษัท เดอะไวซ์เวิร์ค จำกัด\n4 Central Tower, 12th Floor, Room 1209,\nRajdamri Road, Pathumwan, Bangkok 10330\nโทร 02-000-0323',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        20,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            33,
                                                                            31,
                                                                            37)),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 3,
                                                                left: 3,
                                                                right: 260,
                                                              ),
                                                              child: Text(
                                                                'อีเมล info@thewiseworks.com',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    decoration:
                                                                        TextDecoration
                                                                            .underline,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        20,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Container(
                                      width: 400,
                                      height: 450,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              // width: 1440,
                                              // height: 600,
                                              child: new Material(
                                                child: new Container(
                                                  width: Responsive.isTablet(
                                                          context)
                                                      ? 400
                                                      : 350,
                                                  height: Responsive.isTablet(
                                                          context)
                                                      ? 248
                                                      : 400,
                                                  decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.3),
                                                          spreadRadius: 2,
                                                          blurRadius: 20,
                                                          offset: Offset(0,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Center(
                                                    child: Container(
                                                      // margin: EdgeInsets.all(15),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 15,
                                                                left: 6,
                                                                right: 22,
                                                                bottom: 12),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 5,
                                                                left: 20,
                                                              ),
                                                              child: Text(
                                                                'หากท่านมีข้อสงสัยหรือมีความประสงค์จะแก้ไข ลบข้อมูล ใช้สิทธิ หรือติดต่อเรื่องอื่น ๆ ที่เกี่ยวกับข้อมูลของท่าน กรุณาติดต่อผ่านช่องทางการติดต่อด้านล่าง',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        16,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            33,
                                                                            31,
                                                                            37)),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 35,
                                                                left: 21,
                                                                right: 35,
                                                              ),
                                                              child: Text(
                                                                'บริษัท เดอะไวซ์เวิร์ค จำกัด\n4 Central Tower, 12th Floor, Room 1209, Rajdamri Road, Pathumwan, Bangkok 10330\nโทร 02-000-0323',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        16,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            33,
                                                                            31,
                                                                            37)),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 3,
                                                                left: 20,
                                                                right: 80,
                                                              ),
                                                              child: Text(
                                                                'อีเมล info@thewiseworks.com',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    decoration:
                                                                        TextDecoration
                                                                            .underline,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        16,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            52,
                                                                            145,
                                                                            206)),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                              Responsive.isTablet(context)
                                  ? Container(
                                      width: 876,
                                      height: 150,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 50,
                                              // left: 315,
                                              // right: 3,
                                            ),
                                            child: Text(
                                              'ประกาศ ณ วันที่ 8 เดือนพฤษภาคม พ.ศ.2566\n\n\n',
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
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
                                    )
                                  : Container(
                                      width: 876,
                                      height: 150,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 50,
                                              // left: 315,
                                              // right: 3,
                                            ),
                                            child: Text(
                                              'ประกาศ ณ วันที่ 8 เดือนพฤษภาคม พ.ศ.2566\n\n\n',
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                      color: Color.fromARGB(
                                                          255, 33, 31, 37)),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
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
        dividerColor: Color.fromARGB(255, 205, 214, 218),
        elevation: 0,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            items[index].isExpanded = isExpanded;
            // _titleColor = _isexpanded ? Colors.black : Color.fromARGB(255, 75, 195, 211);
          });
        },
        children: items.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            backgroundColor: Color.fromARGB(0, 255, 252, 252),
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
                              : const Color.fromARGB(255, 75, 195, 211),
                          fontSize: Responsive.isDesktop(context) ? 20 : 15),
                    ),
                    // iconColor: Colors.amber,
                    // selectedColor: Colors.amber,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    child: Transform.translate(
                      offset: Offset(
                          Responsive.isDesktop(context)
                              ? 1152
                              : Responsive.isTablet(context)
                                  ? 850
                                  : 285,
                          Responsive.isDesktop(context)
                              ? -25
                              : Responsive.isTablet(context)
                                  ? -25
                                  : -25),
                      child: Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_up
                            : Icons.expand_more_outlined,
                        color: isExpanded
                            ? Color.fromARGB(255, 75, 195, 211)
                            : Color.fromARGB(255, 255, 255, 255),
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
                      color: const Color.fromARGB(255, 157, 157, 157)),
                ),
                onTap: () {}),
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}
