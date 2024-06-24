import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:wiseintern/home/carousel.dart';
import 'package:wiseintern/responsive.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:wiseintern/model/customer_carousel.dart';
// import 'package:wiseintern/model/customer_logo.dart';

class CustomerModel {
  final String imageUrl;
  CustomerModel(
    this.imageUrl,
  );
}

class RealStory {
  final String img;
  final String brand;
  final String story;
  RealStory(this.img, this.brand, this.story);
}

class Customer extends StatefulWidget {
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  // CarouselController _controller = CarouselController();
  // final controller =
  //     PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);
  int _current = 0;

  List<RealStory> stories = [
    RealStory("assets/customer/bitkub.png", "Bitkub Online",
        "บริษัท บิทคับ แคปปิตอล กรุ๊ป โฮลดิ้งส์ จำกัด\nให้บริการเกี่ยวกับเทคโนโลยีบล็อกเชน"),
    RealStory("assets/customer/lotus.png", "Lotus Mattress",
        "โลตัส แมทเทรส บริษัทเครื่องนอนชั้นนำคุณภาพสูง\nรายใหญ่ระดับโลก ก่อตั้งตั้งแต่ปี 1980 "),
    RealStory("assets/customer/viriya.png", "วิริยะประกันภัย จำกัด (มหาชน)",
        "บริษัทประกันวินาศภัยอันดับหนึ่งของไทย\nครองใจยาวนานกว่า 69 ปี"),
    RealStory("assets/customer/tvo.png", "Thai Vegetable Oil",
        "ผู้ประกอบการอุตสาหกรรมเกษตร จัดจำหน่ายสินค้า\nทั้งตลาดในประเทศ และต่างประเทศ"),
    RealStory("assets/customer/brr.png", "น้ำตาลบุรีรัมย์ จำกัด (มหาชน) ",
        "โรงงานน้ำตาลบุรีรัมย์ เป็นหนึ่งในบรรดาผู้บุกเบิก\nอุตสาหกรรมน้ำตาลของภาคตะวันออกเฉียงเหนือ"),
    RealStory("assets/customer/kyocera.png", "Kyocera (Thailand)",
        "ผู้ผลิตชั้นนำระดับสากล\nด้านอุปกรณ์อิเล็กทรอนิกส์จากประเทศญี่ปุ่น"),
    RealStory("assets/customer/advice.png", "Advice IT Infinite",
        "ผู้นำด้านการจัดจำหน่ายสินค้าไอที สมาร์ทโฟน\nจำหน่ายทั่วประเทศไทย และสปป.ลาว กว่า 333 สาขา"),
    RealStory("assets/customer/p-pat.png", "โรงพยาบาล ป.แพทย์",
        "โรงพยาบาล ป.แพทย์\nให้บริการเกี่ยวกับเทคโนโลยีบล็อกเชน "),
    RealStory("assets/customer/Permier_Tecnology.png", "Permier Tecnology",
        "บริษัท พรีเมียร์ เทคโนโลยี จำกัด (มหาชน)\nให้บริการเกี่ยวกับเทคโนโลยีบล็อกเชน "),
    RealStory("assets/customer/MTS.png", "มหาวิทยาลัยเทคโนโลยีสุรนารี",
        "มหาวิทยาลัยเทคโนโลยีสุรนารี\nสถาบันการศึกษามหาวิทยาลัยเทคโนโลยีสุรนารี"),  
    RealStory("assets/customer/PKS.png", "Pks Phuket Square",
        "บริษัท ภูเก็ตสแควร์ จำกัด\nให้บริการเกี่ยวกับการค้าปลีก"),
    RealStory("assets/customer/J&T.png", "J&T Express",
        "บริษัท โกลบอล เจท เอ็กซ์เพรส (ไทยแลนด์) จำกัด\nให้บริการเกี่ยวกับการรับส่งวัสดุ พัสดุ วัตถุต่างๆ รวมทั้งให้บริการการเก็บรักษาและระบบติดตามของ"),             
  ];

  @override
  Widget build(BuildContext context) {
    List<Card> cards = [
      Card(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: Responsive.isTablet(context) ? 450 : 343,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.02,
                    ),
                    child: SizedBox(
                        width: 54.71,
                        height: 61.15,
                        child: Image.asset("assets/customer/Nutt.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "คุณณัฏฐ์ ณัฐนิธิการัตน์",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "ประธานเจ้าหน้าที่บริหาร\nAdvice IT Infinite Co.,Ltd.",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 57, 128, 237)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      Responsive.isTablet(context)
                          ? "“เราตระหนักถึงความสำคัญการคุ้มครอง ข้อมูลส่วนบุคคลหนึ่งในรากฐานที่สร้างความสัมพันธ์ทางธุรกิจและสร้างความน่าเชื่อถือที่ลูกค้ามีต่อเรา”"
                          : "“เราตระหนักถึงความสำคัญการคุ้มครองข้อมูลส่วนบุคคล หนึ่งในรากฐานที่สร้างความสัมพันธ์ทางธุรกิจและสร้างความน่าเชื่อถือที่ลูกค้ามีต่อเรา”",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )),
      ),
      Card(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: Responsive.isTablet(context) ? 450 : 343,
            height: Responsive.isTablet(context) ? 400 : 300,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.02,
                    ),
                    child: SizedBox(
                        width: 54.71,
                        height: 61.15,
                        child: Image.asset("assets/customer/Jirayuth.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "คุณจิรายุส ทรัพย์ศรีโสภา",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Founder & Group CEO",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 57, 128, 237)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      Responsive.isTablet(context)
                          ? "BitKub ให้ความสำคัญกับการคุ้มครองข้อมูลส่วนบุคคลของกลุ่มผู้ใช้งานดังนั้นเราจึงให้ความสำคัญอย่างมากเกี่ยวกับ การปฏิบัติตามกฎหมาย PDPAโดยเราเลือกใช้ระบบโมดูลที่มีCenterเข้ามาช่วยในการบริหารจัดการข้อมูลคุ้มครองข้อมูลส่วนบุคคลได้ครอบคลุม "
                          : "BitKub ให้ความสำคัญกับการคุ้มครองข้อมูลส่วนบุคคลของกลุ่มผู้ใช้งานดังนั้นเราจึงให้ความสำคัญอย่างมากเกี่ยวกับการปฏิบัติตามกฎหมาย PDPAโดยเราเลือกใช้ระบบโมดูลที่มีCenterเข้ามาช่วยในการบริหารจัดการข้อมูลคุ้มครองข้อมูลส่วนบุคคลได้ครอบคลุม ",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )),
      ),
      Card(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: Responsive.isTablet(context) ? 450 : 343,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.02,
                    ),
                    child: SizedBox(
                        width: 54.71,
                        height: 61.15,
                        child: Image.asset("assets/customer/Ann.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "ANN LUBIN",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Co-Funder",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 57, 128, 237)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: Responsive.isTablet(context) ? 374 : 350,
                      // height: Responsive.isTablet(context) ? 120 : 165,
                      child: Text(
                        Responsive.isTablet(context)
                            ? "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ ทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมายกำหนด ครอบคลุมทุกภาคธุรกิจ"
                            : "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ ทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมายกำหนดครอบคลุมทุกภาคธุรกิจ",
                        style: GoogleFonts.ibmPlexSansThai(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 35, 34, 51)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
      Card(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: Responsive.isTablet(context) ? 450 : 343,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.02,
                    ),
                    child: SizedBox(
                        width: 54.71,
                        height: 61.15,
                        child: Image.asset("assets/customer/Amorn.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "คุณอมร ทองธิว",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 35, 34, 51)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "กรรมการและรองกรรมการผู้จัดการ",
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 57, 128, 237)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: Responsive.isTablet(context) ? 374 : 350,
                      // height: Responsive.isTablet(context) ? 120 : 165,
                      child: Text(
                        Responsive.isTablet(context)
                            ? "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ ทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมายกำหนด ครอบคลุมทุกภาคธุรกิจ"
                            : "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้นเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ ทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไปตามกรอบที่กฎหมายกำหนดครอบคลุมทุกภาคธุรกิจ",
                        style: GoogleFonts.ibmPlexSansThai(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 35, 34, 51)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    ];

    var screenSize = MediaQuery.of(context).size;

    // }

    return Center(
      child: Container(
        width: 1440,
        color: Colors.white,
        child: Center(
          child: Container(
            // width: Responsive.isDesktop(context)
            //     ? 1440
            //     : Responsive.isTablet(context)
            //         ? 767
            //         : 375,
            margin: EdgeInsets.all(00.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Responsive.isDesktop(context) ? 35 : 48,
                  ),
                  Responsive.isMobile(context)
                      ? Padding(
                          padding: const EdgeInsets.only(right: 120),
                          child: Text('ลูกค้าคนสำคัญของเรา',
                              style: GoogleFonts.ibmPlexSansThai(
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 5, 45, 97),
                                fontSize: 24,
                              )),
                        )
                      : Text(
                          'ลูกค้าคนสำคัญของเรา',
                          style: GoogleFonts.ibmPlexSansThai(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 5, 45, 97),
                            fontSize: Responsive.isDesktop(context) ? 48 : 36,
                          ),
                        ),
                  SizedBox(
                    height: Responsive.isDesktop(context) ? 16 : 27,
                  ),
                  Container(
                    width: Responsive.isDesktop(context)
                        ? 652
                        : Responsive.isTablet(context)
                            ? 652
                            : 329,
                    // height: Responsive.isDesktop(context)
                    //     ? 60
                    //     : Responsive.isTablet(context)
                    //         ? 92
                    //         : 98,
                    child: Text(
                      Responsive.isDesktop(context)
                          ? 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจ\nให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME '
                          : Responsive.isTablet(context)
                              ? 'ด้วยประสบการณ์ Software Solutions ครบวงจร เราได้รับความไว้วางใจให้ดูแลธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน ตลอดจนธุรกิจขนาดเล็ก หรือ SME '
                              : 'ด้วยประสบการณ์ Software Solutions ครบวงจร\nเราได้รับความไว้วางใจให้ดูแล\nธุรกิจทั้งองค์กรภาครัฐ องค์กรเอกชน\nตลอดจนธุรกิจขนาดเล็ก หรือ SME ',
                      style: GoogleFonts.ibmPlexSansThai(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 108, 108, 114),
                        fontSize: Responsive.isDesktop(context)
                            ? 20
                            : Responsive.isTablet(context)
                                ? 20
                                : 16,
                      ),
                      textAlign: Responsive.isDesktop(context)
                          ? TextAlign.center
                          : Responsive.isTablet(context)
                              ? TextAlign.center
                              : TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Responsive.isDesktop(context)
                          ? Container(
                              width: 990,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(60),
                                child: Container(
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 20,
                                              mainAxisSpacing: 20,
                                              childAspectRatio: 1),
                                      itemCount: stories.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          child: new Material(
                                            child: new Container(
                                              width: 298,
                                              height: 300,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.3),
                                                      spreadRadius: 2,
                                                      blurRadius: 2,
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
                                                        const EdgeInsets.only(
                                                            top: 48,
                                                            left: 6,
                                                            right: 6,
                                                            bottom: 12),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        SizedBox(
                                                            width: 150,
                                                            height: 150,
                                                            child: Image.asset(
                                                              '${stories[index].img}',
                                                              // fit: BoxFit.fill,
                                                            )),
                                                       
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ),
                            )
                          : Responsive.isTablet(context)
                              ? Container(
                                  width: 667,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(30),
                                      child: Container(
                                        width: 768,
                                        child: GridView.builder(
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 20,
                                              mainAxisSpacing: 20,
                                            ),
                                            itemCount: stories.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                // decoration: BoxDecoration(
                                                //   borderRadius: BorderRadius.circular(20),
                                                //   color: Color.fromARGB(255, 178, 205, 244),
                                                // ),
                                                child: new Material(
                                                  child: new Container(
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      border: Border.all(
                                                          color:
                                                              Colors.black12),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.3),
                                                          spreadRadius: 1,
                                                          blurRadius: 3,
                                                          offset: Offset(0,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    width: 192,
                                                    height: 193,
                                                    child: Center(
                                                      child: Container(
                                                        margin:
                                                            EdgeInsets.all(15),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              width: 100,
                                                              height: 100,
                                                              child: Image.asset(
                                                                  stories[index]
                                                                      .img),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  color: Colors.transparent,
                                                ),
                                              );
                                            }),
                                      ),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: Container(
                                    width: 368,
                                    child: GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                        ),
                                        itemCount: stories.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            // decoration: BoxDecoration(
                                            //   borderRadius: BorderRadius.circular(20),
                                            //   color: Color.fromARGB(255, 178, 205, 244),
                                            // ),
                                            child: new Material(
                                              child: new Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  border: Border.all(
                                                      color: Colors.black12),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.3),
                                                      spreadRadius: 1,
                                                      blurRadius: 3,
                                                      offset: Offset(0,
                                                          3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                width: 100,
                                                height: 100,
                                                child: Center(
                                                  child: Container(
                                                    // margin: EdgeInsets.all(15),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        SizedBox(
                                                          width: 60,
                                                          height: 60,
                                                          child: Image.asset(
                                                              stories[index]
                                                                  .img),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              color: Colors.transparent,
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                      Responsive.isDesktop(context)
                          ? Padding(
                              padding: const EdgeInsets.only(top: 51),
                              child: Container(
                                height: 650,
                                width: 1440,
                                // color: Colors.green,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 1440,
                                      height: 670,
                                    ),
                                    new Positioned(
                                      top: 20,
                                      left: 100,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 52, 145, 206),
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 100, left: 124.74),
                                              child: Container(
                                                // height: 670,
                                                width: 583.78,
                                                // color: Colors.amber,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 70,
                                                      width: 500,
                                                      // color: Colors.white,
                                                      child: Text(
                                                        "ลูกค้าคนสำคัญของเรา",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 48,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        24,
                                                                        84,
                                                                        110)),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 160,
                                                      width: 519,
                                                      // color: Colors.black,
                                                      child: Text(
                                                        "จากประสบการณ์ของทีมผู้ให้คำปรึกษามามากกว่า 50+ โครงการ ทีมงานผู้เชี่ยวชาญที่พร้อมให้คำปรึกษา วางแผน และวางระบบ ตามกฎหมาย สำหรับองค์กรและธุรกิจต่างๆ  ดูแลอย่างใกล้ชิด ตลอดการใช้งาน ตั้งแต่เริ่มต้นจนเสร็จสิ้นกระบวนการ",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        87,
                                                                        87,
                                                                        87)),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 60,
                                                      width: 519,
                                                      child: Text(
                                                        "พร้อมให้คำปรึกษาแนะนำเพื่อสิ่งที่ดีที่สุดสำหรับธุรกิจคุณ \nปรึกษาเรา #Teamwisework",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromARGB(
                                                              255,
                                                              75,
                                                              195,
                                                              211),
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 68.27,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Wrap(children: [
                                                          SizedBox(
                                                            width: 191.67,
                                                            height: 56.7,
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () => context.go('/contact'),
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        75,
                                                                        195,
                                                                        211),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30.0)),
                                                              ),
                                                              child: Text(
                                                                'รับคำปรึกษา',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 66.45,
                                                          ),
                                                          SizedBox(
                                                            width: 191.67,
                                                            height: 56.7,
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () => context.go('/customers'),
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        231,
                                                                        251,
                                                                        253),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            75,
                                                                            195,
                                                                            211),
                                                                        width:
                                                                            2.0),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30.0)),
                                                              ),
                                                              child: Text(
                                                                'ลูกค้าของเรา',
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    new Positioned(
                                      left: 700,
                                      child: Container(
                                          width: 650,
                                          // color: Colors.pink,
                                          child: Image.asset(
                                              "assets/customer/mobiles.png")),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Responsive.isTablet(context)
                              ? Center(
                                  child: Container(
                                    width: 1440,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          width: 768,

                                          // height: 784,
                                          child: Container(
                                              width: 692,
                                              height: 676,
                                              child: Image.asset(
                                                  "assets/customer/mobiles.png")),
                                        ),
                                        Container(
                                          width: 500,
                                          // color: Colors.amber,
                                          child: Text(
                                            "ลูกค้าคนสำคัญของเรา",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 48,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 24, 84, 110)),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Container(
                                            width: 519,
                                            // color: Colors.amber,
                                            child: Text(
                                              "จากประสบการณ์ของทีมผู้ให้คำปรึกษามามากกว่า 50+ โครงการ ทีมงานผู้เชี่ยวชาญที่พร้อมให้คำปรึกษา วางแผน และวางระบบ ตามกฎหมาย สำหรับองค์กรและธุรกิจต่างๆ  ดูแลอย่างใกล้ชิด ตลอดการใช้งาน ตั้งแต่เริ่มต้นจนเสร็จสิ้นกระบวนการ",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromARGB(
                                                          255, 87, 87, 87)),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Container(
                                            width: 519,
                                            // color: Colors.amber,
                                            child: Text(
                                              "พร้อมให้คำปรึกษาแนะนำเพื่อสิ่งที่ดีที่สุดสำหรับธุรกิจคุณ\nปรึกษาเรา #Teamwisework",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromARGB(
                                                          255, 75, 195, 211)),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Wrap(children: [
                                          SizedBox(
                                            width: 191.67,
                                            height: 56.7,
                                            child: ElevatedButton(
                                              onPressed: () => context.go('/contact'),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 75, 195, 211),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0)),
                                              ),
                                              child: Text(
                                                'รับคำปรึกษา',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 66.45,
                                          ),
                                          SizedBox(
                                            width: 191.67,
                                            height: 56.7,
                                            child: ElevatedButton(
                                              onPressed: () => context.go('/customers'),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 231, 251, 253),
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 75, 195, 211),
                                                        width: 2.0),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0)),
                                              ),
                                              child: Text(
                                                'ลูกค้าของเรา',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ]),
                                        SizedBox(
                                          height: 50,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Container(
                                        width: 327,
                                        height: 318,
                                        child: Image.asset(
                                            "assets/customer/mobiles.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 250,
                                      // color: Colors.amber,
                                      child: Text(
                                        "ลูกค้าคนสำคัญของเรา",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 24, 84, 110)),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 313,
                                        // color: Colors.amber,
                                        child: Text(
                                          "จากประสบการณ์ของทีมผู้ให้คำปรึกษามามาก\nกว่า 50+ โครงการ ทีมงานผู้เชี่ยวชาญที่พร้อม\nให้คำปรึกษา วางแผน และวางระบบ ตามกฎหมาย\nสำหรับองค์กรและธุรกิจต่างๆ  ดูแลอย่างใกล้ชิด\nตลอดการใช้งาน ตั้งแต่เริ่มต้นจนเสร็จสิ้น\nกระบวนการ",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 87, 87, 87)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 313,
                                        // color: Colors.amber,
                                        child: Text(
                                          "พร้อมให้คำปรึกษาแนะนำเพื่อสิ่งที่ดีที่สุดสำหรับ\nธุรกิจคุณปรึกษาเรา #Teamwisework",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 75, 195, 211)),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    SizedBox(
                                      width: 191.67,
                                      height: 48,
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
                                          'รับคำปรึกษา',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 191.67,
                                      height: 48,
                                      child: ElevatedButton(
                                        onPressed: () => context.go('/customers'),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 231, 251, 253),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 75, 195, 211),
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                        ),
                                        child: Text(
                                          'ลูกค้าของเรา',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                  ],
                                ),
                      Responsive.isDesktop(context)
                          ? Stack(
                              children: [
                                // Row(
                                //   children: [CustomerCarousel()],
                                // ),                            
                              ],
                            )
                          : Stack(
                              children: [
                                Container(
                                  width: 1440,
                                  child: Container(
                                    width: Responsive.isTablet(context)
                                        ? 767
                                        : 375,
                                    height: Responsive.isTablet(context)
                                        ? 750
                                        : 660,
                                    color: Color.fromARGB(255, 5, 45, 97),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: Responsive.isTablet(context)
                                              ? 767
                                              : 375,
                                          height: Responsive.isTablet(context)
                                              ? 250
                                              : 120,
                                          // color: Color.fromARGB(255, 190, 208, 232),
                                          child: Stack(
                                            children: [
                                              new Positioned(
                                                  top: Responsive.isTablet(
                                                          context)
                                                      ? 126
                                                      : 50,
                                                  left: Responsive.isTablet(
                                                          context)
                                                      ? 218
                                                      : 77,
                                                  child: Text(
                                                    "Real Stories from\nReal Customers",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: Responsive
                                                                    .isTablet(
                                                                        context)
                                                                ? 36
                                                                : 24,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Colors.white),
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: Responsive.isTablet(context)
                                              ? 450
                                              : 305,
                                          height: 70,
                                          child: Text(
                                            Responsive.isTablet(context)
                                                ? "Why wisework? แบ่งปันประสบการณ์จริงจากลูกค้าคนสำคัญ"
                                                : "Why wisework? \nแบ่งปันประสบการณ์จริงจากลูกค้าคนสำคัญ",
                                            style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                            textAlign:
                                                Responsive.isTablet(context)
                                                    ? TextAlign.center
                                                    : TextAlign.start,
                                          ),
                                        ),
                                        Container(
                                          width: 1440,
                                          child: CarouselSlider(
                                            options: CarouselOptions(
                                              viewportFraction:
                                                  Responsive.isTablet(context)
                                                      ? (350 / 600)
                                                      : 0.76,
                                              height:
                                                  Responsive.isTablet(context)
                                                      ? 380
                                                      : 410,
                                              autoPlay: true,
                                              enlargeCenterPage: true,
                                              onPageChanged: (index, reason) {
                                                setState(() {
                                                  _current = index;
                                                  // print('Current Page: $_current');
                                                });
                                              },
                                            ),
                                            items: cards,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          child: AnimatedSmoothIndicator(
                                              activeIndex: _current,
                                              count: 4,
                                              effect: ScaleEffect(
                                                  activePaintStyle:
                                                      PaintingStyle.stroke,
                                                  scale: 1.4,
                                                  activeStrokeWidth: 1.0,
                                                  dotWidth: 16,
                                                  dotHeight: 16,
                                                  dotColor: Color.fromARGB(
                                                      255, 255, 255, 255))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                new Positioned(
                                  top: Responsive.isTablet(context) ? 25 : 15,
                                  right:
                                      Responsive.isTablet(context) ? 661 : 309,
                                  child: SizedBox(
                                      width: Responsive.isTablet(context)
                                          ? 120
                                          : 86,
                                      height: Responsive.isTablet(context)
                                          ? 101
                                          : 72,
                                      child: Opacity(
                                        opacity: 0.5,
                                        child: Image.asset(
                                            "assets/customer/comma.png"),
                                      )),
                                ),
                              ],
                            ),
                      Responsive.isDesktop(context)
                          ? Container(
                              height: 206,
                              width: 1440,
                              color: Color.fromARGB(255, 5, 45, 97),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      new SizedBox(
                                        height: 206,
                                        width: 1440,
                                      ),
                                      new Positioned(
                                          top: 0,
                                          right: 1350,
                                          child: Container(
                                            height: 205,
                                            width: 205,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    90, 68, 137, 255),
                                                shape: BoxShape.circle),
                                          )),
                                      new Positioned(
                                        top: 33,
                                        left: 316,
                                        child: Container(
                                          height: 80,
                                          width: 539.82,
                                          // color: Colors.pink,
                                          child: Text(
                                            "พร้อมวางแผนธุรกิจให้คุณ!",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 48,
                                                color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      new Positioned(
                                          // top: 99.5,
                                          top: 110.5,
                                          left: 316,
                                          child: Container(
                                            height: 66.5,
                                            width: 539.82,
                                            // color: Colors.red,
                                            child: Text(
                                              "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ ได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white),
                                            ),
                                          )),
                                      new Positioned(
                                        left: 944,
                                        top: 79,
                                        child: SizedBox(
                                          width: 193,
                                          height: 48,
                                          child: ElevatedButton(
                                            onPressed: () => context.go('/contact'),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color.fromARGB(
                                                  255, 75, 195, 211),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)),
                                            ),
                                            child: Text(
                                              'ติดต่อเรา',
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : Responsive.isTablet(context)
                              ? Center(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 1440,
                                        height: 385,
                                        color: Color.fromARGB(255, 5, 45, 97),
                                      ),
                                      new Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                            // width: Responsive.isTablet(context) ? 100 : 200,
                                            // width: 50,
                                            height: 385,
                                            // color: Colors.black,
                                            child: Image.asset(
                                              "/customer/half.png",
                                              fit: BoxFit.fitHeight,
                                            ),
                                          )),
                                      Container(
                                        child: Center(
                                          child: Container(
                                            width: 768,
                                            height: 385,
                                            child: Stack(
                                              children: [
                                                // Container(
                                                //   width: Responsive.isTablet(context) ? 768 : 375,
                                                //   height:
                                                //       Responsive.isTablet(context) ? 385 : 265,
                                                //   color: Color.fromARGB(255, 5, 45, 97),
                                                // ),
                                                new Positioned(
                                                  top: 73,
                                                  left: 77,
                                                  child: Container(
                                                    height: 150,
                                                    width: 627,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          width: 540,
                                                          // height: Responsive.isTablet(context) ? 45 : 40,
                                                          // color: Colors.amber,
                                                          child: Text(
                                                            "พร้อมวางแผนให้ธุรกิจคุณ!",
                                                            style: GoogleFonts.ibmPlexSans(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: Responsive
                                                                        .isTablet(
                                                                            context)
                                                                    ? 36
                                                                    : 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 30),
                                                          child: Text(
                                                            "ให้องค์กรของคุณ วางแผนและจัดการกับ DATA หัวใจสำคัญของธุรกิจ\nได้ถูกต้องตามกฎหมาย ปรึกษาเรา #TeamWiseWork",
                                                            style: GoogleFonts.ibmPlexSansThai(
                                                                fontSize: Responsive
                                                                        .isTablet(
                                                                            context)
                                                                    ? 20
                                                                    : 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .white),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                new Positioned(
                                                  top: 242,
                                                  left: 280,
                                                  child: SizedBox(
                                                    width: 193,
                                                    height: 46,
                                                    child: ElevatedButton(
                                                      onPressed: () => context.go('/contact'),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                75, 195, 211),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0)),
                                                      ),
                                                      child: Text(
                                                        'ติดต่อเรา',
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .white),
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
                                )
                              : Center(
                                  child: Container(
                                    width: 1440,
                                    height: 374,
                                    color: Color.fromARGB(255, 5, 45, 97),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 60),
                                          child: Text(
                                            "พร้อมวางแผนให้ธุรกิจคุณ ปรึกษา",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Text(
                                          "#Teamwisework",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 34),
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
                                          padding:
                                              const EdgeInsets.only(top: 34),
                                          child: SizedBox(
                                            width: 193,
                                            height: 46,
                                            child: ElevatedButton(
                                              onPressed: () => context.go('/contact'),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 75, 195, 211),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0)),
                                              ),
                                              child: Text(
                                                'ติดต่อเรา',
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white),
                                              ),
                                            ),
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
          ),
        ),
      ),
    );
  }
}
