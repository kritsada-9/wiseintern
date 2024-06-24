import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Customerlogo extends StatefulWidget {
  @override
  _CustomerlogoState createState() => _CustomerlogoState();
}

class _CustomerlogoState extends State<Customerlogo> {
  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 1440,
            height: 1040,
            // color: Colors.purple,
            color: Color.fromARGB(255, 250, 251, 252),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: 1000,
                    // enlargeCenterPage: true,
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                        // print('Current Page: $_current');
                      });
                    },
                  ),
                  items: [
                    Container(
                      width: 1400,
                      // color: Colors.amber,
                      child: Container(
                        // width: 1438,

                        margin: EdgeInsets.all(20),

                        color: Color.fromARGB(255, 250, 251, 252),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                      left: 200, top: 240),
                              child: Container(
                                width: 374,
                                height: 565,
                                decoration: BoxDecoration(
                                  color:Colors.white,
                                  borderRadius: BorderRadius.circular(16)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12.57, left: 23.21),
                                      child: SizedBox(
                                          height: 80,
                                          width: 166,
                                          child: Image.asset(
                                              "assets/customer/bitkub.png")),
                                    ),
                                    SizedBox(height: 20,),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 32,),
                                      child: Container(
                                        // height: 300,
                                        width: 286,
                                        // color: Colors.amber,
                                        child: Stack(
                                          children: [
                                            SizedBox(
                                                width: 15.93,
                                                height: 14,
                                                child: Image.asset(
                                                    "assets/customer/comma.png")),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 30),
                                              child: Text(
                                                "BitKub ให้ความสำคัญกับการคุ้มครอง ข้อมูลส่วนบุคคลของกลุ่มผู้ใช้งาน ดังนั้น\nเราจึงให้ความสำคัญอย่างมากเกี่ยวกับ\nการปฏิบัติตามกฎหมาย PDPA\nโดยเราเลือกใช้ระบบโมดูลที่มี Center\nเข้ามาช่วยในการบริหารจัดการข้อมูล\nคุ้มครองข้อมูลส่วนบุคคลได้ครอบคลุม\nเพื่อให้ผู้ใช้บริการมั่นใจว่าข้อมูลของท่านจะได้รับการปกป้องและใช้งานอย่างสบายใจ",
                                                style: GoogleFonts.ibmPlexSansThai(
                                                    fontSize:
                                                        16,
                                                    color: Colors
                                                        .black,
                                                    fontWeight:
                                                        FontWeight
                                                            .w400,
                                                    height:
                                                        2),
                                                        textAlign: TextAlign.start,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 25),
                                      child: Wrap(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(
                                                    left: 39.92,
                                                    top: 16.28),
                                            child: SizedBox(
                                                width: 54.77,
                                                height: 57.16,
                                                child: Image.asset(
                                                    "assets/customer/Jirayuth.png")),
                                          ),
                                          SizedBox(
                                            width: 9.1,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(
                                                    top: 16.28),
                                            child: Container(
                                              // color: Colors.pink,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      "คุณจิรายุส ทรัพย์ศรีโสภา",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize:
                                                                  18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Colors
                                                                  .black),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                  Container(
                                                    // color:Colors.white,
                                                    child: Text(
                                                      "Founder & Group CEO",
                                                      style: GoogleFonts.ibmPlexSansThai(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                          color: Color
                                                              .fromARGB(
                                                                  255,
                                                                  87,
                                                                  87,
                                                                  87)),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                    
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 168, left: 30),
                                      child: Container(
                                        height: 340,
                                        width: 445,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Colors.white
                                            // color: Color.fromARGB(
                                            //     255, 239, 168, 168),
                                            ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 23.57, left: 42.38),
                                              child: SizedBox(
                                                  height: 41.85,
                                                  width: 197.59,
                                                  child: Image.asset(
                                                      "assets/customer/viriya-logo.png")),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 32, top: 38.5),
                                              child: Container(
                                                height: 128,
                                                width: 400,
                                                // color: Colors.amber,
                                                child: Column(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            SizedBox(
                                                                width: 15.93,
                                                                height: 14,
                                                                child: Image.asset(
                                                                    "assets/customer/comma.png")),
                                                            Container(
                                                              height: 128,
                                                              width: 400,
                                                              // color:Colors.amber,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            32),
                                                                    child: Text(
                                                                      "เรามองเห็นภาพกว้างของการทำ PDPA ได้ชัดเจนยิ่งขึ้น\nเมื่อทีม wisework เข้ามาให้คำแนะนำและวางแผนระบบ\nทำให้เรามั่นใจว่าการดำเนินการของขั้นตอนต่างๆ เป็นไป\nตามกรอบที่กฎหมายกำหนด ครอบคลุมทุกภาคธุรกิจ",
                                                                      style: GoogleFonts.ibmPlexSansThai(
                                                                          fontSize:
                                                                              16,
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          height:
                                                                              1.5),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Wrap(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 39.92,
                                                              top: 16.28),
                                                      child: SizedBox(
                                                          width: 54.77,
                                                          height: 57.16,
                                                          child: Image.asset(
                                                              "assets/customer/Amorn.png")),
                                                    ),
                                                    SizedBox(
                                                      width: 9.1,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 16.28),
                                                      child: Container(
                                                        // color: Colors.pink,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              child: Text(
                                                                "คุณอมร ทองธิว",
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .black),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                              ),
                                                            ),
                                                            Container(
                                                              // color:Colors.white,
                                                              child: Text(
                                                                "กรรมการและรองกรรมการผู้จัดการ",
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            87,
                                                                            87,
                                                                            87)),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 32, left: 30),
                                  child: Container(
                                    height: 340,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.white
                                        // color: Color.fromARGB(
                                        //     255, 239, 168, 168),
                                        ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 14, left: 37),
                                          child: SizedBox(
                                              height: 59,
                                              width: 135,
                                              child: Image.asset(
                                                  "assets/customer/advice-logo.png")),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 32, top: 31),
                                          child: Container(
                                            height: 128,
                                            width: 400,
                                            // color: Colors.amber,
                                            child: Column(
                                              children: [
                                                Stack(
                                                  children: [
                                                    SizedBox(
                                                        width: 15.93,
                                                        height: 14,
                                                        child: Image.asset(
                                                            "assets/customer/comma.png")),
                                                    Container(
                                                      height: 128,
                                                      width: 300,
                                                      // color:Colors.amber,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 32),
                                                            child: Text(
                                                              "เราตระหนักถึงความสำคัญการคุ้มครอง\nข้อมูลส่วนบุคคล หนึ่งในรากฐานที่สร้าง\nความสัมพันธ์ทางธุรกิจและสร้างความ\nน่าเชื่อถือที่ลูกค้ามีต่อเรา",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  height: 1.5),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Wrap(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 39.92,
                                                          top: 16.28),
                                                  child: SizedBox(
                                                      width: 54.77,
                                                      height: 57.16,
                                                      child: Image.asset(
                                                          "assets/customer/Nutt.png")),
                                                ),
                                                SizedBox(
                                                  width: 9.1,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16.28),
                                                  child: Container(
                                                    // color: Colors.pink,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                            "คุณณัฎฐ์ ณัฐนิธิการัชต์",
                                                            style: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .black),
                                                            textAlign:
                                                                TextAlign.start,
                                                          ),
                                                        ),
                                                        Container(
                                                          // color:Colors.white,
                                                          child: Text(
                                                            "ประธานเจ้าหน้าที่บริหาร",
                                                            style: GoogleFonts.ibmPlexSansThai(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        87,
                                                                        87,
                                                                        87)),
                                                            textAlign:
                                                                TextAlign.start,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        width: 1400,
                        child: Container(
                          margin: EdgeInsets.all(20),
                          color: Color.fromARGB(255, 250, 251, 252),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 240, left: 100),
                                        child: Container(
                                          width: 495,
                                          height: 286,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color: Colors.white),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8,
                                                    left: 58,
                                                    right: 292),
                                                child: SizedBox(
                                                    width: 145,
                                                    height: 82,
                                                    child: Image.asset(
                                                        "assets/customer/kyocera.png")),
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15, left: 30),
                                                    child: SizedBox(
                                                        width: 16,
                                                        height: 15,
                                                        child: Image.asset(
                                                            "assets/customer/comma.png")),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20, top: 15),
                                                    child: Container(
                                                      width: 410,
                                                      height: 65,
                                                      child: Text(
                                                        "การปฏิบัติตามกฎหมายคุ้มครองข้อมูลส่วนบุคคล พันธกิจสำคัญ\nในการจัดการขั้นพื้นฐานภายใต้หลักการ “ลูกค้าสำคัญที่สุด”",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10, left: 64),
                                                    child: SizedBox(
                                                        width: 57,
                                                        height: 57,
                                                        child: Image.asset(
                                                            "assets/customer/Nikhom.png")),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10, left: 15),
                                                    child: Container(
                                                      width: 232,
                                                      height: 53.07,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            width: 200,
                                                            height: 28,
                                                            child: Text(
                                                              "คุณนิคม ธะนีวรรณ์",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .black),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 230,
                                                            height: 25,
                                                            child: Text(
                                                              "ผู้จัดการฝ่ายเทคโนโลยีสารสนเทศ",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          87,
                                                                          87,
                                                                          87)),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 30),
                                        child: Container(
                                          width: 480,
                                          height: 455,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color: Colors.white),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8,
                                                    left: 58,
                                                    right: 292),
                                                child: SizedBox(
                                                    width: 145,
                                                    height: 82,
                                                    child: Image.asset(
                                                        "assets/customer/brr.png")),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 29, top: 20),
                                                child: Container(
                                                  width: 450,
                                                  height: 230,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                          width: 15,
                                                          height: 15,
                                                          child: Image.asset(
                                                              "assets/customer/comma.png")),
                                                      SizedBox(
                                                        width: 19,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 5),
                                                        child: Text(
                                                          "หลังจากที่ PDPA มีผลประกาศบังคับใช้ รูปแบบการทำงาน\nของเราเปลี่ยนไปอย่างมาก wisework ช่วยเข้ามาทำให้เรา\nหมดกังวลเรื่อง PDPA ไปเลย เราดำเนินการได้ครบทุกขั้นตอน\nและสร้างความเชื่อมั่นทางธุรกิจ ร่วมกับการทำงานด้าน\nความปลอดภัยทางไซเบอร์ ให้แก่ผู้มีส่วนได้ส่วนเสียทุกฝ่าย\nไม่ว่าจะเป็นลูกค้า พนักงาน หน่วยงานตรวจสอบ และนักลงทุน\nในเรื่องการคุ้มครอง ข้อมูลส่วนบุคคล และความเป็นส่วนตัว",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.black,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10, left: 64),
                                                    child: SizedBox(
                                                        width: 57,
                                                        height: 57,
                                                        child: Image.asset(
                                                            "assets/customer/Anan.png")),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10, left: 15),
                                                    child: Container(
                                                      width: 232,
                                                      height: 53.07,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            width: 200,
                                                            height: 28,
                                                            child: Text(
                                                              "คุณอนันต์ ตั้งตรงเวชกิจ",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .black),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 230,
                                                            height: 25,
                                                            child: Text(
                                                              "ประธานเจ้าหน้าที่บริหาร",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          87,
                                                                          87,
                                                                          87)),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 180,
                                    ),
                                    child: Container(
                                      width: 751,
                                      height: 265,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 16, left: 64),
                                            child: SizedBox(
                                                width: 48,
                                                height: 66,
                                                child: Image.asset(
                                                    "assets/customer/tvo.png")),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15, left: 30),
                                                child: SizedBox(
                                                    width: 16,
                                                    height: 15,
                                                    child: Image.asset(
                                                        "assets/customer/comma.png")),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, top: 15),
                                                child: Container(
                                                  width: 660,
                                                  height: 65,
                                                  child: Text(
                                                    "wisework ช่วยตอบโจทย์ทิศทางการดำเนินธุรกิจของเราภายใต้หลักธรรมาภิบาล เรามุ่งมั่นขับเคลื่อน\nการดำเนินงานที่เกี่ยวข้องกับ ESG ทุกมิติ และพร้อมรับมือกับการเปลี่ยนแปลงที่รวดเร็วได้อย่างมั่นใจ",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, left: 64),
                                                child: SizedBox(
                                                    width: 57,
                                                    height: 57,
                                                    child: Image.asset(
                                                        "assets/customer/Pachai.png")),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, left: 15),
                                                child: Container(
                                                  width: 232,
                                                  height: 53.07,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 200,
                                                        height: 28,
                                                        child: Text(
                                                          "คุณพาชัย จันทร์พิทักษ",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .black),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 230,
                                                        height: 25,
                                                        child: Text(
                                                          "ประธานเจ้าหน้าที่บริหาร",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          87,
                                                                          87,
                                                                          87)),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                    Container(
                      width: 1000,
                      color: Color.fromARGB(255, 250, 251, 252),
                    )
                  ],
                ),
              ],
            ),
          ),
          new Positioned(
            top: 940,
            left: 700,
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
                      dotColor: Color.fromARGB(255, 137, 141, 149))),
            ),
          ),
          new Positioned(
            top: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 59,
                    height: 61,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 74, 195, 212))),
                    child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_left,
                          size: 32, color: Color.fromARGB(255, 77, 193, 216)),
                      onPressed: () {
                        _controller.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 1115,
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 59,
                    height: 61,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 74, 195, 212))),
                    child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_right,
                          size: 32, color: Color.fromARGB(255, 77, 193, 216)),
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Positioned(
              top: 64,
              left: 165,
              child: Container(
                height: 500,
                width: 500,
                child: Stack(
                  children: [
                    new Positioned(
                      top: 64,
                      child: SizedBox(
                        height: 120,
                        width: 142,
                        child: Image.asset("assets/customer/comma.png"),
                      ),
                    ),
                    new Positioned(
                      top: 110,
                      left: 100,
                      child: Container(
                        height: 180,
                        width: 400,
                        child: Text(
                          "Real Stories from\nReal Customers",
                          style: GoogleFonts.ibmPlexSansThai(
                              color: Color.fromARGB(255, 24, 84, 110),
                              fontSize: 48,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          new Positioned(
              top: 1.5,
              right: 13,
              child: Container(
                height: 180,
                width: 185,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 175, 206, 241),
                    shape: BoxShape.circle),
              )),
        ],
      ),
    );
  }
}
