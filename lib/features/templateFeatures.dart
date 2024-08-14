import 'package:flutter/material.dart';
import 'package:wiseintern/navbar.dart';
import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:wiseintern/features/pdmanagement.dart';
import 'package:wiseintern/home/features.dart';
import 'package:wiseintern/home/footer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyDetails extends StatefulWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String detail;
  MyDetails(
    this.title,
    this.description,
    this.imageUrl,
    this.detail,
  );

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {
  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<String> carouselPD = [
      "assets/features/pd00.png",
      "assets/features/pd01.png",
      "assets/features/pd02.png",
      "assets/features/pd03.png"
    ];
    List<String> carouselDPIA = [
      "assets/features/DPIA01.png",
      "assets/features/DPIA02.png",
      "assets/features/DPIA03.png",
      "assets/features/DPIA04.png",
      "assets/features/DPIA02-1.png",
    ];
    List<String> carouselDSR = [
      "assets/features/DSR011.png",
      "assets/features/DSR02.png",
      "assets/features/DSR03.png",
      "assets/features/DSR04.png",
      "assets/features/DSR05.png"
    ];
    List<String> carouselDB = [
      "assets/features/DB01.png",
      "assets/features/DB02.png",
      "assets/features/DB03.png",
      "assets/features/DB04.png"
    ];
    List<String> carouselAD = [
      "assets/features/AD01.png",
      "assets/features/AD02.png",
      "assets/features/AD03.png",
      "assets/features/AD04.png"
    ];
    List<String> carouselPAN = [
      "assets/features/PAN01.png",
      "assets/features/PAN02.png"
    ];
    List<String> carouselDD = [
      "assets/features/DD01.png",
      "assets/features/DD021.png",
      "assets/features/DD03.png"
    ];
    List<String> carouselES = [
      "assets/features/ES01.png",
      "assets/features/ES02.png",
      "assets/features/ES03.png",
      "assets/features/ES04.png"
    ];
    List<String> carouselLIA = [
      "assets/features/LIA01.png",
      "assets/features/LIA02.png",
      "assets/features/LIA03.png",
      "assets/features/LIA04.png"
    ];
    List<String> carouselST = [
      "assets/features/ST03.png",
      "assets/features/ST011.png",
      "assets/features/ST02.png",
      "assets/features/ST041.png"
    ];
    List<String> carouselCS = [
      "assets/features/CS01.png",
      "assets/features/CS02.png",
      "assets/features/CS031.png"
    ];

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: Responsive.isDesktop(context) ? 80 : 60,
          automaticallyImplyLeading: !Responsive.isDesktop(context),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 52, 144, 206),
          elevation: 0,
          centerTitle: true,
          title: !Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 100,
                        child: InkWell(
                          hoverColor: Color.fromARGB(255, 52, 144, 206),
                          onTap: () => context.go('/'),
                          child: Image.asset(
                            'assets/logo.png',
                          ),
                        ),
                      ),
                    ],
                  ))
              : NavBar()),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Responsive.isDesktop(context)
                  ? Container(
                      width: 1440,
                      height: 668,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 121, left: 150),
                                child: Container(
                                  width: 553,
                                  // color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "KEY FEATURES",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 0, 112, 240)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "${widget.title}",
                                        style: GoogleFonts.ibmPlexSansThai(
                                            fontSize: 48,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Color.fromARGB(255, 5, 45, 97)),
                                        textAlign: TextAlign.start,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 32),
                                        child: Text(
                                          "${widget.description}",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 63),
                                        child: Text(
                                          "${widget.detail}",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 23, 24, 26)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 64, left: 72),
                                child: SizedBox(
                                    width: 540,
                                    height: 540,
                                    child: Image.asset(
                                        "assets/${widget.imageUrl}")),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : Responsive.isTablet(context)
                      ? Container(
                          width: 1440,
                          color: Colors.white,
                          child: Center(
                            child: Container(
                              width: 768,
                              // height: 502,
                              color: Colors.white,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 23.5, left: 50),
                                        child: Container(
                                          width: 367,
                                          // color: Colors.amber,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "KEY FEATURES",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 0, 112, 240)),
                                                textAlign: TextAlign.start,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8),
                                                child: Text(
                                                  "${widget.title}",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 44,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Color.fromARGB(
                                                              255, 5, 45, 97)),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "${widget.description}",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคล\nตามกฎหมายมาตรา ได้แก่ มาตรา 24 , มาตรา\n26, มาตรา 30,มาตรา 31, มาตรา 32, มาตรา\n36(1), มาตรา 39",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromARGB(
                                                              255, 23, 24, 26)),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 70, left: 20),
                                        child: SizedBox(
                                            width: 275,
                                            height: 270,
                                            child: Image.asset(
                                                "assets/${widget.imageUrl}")),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 1440,
                          color: Colors.white,
                          child: Center(
                              child: Container(
                            width: 375,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 30),
                                  child: Text(
                                    "KEY FEATURES",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 0, 112, 240)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 30),
                                  child: Text(
                                    "${widget.title}",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 5, 45, 97)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 30),
                                  child: Text(
                                    "${widget.description}",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 30, bottom: 30),
                                  child: Text(
                                    "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคล\nตามกฎหมายมาตรา ได้แก่ มาตรา 24 ,\nมาตรา 26, มาตรา 30, มาตรา 31, มาตรา\n32, มาตรา 36(1), มาตรา 39",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Center(
                                    child: SizedBox(
                                        height: 270,
                                        child: Image.asset(
                                          "assets/${widget.imageUrl}",
                                          fit: BoxFit.fitHeight,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          )),
                        ),
              Check(title: widget.title),
              Container(
                width: 1440,
                color: Color.fromARGB(255, 232, 242, 252),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: Responsive.isDesktop(context)
                            ? 1440
                            : Responsive.isTablet(context)
                                ? 768
                                : 375,
                        // height: 937,
                        // color: Colors.purple,
                        color: Color.fromARGB(255, 232, 242, 252),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: Responsive.isDesktop(context)
                                  ? const EdgeInsets.only(top: 96, bottom: 48)
                                  : Responsive.isTablet(context)
                                      ? const EdgeInsets.only(
                                          top: 75, bottom: 38)
                                      : const EdgeInsets.only(
                                          top: 38, bottom: 25),
                              child: Container(
                                // color: Colors.amber,
                                child: CarouselSlider(
                                  carouselController: _controller,
                                  options: CarouselOptions(
                                    viewportFraction: 1.25,
                                    height: Responsive.isDesktop(context)
                                        ? 500
                                        : Responsive.isTablet(context)
                                            ? 380
                                            : 165,
                                    // enlargeCenterPage: true,
                                    autoPlay: true,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current = index;
                                        // print('Current Page: $_current');
                                      });
                                    },
                                  ),
                                  items: widget.title =="PD Management"? carouselPD.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                       : widget.title =="DPIA & Risk Management"?carouselDPIA.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                      :widget.title =="Cookie Consent"? carouselCS.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                       : widget.title =="Consent Management"?carouselCS.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                      :widget.title =="Data Subject Right Management"? carouselDSR.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                       : widget.title =="Data Breach Management"?carouselDB.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                      :widget.title =="Audit&Gap\nManagement"? carouselAD.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                       : widget.title =="Privacy&Notices Management"?carouselPAN.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                      :widget.title =="Data Discover"? carouselDD.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                       : widget.title =="Executive Support System"?carouselES.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                      : widget.title =="Legitimate Interest Assessment"?carouselLIA.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                      :carouselST.map((item) => Container(
                                            child: Center(
                                              child: Image.asset(
                                                item,
                                              ),
                                            ),
                                          ))
                                      .toList()
                                ),
                              ),
                            ),
                            Text(
                              "ตัวอย่างแสดงฟังก์ชันการใช้งาน ${widget.title}",
                              style: GoogleFonts.ibmPlexSansThai(
                                  fontSize:
                                      Responsive.isMobile(context) ? 10 : 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 75, 195, 211)),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: Responsive.isDesktop(context)
                                  ? 93
                                  : Responsive.isTablet(context)
                                      ? 75
                                      : 38,
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        top: Responsive.isDesktop(context)
                            ? 300
                            : Responsive.isTablet(context)
                                ? 215
                                : 127,
                        left: Responsive.isDesktop(context)
                            ? 76
                            : Responsive.isTablet(context)
                                ? 20
                                : 23,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: Responsive.isMobile(context) ? 29 : 60,
                              height: Responsive.isMobile(context) ? 29 : 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 74, 195, 212))),
                              child: IconButton(
                                icon: Icon(Icons.keyboard_arrow_left,
                                    size: Responsive.isMobile(context) ? 9 : 20,
                                    color: Color.fromARGB(255, 77, 193, 216)),
                                onPressed: () {
                                  _controller.previousPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 1164
                                  : Responsive.isTablet(context)
                                      ? 613
                                      : 274,
                            ),
                            Container(
                              width: Responsive.isMobile(context) ? 29 : 60,
                              height: Responsive.isMobile(context) ? 29 : 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 74, 195, 212))),
                              child: IconButton(
                                icon: Icon(Icons.keyboard_arrow_right,
                                    size: Responsive.isMobile(context) ? 9 : 20,
                                    color: Color.fromARGB(255, 77, 193, 216)),
                                onPressed: () {
                                  _controller.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FeaturesPage(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}

class CheckData {
  final String title;
  final List<String> children;
  CheckData({required this.title, required this.children});
}

class Check extends StatefulWidget {
  final String title;
  Check({required this.title});

  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    List<String> checkPD = [
      Responsive.isDesktop(context)
          ? "บันทึกรายการข้อมูลส่วนบุคคล โดยจัดการรายละเอียดของรายการ และสามารถระบุรายละเอียดต่างๆ ได้อย่างครบถ้วนตาม พรบ.คุ้มครองข้อมูลส่วนบุคคล 2562 ตามมาตรา (39)"
          : Responsive.isTablet(context)
              ? "บันทึกรายการข้อมูลส่วนบุคคล โดยจัดการรายละเอียดของรายการ และสามารถระบุ\nรายละเอียดต่างๆ ได้อย่างครบถ้วนตาม พรบ.คุ้มครองข้อมูลส่วนบุคคล 2562 ตามมาตรา (39)"
              : "บันทึกรายการข้อมูลส่วนบุคคล โดยจัดการ\nรายละเอียดของรายการ และสามารถระบุ\nรายละเอียดต่างๆ ได้อย่างครบถ้วนตาม\nพรบ.คุ้มครองข้อมูลส่วนบุคคล 2562\nตามมาตรา (39)",
      Responsive.isDesktop(context)
          ? "บันทึกรายการข้อมูลส่วนบุคคลและรายละเอียดที่เกี่ยวข้องกับบันทึก เช่น แหล่งที่มาของข้อมูลส่วนบุคคล วัตถุประสงค์ของการประมวลผล\nมาตรการรักษาความมั่นปลอดภัย สถานที่จัดเก็บ สัญญาการประมวลผล การอ้างอิงการขอความยินยอมจากเจ้าของข้อมูลส่วนบุคคล"
          : Responsive.isTablet(context)
              ? "บันทึกรายการข้อมูลส่วนบุคคลและรายละเอียดที่เกี่ยวข้องกับบันทึก เช่น แหล่งที่มาของข้อมูล\nส่วนบุคคล วัตถุประสงค์ของการประมวลผล มาตรการรักษาความมั่นปลอดภัย สถานที่จัดเก็บ\nสัญญาการประมวลผล การอ้างอิงการขอความยินยอมจากเจ้าของข้อมูลส่วนบุคคล"
              : "บันทึกรายการข้อมูลส่วนบุคคลและ\nรายละเอียดที่เกี่ยวข้องกับบันทึก เช่น\nแหล่งที่มาของข้อมูลส่วนบุคคล วัตถุ\nประสงค์ของการประมวลผล\nมาตรการรักษาความมั่นปลอดภัย\nสถานที่จัดเก็บ สัญญาการประมวลผล\nการอ้างอิงการขอความยินยอมจาก\nเจ้าของข้อมูลส่วนบุคคล",
      Responsive.isDesktop(context)
          ? "ระบุหน่วยงานที่เกี่ยวข้อง (สามารถแยกแต่ละหน่วยงาน) ในการนําข้อมูลส่วนบุคคลไปใช้ โดยสามารถกําหนดได้ว่าเป็นการ เก็บรวบรวม นําไปใช้ หรือเปิดเผย"
          : Responsive.isTablet(context)
              ? "ระบุหน่วยงานที่เกี่ยวข้อง (สามารถแยกแต่ละหน่วยงาน) ในการนําข้อมูลส่วนบุคคลไปใช้\nโดยสามารถกําหนดได้ว่าเป็นการ เก็บรวบรวม นําไปใช้ หรือเปิดเผย"
              : "ระบุหน่วยงานที่เกี่ยวข้อง (สามารถแยก\nแต่ละหน่วยงาน) ในการนําข้อมูลส่วนบุคคล\nไปใช้โดยสามารถกําหนดได้ว่าเป็นการเก็บ\nรวบรวม นําไปใช้ หรือเปิดเผย",
      Responsive.isDesktop(context)
          ? "กําหนดฐานกฎหมาย (Lawful Basis) ที่ใช้ประมวลผลข้อมูลส่วนบุคคล และเหตุปฏิเสธคําขอหรือการคัดค้านคําขอที่ใช้ ในแต่ละรายการข้อมูลส่วนบุคคล"
          : Responsive.isTablet(context)
              ? "กําหนดฐานกฎหมาย (Lawful Basis) ที่ใช้ประมวลผลข้อมูลส่วนบุคคล และเหตุปฏิเสธคําขอ\nหรือการคัดค้านคําขอที่ใช้ ในแต่ละรายการข้อมูลส่วนบุคคล"
              : "กําหนดฐานกฎหมาย (Lawful Basis)\nที่ใช้ประมวลผลข้อมูลส่วนบุคคล และเหตุ\nปฏิเสธคําขอหรือการคัดค้านคําขอที่ใช้\nในแต่ละรายการข้อมูลส่วนบุคคล",
      Responsive.isDesktop(context)
          ? "กําหนดสัญญาการประมวลผลข้อมูลส่วนบุคคล สําหรับรายการข้อมูลส่วนบุคคลที่มีการส่งออกไปยังผู้ประมวลผลข้อมูล"
          : Responsive.isTablet(context)
              ? "กําหนดสัญญาการประมวลผลข้อมูลส่วนบุคคล สําหรับรายการข้อมูลส่วนบุคคลที่มีการ\nส่งออกไปยังผู้ประมวลผลข้อมูล"
              : "กําหนดสัญญาการประมวลผลข้อมูลส่วน\nบุคคล สําหรับรายการข้อมูลส่วนบุคคลที่มี\nการส่งออกไปยังผู้ประมวลผลข้อมูล",
      Responsive.isDesktop(context)
          ? "กําหนดผู้ควบคุมข้อมูลส่วนบุคคล เพื่อระบุ และเจาะจงผู้ดูแลข้อมูลในแต่ละบันทึกรายการได้"
          : Responsive.isTablet(context)
              ? "กําหนดผู้ควบคุมข้อมูลส่วนบุคคล เพื่อระบุ และเจาะจงผู้ดูแลข้อมูลในแต่ละบันทึกรายการได้"
              : "กําหนดผู้ควบคุมข้อมูลส่วนบุคคล เพื่อระบุ\nและเจาะจงผู้ดูแลข้อมูลในแต่ละบันทึก\nรายการได้",
      Responsive.isDesktop(context)
          ? "สุ่มตรวจสอบข้อมูลส่วนบุคคลในฐานข้อมูล อาจเป็นข้อมูลส่วนบุคคล โดยกําหนดเป็นเปอร์เซ็นต์ที่ต้องการ และระบบสามารถคาดการณ์ออกมาเป็นเปอร์เซ็นต์ได้"
          : Responsive.isTablet(context)
              ? "สุ่มตรวจสอบข้อมูลส่วนบุคคลในฐานข้อมูล อาจเป็นข้อมูลส่วนบุคคล โดยกําหนดเป็นเปอร์เซ็นต์ที่ต้องการ\nและระบบสามารถคาดการณ์ออกมาเป็นเปอร์เซ็นต์ได้"
              : "สุ่มตรวจสอบข้อมูลส่วนบุคคลในฐานข้อมูล\nอาจเป็นข้อมูลส่วนบุคคล โดยกําหนดเป็น\nเปอร์เซ็นต์ที่ต้องการ และระบบสามารถ\nคาดการณ์ออกมาเป็นเปอร์เซ็นต์ได้",
      Responsive.isDesktop(context)
          ? "รองรับการทำงานของ DPO ที่สามารถมองเห็นภาพรวมและสอบทานกลับได้เมื่อต้องการทราบข้อมูล"
          : Responsive.isTablet(context)
              ? "รองรับการทำงานของ DPO ที่สามารถมองเห็นภาพรวมและสอบทานกลับได้เมื่อต้องการทราบข้อมูล"
              : "รองรับการทำงานของ DPO ที่สามารถ\nมองเห็นภาพรวมและสอบทานกลับได้",
      Responsive.isDesktop(context)
          ? "จัดทำผังการไหลของข้อมูลและแสดงผลความเชื่อมโยง (Data Flow) ถึงหน่วยงานที่ รับ-ส่งข้อมูลส่วนบุคคล เป็นลําดับ ก่อน-หลัง โดยระบบจะเชื่อมโยงข้อมูลที่มีอยู่ให้อย่างอัตโนมัติ"
          : Responsive.isTablet(context)
              ? "จัดทำผังการไหลของข้อมูลและแสดงผลความเชื่อมโยง (Data Flow) ถึงหน่วยงานที่ รับ-ส่ง\nข้อมูลส่วนบุคคล เป็นลําดับ ก่อน-หลัง โดยระบบจะเชื่อมโยงข้อมูลที่มีอยู่ให้อย่างอัตโนมัติ"
              : "จัดทำผังการไหลของข้อมูลและแสดงผล\nความเชื่อมโยง (Data Flow) ถึงหน่วยงานที่\nรับ-ส่งข้อมูลส่วนบุคคล เป็นลําดับ ก่อน-หลัง\nโดยระบบจะเชื่อมโยงข้อมูลที่มีอยู่ให้อย่าง\nอัตโนมัติ",
      Responsive.isDesktop(context)
          ? "แสดงรายงานสรุปบันทึกรายการข้อมูลส่วนบุคคลเป็นแผนภาพ (Dashboard) โดยสามารถรองรับการจัดเรียง (Sort), ค้นหา (Search) และ กรอง (Filter) ได้"
          : Responsive.isTablet(context)
              ? "แสดงรายงานสรุปบันทึกรายการข้อมูลส่วนบุคคลเป็นแผนภาพ (Dashboard) โดยสามารถรองรับการจัดเรียง\n(Sort), ค้นหา (Search) และ กรอง (Filter) ได้"
              : "แสดงรายงานสรุปบันทึกรายการข้อมูลส่วน\nบุคคลเป็นแผนภาพ (Dashboard)\nโดยสามารถรองรับ การจัดเรียง (Sort),\nค้นหา (Search) และ กรอง (Filter) ได้",
      Responsive.isDesktop(context)
          ? "เชื่อมต่อกับระบบอื่นๆ ได้ ผ่าน REST API และนําข้อมูลออกมาในรูปแบบ Excel file "
          : Responsive.isTablet(context)
              ? "เชื่อมต่อกับระบบอื่นๆ ได้ ผ่าน REST API และนําข้อมูลออกมาในรูปแบบ Excel file "
              : "เชื่อมต่อกับระบบอื่นๆ ได้ ผ่าน REST API\nและนําข้อมูลออกมาในรูปแบบ Excel file ",
      Responsive.isDesktop(context)
          ? "รองรับการเชื่อมต่อกับ MS SQL หรือ MySQL เพื่อสุ่มตรวจสอบข้อมูลในฐานข้อมูลส่วนบุคคล โดยรองรับข้อมูลเริ่มต้นที่ 10-500 GB ตามขนาดของข้อมูล"
          : Responsive.isTablet(context)
              ? "รองรับการเชื่อมต่อกับ MS SQL หรือ MySQL เพื่อสุ่มตรวจสอบข้อมูลในฐานข้อมูลส่วนบุคคล\nโดยรองรับข้อมูลเริ่มต้นที่ 10-500 GB ตามขนาดของข้อมูล"
              : "รองรับการเชื่อมต่อกับ MS SQL หรือ MySQL\nเพื่อสุ่มตรวจสอบข้อมูลในฐานข้อมูล\nส่วนบุคคล โดยรองรับข้อมูลเริ่มต้นที่ 10-\n500 GB ตามขนาดของข้อมูล"
    ];
    List<String> checkDpia = [
      Responsive.isDesktop(context)
          ? "กําหนดรอบการประเมินความเสี่ยง โดยกําหนดระยะเวลาในการประเมิน หัวข้อหรือบันทึกรายการข้อมูลส่วนบุคคลเข้าสู่รอบการประเมินได้ พร้อมนําข้อมูลรายละเอียดของ\nรอบการประเมินความเสี่ยงออกมาในรูปแบบไฟล์ Excel หรือ CSV ได้"
          : Responsive.isTablet(context)
              ? "กําหนดรอบการประเมินความเสี่ยง โดยกําหนดระยะเวลาในการประเมิน หัวข้อหรือบันทึกรายการ\nข้อมูลส่วนบุคคลเข้าสู่รอบการประเมินได้ พร้อมนําข้อมูลรายละเอียดของ รอบการประเมิน\nความเสี่ยงออกมาในรูปแบบไฟล์ Excel หรือ CSV ได้"
              : "กําหนดรอบการประเมินความเสี่ยง\nโดยกําหนดระยะเวลาในการประเมิน\nหัวข้อหรือบันทึกรายการข้อมูลส่วนบุคคล\nเข้าสู่รอบการประเมินได้ พร้อมนําข้อมูล\nรายละเอียดของ รอบการประเมินความเสี่ยง\nออกมาในรูปแบบไฟล์ Excel หรือ CSV ได้",
      Responsive.isDesktop(context)
          ? "กําหนดเกณฑ์การประเมินความเสี่ยงในแต่ละรอบประเมินความเสี่ยง ระบุความเสี่ยงสืบเนื่องและความเสี่ยงคงเหลือ และกําหนดระดับการยอมรับความเสี่ยงได้\nโดยแยกเป็นระดับได้ไม่น้อยกว่า 2 ระดับ ตัวอย่างเช่น ระดับควบคุมความเสี่ยง, ระดับยอมรับความเสี่ยง"
          : Responsive.isTablet(context)
              ? "กําหนดเกณฑ์การประเมินความเสี่ยงในแต่ละรอบประเมินความเสี่ยง ระบุความเสี่ยงสืบเนื่อง\nและความเสี่ยงคงเหลือ และกําหนดระดับการยอมรับความเสี่ยงได้ โดยแยกเป็นระดับได้\nไม่น้อยกว่า 2 ระดับ ตัวอย่างเช่น ระดับควบคุมความเสี่ยง, ระดับยอมรับความเสี่ยง"
              : "กําหนดเกณฑ์การประเมินความเสี่ยงใน\nแต่ละรอบประเมินความเสี่ยง ระบุความเสี่ยง\nสืบเนื่อง และความเสี่ยงคงเหลือ และกําหนด\nระดับการยอมรับความเสี่ยงได้ โดยแยกเป็น\nระดับได้ไม่น้อยกว่า 2 ระดับ ตัวอย่างเช่น\nระดับควบคุมความเสี่ยง, ระดับยอมรับความเสี่ยง",
      Responsive.isDesktop(context)
          ? "กําหนดเกณฑ์และรายละเอียดเกณฑ์ในการประเมินผลกระทบข้อมูลส่วนบุคคล"
          : Responsive.isTablet(context)
              ? "กําหนดเกณฑ์และรายละเอียดเกณฑ์ในการประเมินผลกระทบข้อมูลส่วนบุคคล"
              : "กําหนดเกณฑ์และรายละเอียดเกณฑ์ใน\nการประเมินผลกระทบข้อมูลส่วนบุคคล",
      Responsive.isDesktop(context)
          ? "กําหนดแผนการจัดการความเสี่ยงข้อมูลส่วนบุคคล โดยมาตรการการควบคุมอ้างอิงตามมาตรฐาน ISO/IEC27001, ISO/IEC 27701"
          : Responsive.isTablet(context)
              ? "กําหนดแผนการจัดการความเสี่ยงข้อมูลส่วนบุคคล โดยมาตรการการควบคุมอ้างอิงตาม\nมาตรฐาน ISO/IEC27001, ISO/IEC 27701"
              : "กําหนดแผนการจัดการความเสี่ยงข้อมูล\nส่วนบุคคล โดยมาตรการการควบคุม\nอ้างอิงตามมาตรฐาน ISO/IEC27001,\nISO/IEC 27701",
      Responsive.isDesktop(context)
          ? "กําหนดระดับผลกระทบและโอกาสเกิดขึ้นได้ในแต่ละรอบประเมินความเสี่ยง"
          : Responsive.isTablet(context)
              ? "กําหนดระดับผลกระทบและโอกาสเกิดขึ้นได้ในแต่ละรอบประเมินความเสี่ยง"
              : "กําหนดระดับผลกระทบและโอกาสเกิดขึ้นได้\nในแต่ละรอบประเมินความเสี่ยง",
      Responsive.isDesktop(context)
          ? "สร้างแบบประเมินการใช้ฐานกฎหมาย เพื่อประโยชน์โดยชอบด้วยกฎหมายตามมาตรา 24(5) เช่น วัตถุประสงค์ ความจําเป็น ผลกระทบต่อเจ้าของข้อมูลส่วนบุคคล"
          : Responsive.isTablet(context)
              ? "สร้างแบบประเมินการใช้ฐานกฎหมาย เพื่อประโยชน์โดยชอบด้วยกฎหมายตามมาตรา 24(5)\nเช่น วัตถุประสงค์ ความจําเป็น ผลกระทบต่อเจ้าของข้อมูลส่วนบุคคล"
              : "สร้างแบบประเมินการใช้ฐานกฎหมาย เพื่อ\nประโยชน์โดยชอบด้วยกฎหมายตามมาตรา\n24(5) เช่น วัตถุประสงค์ ความจําเป็น\nผลกระทบต่อเจ้าของข้อมูลส่วนบุคคล",
      Responsive.isDesktop(context)
          ? "แสดงแผนภาพรายงานสรุปการประเมินความเสี่ยง โดยแสดงให้เห็นถึงระดับความเสี่ยง รายละเอียดความเสี่ยง แยกเป็นประเภทความสืบเนื่องและความเสี่ยงคงเหลือที่ได้ประเมินไว้\nและสามารถรองรับการจัดเรียง (Sort) ค้นหา (Search) และ กรอง (Filter) ได้"
          : Responsive.isTablet(context)
              ? "แสดงแผนภาพรายงานสรุปการประเมินความเสี่ยง โดยแสดงให้เห็นถึงระดับความเสี่ยง\nรายละเอียดความเสี่ยง แยกเป็นประเภทความสืบเนื่องและความเสี่ยงคงเหลือที่ได้ประเมินไว้\nและสามารถรองรับการจัดเรียง (Sort) ค้นหา (Search) และ กรอง (Filter) ได้"
              : "แสดงแผนภาพรายงานสรุปการประเมินควา\nมเสี่ยง โดยแสดงให้เห็นถึงระดับความเสี่ยง\nรายละเอียดความเสี่ยง แยกเป็นประเภท\nความสืบเนื่องและความเสี่ยงคงเหลือที่ได้\nประเมินไว้ และสามารถรองรับการจัดเรียง (Sort) ค้นหา (Search) และ กรอง (Filter)\nได้",
      Responsive.isDesktop(context)
          ? "ระบุความคืบหน้าเปอร์เซ็น (%) ความสำเร็จการดําเนินการตามแผนการจัดการความเสี่ยงเป็นเปอร์เซ็นต์ความคืบหน้า"
          : Responsive.isTablet(context)
              ? "ระบุความคืบหน้าเปอร์เซ็น (%) ความสำเร็จการดําเนินการตามแผนการจัดการความเสี่ยง\nเป็นเปอร์เซ็นต์ความคืบหน้า"
              : "ระบุความคืบหน้าเปอร์เซ็น (%) ความสำเร็จ\nการดําเนินการตามแผนการจัดการความ\nเสี่ยงเป็นเปอร์เซ็นต์ความคืบหน้า",
    ];
    List<String> checkCookie = [
      Responsive.isDesktop(context)
          ? "สร้างแบบฟอร์มการขอความยินยอม (Consent) แบบอิเล็กทรอนิกส์ E-Form เพื่อขอความยินยอมจากเจ้าของข้อมูลส่วนบุคคล โดยสามารถสร้างเป็น QR Code และ URL\nสำหรับเข้าใช้งานแบบฟอร์ม ผ่านโทรศัพท์มือถือ หรืออุปกรณ์เคลื่อนที่ต่างๆ โดยไม่จํากัดจํานวน"
          : Responsive.isTablet(context)
              ? "สร้างแบบฟอร์มการขอความยินยอม (Consent) แบบอิเล็กทรอนิกส์ E-Form\nเพื่อขอความยินยอมจากเจ้าของข้อมูลส่วนบุคคล โดยสามารถสร้างเป็น QR Code และ URL\nสำหรับเข้าใช้งานแบบฟอร์ม ผ่านโทรศัพท์มือถือ หรืออุปกรณ์เคลื่อนที่ต่างๆ โดยไม่จํากัดจํานวน"
              : "สร้างแบบฟอร์มการขอความยินยอม\n(Consent) แบบอิเล็กทรอนิกส์ E-Form\nเพื่อขอความยินยอมจากเจ้าของข้อมูลส่วน\nบุคคล โดยสามารถสร้างเป็น QR Code และ\nURL สำหรับเข้าใช้งานแบบฟอร์ม ผ่าน\nโทรศัพท์มือถือ หรืออุปกรณ์เคลื่อนที่ต่างๆ\nโดยไม่จํากัดจํานวน",
      Responsive.isDesktop(context)
          ? "บริหารจัดการ Version การให้ Consent แก้ไขแบบฟอร์มอิเล็กทรอนิกส์ได้บนระบบทั้งหมด"
          : Responsive.isTablet(context)
              ? "บริหารจัดการ Version การให้ Consent แก้ไขแบบฟอร์มอิเล็กทรอนิกส์ได้บนระบบทั้งหมด"
              : "บริหารจัดการ Version การให้ Consent\nแก้ไขแบบฟอร์มอิเล็กทรอนิกส์ได้บนระบบ\nทั้งหมด",
      Responsive.isDesktop(context)
          ? "จัดการ Cookies บนหน้าเว็บไซต์ ปรับแต่งค่า แสดงผล และบันทึกการใช้ Cookies ทั้งหมดได้จากระบบศูนย์กลาง"
          : Responsive.isTablet(context)
              ? "จัดการ Cookies บนหน้าเว็บไซต์ ปรับแต่งค่า แสดงผล และบันทึกการใช้ Cookies\nทั้งหมดได้จากระบบศูนย์กลาง"
              : "จัดการ Cookies บนหน้าเว็บไซต์ ปรับแต่ง\nค่า แสดงผล และบันทึกการใช้ Cookies\nทั้งหมดได้จากระบบศูนย์กลาง",
      Responsive.isDesktop(context)
          ? "บริหารจัดการกับข้อมูลการให้ความยินยอมจากเจ้าของข้อมูลส่วนบุคคล ได้ถูกต้องรวดเร็ว เช่น สืบค้น เปลี่ยนแปลง ยกเลิก"
          : Responsive.isTablet(context)
              ? "บริหารจัดการกับข้อมูลการให้ความยินยอมจากเจ้าของข้อมูลส่วนบุคคล ได้ถูกต้องรวดเร็ว เช่น\nสืบค้น เปลี่ยนแปลง ยกเลิก"
              : "บริหารจัดการกับข้อมูลการให้ความยินยอม\nจากเจ้าของข้อมูลส่วนบุคคล ได้ถูกต้องรวดเร็ว\nเช่น สืบค้น เปลี่ยนแปลง ยกเลิก",
      Responsive.isDesktop(context)
          ? "เจ้าของข้อมูลสามารถยืนยันตัวตนได้หลายช่องทาง ผ่านอีเมล์ ข้อความ (SMS-OTP) และลายเซ็น"
          : Responsive.isTablet(context)
              ? "เจ้าของข้อมูลสามารถยืนยันตัวตนได้หลายช่องทาง ผ่านอีเมล์ ข้อความ (SMS-OTP)และลายเซ็น"
              : "เจ้าของข้อมูลสามารถยืนยันตัวตนได้หลาย\nช่องทาง ผ่านอีเมล์ ข้อความ (SMS-OTP)\nและลายเซ็น",
      Responsive.isDesktop(context)
          ? "สร้าง Source Code การขอความยินยอม และนำไปใช้กับเว็บไซต์ที่รองรับ JavaScript เพื่อขอความยินยอมใช้ข้อมูล Cookies บนเว็บไซต์"
          : Responsive.isTablet(context)
              ? "สร้าง Source Code การขอความยินยอม และนำไปใช้กับเว็บไซต์ที่รองรับ JavaScript\nเพื่อขอความยินยอมใช้ข้อมูล Cookies บนเว็บไซต์"
              : "สร้าง Source Code การขอความยินยอม\nและนำไปใช้กับเว็บไซต์ที่รองรับ JavaScript\nเพื่อขอความยินยอมใช้ข้อมูล Cookies\nบนเว็บไซต์",
      Responsive.isDesktop(context)
          ? "สร้าง Source Code การประกาศนโยบายและประกาศความเป็นส่วนตัว สำหรับนําไปประกาศใช้บนเว็บไซต์"
          : Responsive.isTablet(context)
              ? "สร้าง Source Code การประกาศนโยบายและประกาศความเป็นส่วนตัว สำหรับนําไปประกาศใช้บนเว็บไซต์"
              : "สร้าง Source Code การประกาศนโยบาย\nและประกาศความเป็นส่วนตัว สำหรับนําไป\nประกาศใช้บนเว็บไซต์",
      Responsive.isDesktop(context)
          ? "ระบบครอบคลุมกรณีการบริหารจัดการการขอความยินยอมจากผู้เยาว์ และผู้ไร้ความสามารถ"
          : Responsive.isTablet(context)
              ? "ระบบครอบคลุมกรณีการบริหารจัดการการขอความยินยอมจากผู้เยาว์ และผู้ไร้ความสามารถ"
              : "ระบบครอบคลุมกรณีการบริหารจัดการ\nการขอความยินยอมจากผู้เยาว์ และผู้ไร้\nความสามารถ",
      Responsive.isDesktop(context)
          ? "แสดงรายงานสรุปบันทึกการขอความยินยอมในลักษณะแผนภาพ (Dashboard)"
          : Responsive.isTablet(context)
              ? "แสดงรายงานสรุปบันทึกการขอความยินยอมในลักษณะแผนภาพ (Dashboard)"
              : "แสดงรายงานสรุปบันทึกการขอความยิน\nยอมในลักษณะแผนภาพ (Dashboard)",
      Responsive.isDesktop(context)
          ? "ศูนย์กลางรายการความยินยอม รวบรวมและบริหารจัดการจากส่วนกลาง โดยรองรับการจัดเรียง (sort) ค้นหา (search) และ กรอง (filter) รายการคําร้องขอใช้สิทธิ์\nเพื่อสำหรับนำออกไปใช้ในงานที่เกี่ยวข้อง"
          : Responsive.isTablet(context)
              ? "ศูนย์กลางรายการความยินยอม รวบรวมและบริหารจัดการจากส่วนกลาง โดยรองรับ\nการจัดเรียง (sort) ค้นหา (search) และ กรอง (filter) รายการคําร้องขอใช้สิทธิ์ เพื่อสำหรับ\nนำออกไปใช้ในงานที่เกี่ยวข้อง"
              : "ศูนย์กลางรายการความยินยอม รวบรวม\nและบริหารจัดการจากส่วนกลาง โดยรองรับ\nการจัดเรียง (sort) ค้นหา (search) และ\nกรอง (filter) รายการคําร้องขอใช้สิทธิ์\nเพื่อสำหรับนำออกไปใช้ในงานที่เกี่ยวข้อง",
      Responsive.isDesktop(context)
          ? "เชื่อมต่อการให้ความยินยอมกับระบบอื่นๆ ผ่าน REST API และนําข้อมูลออกมาเป็น Excel file"
          : Responsive.isTablet(context)
              ? "เชื่อมต่อการให้ความยินยอมกับระบบอื่นๆ ผ่าน REST API และนําข้อมูลออกมาเป็น Excel file"
              : "เชื่อมต่อการให้ความยินยอมกับระบบอื่นๆ\nผ่าน REST API และนําข้อมูลออกมาเป็น\nExcel file",
      Responsive.isDesktop(context)
          ? "สะดวกในการเชื่อมต่อระบบที่เกี่ยวข้อง โดยการรวบรวมการขอความยินยอมผ่านทาง API"
          : Responsive.isTablet(context)
              ? "สะดวกในการเชื่อมต่อระบบที่เกี่ยวข้อง โดยการรวบรวมการขอความยินยอมผ่านทาง API"
              : "สะดวกในการเชื่อมต่อระบบที่เกี่ยวข้อง\nโดยการรวบรวมการขอความยินยอมผ่าน\nทาง API",
    ];
    List<String> checkData = [
      Responsive.isDesktop(context)
          ? "จัดการคำร้องขออย่างเป็นระบบ โดยสร้าง Work Flow การดำเนินการเพื่อจัดการสิทธิ์ตามกฎหมายจากเจ้าของข้อมูลส่วนบุคคล โดยแจ้งเตือนขั้นตอนการดำเนินการคำร้องขอ\nผ่านอีเมล"
          : Responsive.isTablet(context)
              ? "จัดการคำร้องขออย่างเป็นระบบ โดยสร้าง Work Flow การดำเนินการเพื่อจัดการสิทธิ์\nตามกฎหมายจากเจ้าของข้อมูลส่วนบุคคล โดยแจ้งเตือนขั้นตอนการดำเนินการคำร้องขอ\nผ่านอีเมล"
              : "จัดการคำร้องขออย่างเป็นระบบ โดยสร้าง\nWork Flow การดำเนินการเพื่อจัดการสิทธิ์\nตามกฎหมายจากเจ้าของข้อมูลส่วนบุคคล\nโดยแจ้งเตือนขั้นตอนการดำเนินการคำร้อง\nขอ ผ่านอีเมล",
      Responsive.isDesktop(context)
          ? "สร้างแบบฟอร์มการยื่นขอแก้ไขการยินยอมสิทธิ์ โดยแสดงผ่านช่องทาง Website ในรูปแบบ URL และ QR code เพื่อให้เจ้าของข้อมูลส่วนบุคคลเข้าถึงแบบฟอร์ม โดยแบบฟอร์ม\nสามารถจัดการสิทธิของเจ้าของข้อมูลส่วนบุคคล ดังนี้"
          : Responsive.isTablet(context)
              ? "สร้างแบบฟอร์มการยื่นขอแก้ไขการยินยอมสิทธิ์ โดยแสดงผ่านช่องทาง Website ในรูปแบบ\nURL และ QR code เพื่อให้เจ้าของข้อมูลส่วนบุคคลเข้าถึงแบบฟอร์ม โดยแบบฟอร์ม\nสามารถจัดการสิทธิของเจ้าของข้อมูลส่วนบุคคล ดังนี้"
              : "สร้างแบบฟอร์มการยื่นขอแก้ไขการยินยอม\nสิทธิ์ โดยแสดงผ่านช่องทาง Website\nในรูปแบบ URL และ QR code เพื่อให้\nเจ้าของข้อมูลส่วนบุคคลเข้าถึงแบบฟอร์ม\nโดยแบบฟอร์ม สามารถจัดการสิทธิของ\nเจ้าของข้อมูลส่วนบุคคล ดังนี้",
      Responsive.isDesktop(context)
          ? "กําหนดกระบวนการการยื่นขอใช้สิทธิของเจ้าของข้อมูลส่วนบุคคล ทั้งการตรวจความสมบูรณ์ของคําร้อง, การพิจารณาคําร้อง,การดําเนินการคําร้อง และสรุปผลดําเนินการคําร้อง"
          : Responsive.isTablet(context)
              ? "กําหนดกระบวนการการยื่นขอใช้สิทธิของเจ้าของข้อมูลส่วนบุคคล ทั้งการตรวจความสมบูรณ์\nของคําร้อง, การพิจารณาคําร้อง,การดําเนินการคําร้อง และสรุปผลดําเนินการคําร้อง"
              : "กําหนดกระบวนการการยื่นขอใช้สิทธิของ\nเจ้าของข้อมูลส่วนบุคคล ทั้งการตรวจความ\nสมบูรณ์ของคําร้อง, การพิจารณาคําร้อง,\nการดําเนินการคําร้อง และสรุปผลดําเนินการคําร้อง",
      Responsive.isDesktop(context)
          ? "กำหนดเกณฑ์การตัดสินใจในการรับคำร้องขอ หรือปฏิเสธคำร้องขอใช้สิทธิ์"
          : Responsive.isTablet(context)
              ? "กำหนดเกณฑ์การตัดสินใจในการรับคำร้องขอ หรือปฏิเสธคำร้องขอใช้สิทธิ์"
              : "กำหนดเกณฑ์การตัดสินใจในการรับ\nคำร้องขอ หรือปฏิเสธคำร้องขอใช้สิทธิ์",
      Responsive.isDesktop(context)
          ? "จัดเก็บและแสดงประวัติคําร้องขอตามประเภทการร้องขอของเจ้าของข้อมูลส่วนบุคคล"
          : Responsive.isTablet(context)
              ? "จัดเก็บและแสดงประวัติคําร้องขอตามประเภทการร้องขอของเจ้าของข้อมูลส่วนบุคคล"
              : "จัดเก็บและแสดงประวัติคําร้องขอตาม\nประเภทการร้องขอของเจ้าของข้อมูล\nส่วนบุคคล",
      Responsive.isDesktop(context)
          ? "แสดงรายงานสรุปคําร้องขอใช้สิทธิ์ตามกฎหมายในลักษณะแผนภาพ (Dashboard) โดยสามารถรองรับการจัดเรียง (Sort) ค้นหา (Search) และ กรอง (Filter) คําร้องขอโดยแบ่งเป็น\nประเภท คือ การขอเพิกถอน, การขอเข้าถึงการขอแก้ไข, การขอลบ, การขอระงับ, การขอให้โอนย้าย, การขอคัดค้าน"
          : Responsive.isTablet(context)
              ? "แสดงรายงานสรุปคําร้องขอใช้สิทธิ์ตามกฎหมายในลักษณะแผนภาพ (Dashboard)\nโดยสามารถรองรับการจัดเรียง (Sort) ค้นหา (Search) และ กรอง (Filter) คําร้องขอโดยแบ่งเป็น\nประเภท คือ การขอเพิกถอน, การขอเข้าถึงการขอแก้ไข, การขอลบ, การขอระงับ, การขอให้โอนย้าย,\nการขอคัดค้าน"
              : "แสดงรายงานสรุปคําร้องขอใช้สิทธิ์ตาม\nกฎหมายในลักษณะแผนภาพ (Dashboard)\nโดยสามารถรองรับการจัดเรียง (Sort)\nค้นหา (Search) และ กรอง (Filter)\nคําร้องขอโดยแบ่งเป็น ประเภท คือ\n การขอเพิกถอน, การขอเข้าถึงการขอแก้ไข,\nการขอลบ, การขอระงับ, การขอให้โอนย้าย,\nการขอคัดค้าน",
      Responsive.isDesktop(context)
          ? "ติดตามสถานะและแจ้งความคืบหน้าการดำเนินการคำขอใช้สิทธิ์ตามกฎหมาย แสดงรายงานสรุปการขอใช้สิทธิตามกฎหมายจากเจ้าของข้อมูลส่วนบุคคล โดยแบ่งแยกตาม\nจํานวนคําร้อง ประเภทคําร้อง วันที่ยื่นคําร้อง สถานะคําร้อง และระยะเวลาคําร้อง เพื่อง่ายต่อการค้นหาและประมวลผลข้อมูล"
          : Responsive.isTablet(context)
              ? "ติดตามสถานะและแจ้งความคืบหน้าการดำเนินการคำขอใช้สิทธิ์ตามกฎหมาย แสดงรายงานสรุป\nการขอใช้สิทธิตามกฎหมายจากเจ้าของข้อมูลส่วนบุคคล โดยแบ่งแยกตาม จํานวนคําร้อง\nประเภทคําร้อง วันที่ยื่นคําร้อง สถานะคําร้อง และระยะเวลาคําร้อง เพื่อง่ายต่อการค้นหาและ\nประมวลผลข้อมูล"
              : "ติดตามสถานะและแจ้งความคืบหน้าการ\nดำเนินการคำขอใช้สิทธิ์ตามกฎหมาย\nแสดงรายงานสรุปการขอใช้สิทธิตาม\nกฎหมายจากเจ้าของข้อมูลส่วนบุคคล\nโดยแบ่งแยกตาม จํานวนคําร้อง ประเภท\nคําร้อง วันที่ยื่นคําร้อง สถานะคําร้อง และระยะเวลา\nคําร้อง เพื่อง่ายต่อการค้นหาและประมวลผลข้อมูล",
      Responsive.isDesktop(context)
          ? "เชื่อมต่อการให้ความยินยอมกับระบบอื่นๆ ผ่าน REST API และนําข้อมูลออกมาเป็น Excel file"
          : Responsive.isTablet(context)
              ? "เชื่อมต่อการให้ความยินยอมกับระบบอื่นๆ ผ่าน REST API และนําข้อมูลออกมาเป็น Excel file"
              : "เชื่อมต่อการให้ความยินยอมกับระบบอื่นๆ\nผ่าน REST API และนําข้อมูลออกมาเป็น\nExcel file",
    ];
    List<String> checkBreach = [
      Responsive.isDesktop(context)
          ? "บันทึกรายละเอียดข้อมูลกรณีเกิดเหตุข้อมูลรั่วไหล ช่วยสืบค้นประวัติ และจัดการเหตุข้อมูลรั่วไหล"
          : Responsive.isTablet(context)
              ? "บันทึกรายละเอียดข้อมูลกรณีเกิดเหตุข้อมูลรั่วไหล ช่วยสืบค้นประวัติ และจัดการเหตุข้อมูลรั่วไหล"
              : "บันทึกรายละเอียดข้อมูลกรณีเกิดเหตุข้อมูล\nรั่วไหล ช่วยสืบค้นประวัติ และจัดการเหตุ\nข้อมูลรั่วไหล",
      Responsive.isDesktop(context)
          ? "แจ้งรายงานเหตุข้อมูลรั่วไหลโดยสามารถนําเข้าชุดข้อมูลอีเมลของเจ้าของข้อมูลส่วนบุคคลจํานวนมากในคราวเดียว (Bulk mail) ส่งไปยังเจ้าของข้อมูลส่วนบุคคลได้"
          : Responsive.isTablet(context)
              ? "แจ้งรายงานเหตุข้อมูลรั่วไหลโดยสามารถนําเข้าชุดข้อมูลอีเมลของเจ้าของข้อมูลส่วนบุคคล\nจํานวนมากในคราวเดียว (Bulk mail) ส่งไปยังเจ้าของข้อมูลส่วนบุคคลได้"
              : "แจ้งรายงานเหตุข้อมูลรั่วไหลโดยสามารถนํา\nเข้าชุดข้อมูลอีเมลของเจ้าของข้อมูลส่วน\nบุคคลจํานวนมากในคราวเดียว (Bulk mail)\nส่งไปยังเจ้าของข้อมูลส่วนบุคคลได้",
      Responsive.isDesktop(context)
          ? "สร้างผังการไหลของการดําเนินการ (Workflow) ของงานตรวจสอบและข้อมูลรั่วไหล เพื่อจัดการเหตุข้อมูลรั่วไหลอย่างเป็นระบบ"
          : Responsive.isTablet(context)
              ? "สร้างผังการไหลของการดําเนินการ (Workflow) ของงานตรวจสอบและข้อมูลรั่วไหล เพื่อจัดการ\nเหตุข้อมูลรั่วไหลอย่างเป็นระบบ"
              : "สร้างผังการไหลของการดําเนินการ\n(Workflow) ของงานตรวจสอบและข้อมูล\nรั่วไหล เพื่อจัดการเหตุข้อมูลรั่วไหลอย่าง\nเป็นระบบ",
      Responsive.isDesktop(context)
          ? "จัดส่งรายงานเหตุกรณีข้อมูลรั่วไหลแก่สำนักงานคณะกรรมการคุ้มครองข้อมูลส่วนบุคคล โดยควบคุมเวลาการจัดการเหตุข้อมูลรั่วไหลให้อยู่ใน 72 ชั่วโมง"
          : Responsive.isTablet(context)
              ? "จัดส่งรายงานเหตุกรณีข้อมูลรั่วไหลแก่สำนักงานคณะกรรมการคุ้มครองข้อมูลส่วนบุคคล\nโดยควบคุมเวลาการจัดการเหตุข้อมูลรั่วไหลให้อยู่ใน 72 ชั่วโมง"
              : "จัดส่งรายงานเหตุกรณีข้อมูลรั่วไหลแก่\nสำนักงานคณะกรรมการคุ้มครองข้อมูล\nส่วนบุคคล โดยควบคุมเวลาการจัดการเหตุ\nข้อมูลรั่วไหลให้อยู่ใน 72 ชั่วโมง",
      Responsive.isDesktop(context)
          ? "แสดงรายงานการตรวจสอบข้อมูลรั่วไหลแบบแผนภาพ (Dashboard) โดยรองรับการจัดเรียง (Sort) ค้นหา (Search) และ กรอง (Filter) ได้"
          : Responsive.isTablet(context)
              ? "แสดงรายงานการตรวจสอบข้อมูลรั่วไหลแบบแผนภาพ (Dashboard) โดยรองรับการจัดเรียง\n(Sort) ค้นหา (Search) และ กรอง (Filter) ได้"
              : "แสดงรายงานการตรวจสอบข้อมูลรั่วไหลแบบ\nแผนภาพ (Dashboard) โดยรองรับ\nการจัดเรียง (Sort) ค้นหา (Search) และ\nกรอง (Filter) ได้",
      Responsive.isDesktop(context)
          ? "รองรับการทำงาน DPO และผู้ตรวจสอบ (Auditor) สำหรับการสุ่มตรวจสอบข้อมูล"
          : Responsive.isTablet(context)
              ? "รองรับการทำงาน DPO และผู้ตรวจสอบ (Auditor) สำหรับการสุ่มตรวจสอบข้อมูล"
              : "รองรับการทำงาน DPO และผู้ตรวจสอบ\n(Auditor) สำหรับการสุ่มตรวจสอบข้อมูล",
      Responsive.isDesktop(context)
          ? "ช่วยในการสืบค้นข้อมูลที่รั่วไหล และจัดทำรายการเจ้าของข้อมูลส่วนบุคคลเพื่อนำแจ้งได้อย่างครบถ้วน"
          : Responsive.isTablet(context)
              ? "ช่วยในการสืบค้นข้อมูลที่รั่วไหล และจัดทำรายการเจ้าของข้อมูลส่วนบุคคลเพื่อนำแจ้งได้อย่างครบถ้วน"
              : "ช่วยในการสืบค้นข้อมูลที่รั่วไหล และจัดทำ\nรายการเจ้าของข้อมูลส่วนบุคคลเพื่อนำแจ้ง\nได้อย่างครบถ้วน",
    ];
    List<String> checkaudit = [
      Responsive.isDesktop(context)
          ? "บริหารแผนงานการตรวจสอบ ครบวงจรตามมาตรฐานสากล ISO19011"
          : Responsive.isTablet(context)
              ? "บริหารแผนงานการตรวจสอบ ครบวงจรตามมาตรฐานสากล ISO19011"
              : "บริหารแผนงานการตรวจสอบ ครบวงจร\nตามมาตรฐานสากล ISO19011",
      Responsive.isDesktop(context)
          ? "กําหนดแผนการตรวจสอบ (Audit Plan) โปรแกรมการตรวจสอบ (Audit Program) และรายการตรวจสอบ สําหรับตรวจสอบ"
          : Responsive.isTablet(context)
              ? "กําหนดแผนการตรวจสอบ (Audit Plan) โปรแกรมการตรวจสอบ (Audit Program)\nและรายการตรวจสอบ สําหรับตรวจสอบ"
              : "กําหนดแผนการตรวจสอบ (Audit Plan)\nโปรแกรมการตรวจสอบ (Audit Program)\nและรายการตรวจสอบ สําหรับตรวจสอบ",
      Responsive.isDesktop(context)
          ? "ติดตามผลการตรวจสอบ เพื่อสนับสนุนงานของเจ้าหน้าที่คุ้มครองข้อมูลส่วนบุคคล"
          : Responsive.isTablet(context)
              ? "ติดตามผลการตรวจสอบ เพื่อสนับสนุนงานของเจ้าหน้าที่คุ้มครองข้อมูลส่วนบุคคล"
              : "ติดตามผลการตรวจสอบ เพื่อสนับสนุนงาน\nของเจ้าหน้าที่คุ้มครองข้อมูลส่วนบุคคล",
      Responsive.isDesktop(context)
          ? "สร้างรายงานการตรวจสอบ โดยระบุเนื้อหารายละเอียดการตรวจสอบ เช่น สาเหตุของความไม่สอดคล้องตาม พรบ.ฯ, แนวทางการป้องกัน, แนวทางการแก้ไขเป็นอย่างน้อย"
          : Responsive.isTablet(context)
              ? "สร้างรายงานการตรวจสอบ โดยระบุเนื้อหารายละเอียดการตรวจสอบ เช่น\nสาเหตุของความไม่สอดคล้องตาม พรบ.ฯ, แนวทางการป้องกัน, แนวทางการแก้ไขเป็นอย่างน้อย"
              : "สร้างรายงานการตรวจสอบ โดยระบุเนื้อหา\nรายละเอียดการตรวจสอบ เช่น สาเหตุของ\nความไม่สอดคล้องตาม พรบ.ฯ, แนวทางการ\nป้องกัน, แนวทางการแก้ไขเป็นอย่างน้อย",
      Responsive.isDesktop(context)
          ? "กําหนดการประเมิน และติดตามผลการประเมิน GAP Analysis จาก Matrix Template และ Checklist Template ได้ตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล ตามมาตรา 19, 20,\n23, 24, 26, 39, 40"
          : Responsive.isTablet(context)
              ? "กําหนดการประเมิน และติดตามผลการประเมิน GAP Analysis จาก Matrix Template และ\nChecklist Template ได้ตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล ตามมาตรา 19, 20,\n23, 24, 26, 39, 40"
              : "กําหนดการประเมิน และติดตามผลการ\nประเมิน GAP Analysis จาก Matrix\nTemplate และ Checklist Template\nได้ตามพระราชบัญญัติคุ้มครองข้อมูลส่วน\nบุคคล ตามมาตรา 19, 20, 23, 24, 26, 39,\n40",
      Responsive.isDesktop(context)
          ? "รองรับการ Remote Audit และจัดเก็บข้อมูลประกอบการตรวจสอบแบบออนไลน์"
          : Responsive.isTablet(context)
              ? "รองรับการ Remote Audit และจัดเก็บข้อมูลประกอบการตรวจสอบแบบออนไลน์"
              : "รองรับการ Remote Audit และจัดเก็บ\nข้อมูลประกอบการตรวจสอบแบบออนไลน์",
      Responsive.isDesktop(context)
          ? "แสดงสถานะความคืบหน้าการแก้ไขข้อตรวจพบจากรายงานการตรวจสอบ"
          : Responsive.isTablet(context)
              ? "แสดงสถานะความคืบหน้าการแก้ไขข้อตรวจพบจากรายงานการตรวจสอบ"
              : "แสดงสถานะความคืบหน้าการแก้ไขข้อตรวจ\nพบจากรายงานการตรวจสอบ",
      Responsive.isDesktop(context)
          ? "สรุปข้อมูลรายงานการตรวจสอบ และการติดตามผลการตรวจสอบตามมาตรฐานในรูปแบบไฟล์ Microsoft Word ได้ในไม่กี่ขั้นตอน"
          : Responsive.isTablet(context)
              ? "สรุปข้อมูลรายงานการตรวจสอบ และการติดตามผลการตรวจสอบตามมาตรฐานในรูปแบบไฟล์\nMicrosoft Word ได้ในไม่กี่ขั้นตอน"
              : "สรุปข้อมูลรายงานการตรวจสอบ และการติดตามผลการตรวจสอบตามมาตรฐานใน\nรูปแบบไฟล์ Microsoft Word ได้ในไม่กี่\nขั้นตอน",
      Responsive.isDesktop(context)
          ? "อัพโหลดไฟล์หลักฐานประกอบการตรวจสอบในลักษณะไฟล์โดยรองรับไฟล์อย่างน้อย คือ ไฟล์ .pdf,  .xls, .doc โดยแสดงการอัพโหลดหลักฐาน สามารถนําเข้าชุดข้อมูลอีเมลของ\nเจ้าของข้อมูลส่วนบุคคลที่เกี่ยวข้องกับเหตุข้อมูลรั่วไหลในลักษณะไฟล์ Excel หรือ CSV ได้ เพื่อแจ้งเหตุข้อมูลรั่วไหลให้แก่เจ้าของข้อมูลส่วนบุคคลได้"
          : Responsive.isTablet(context)
              ? "อัพโหลดไฟล์หลักฐานประกอบการตรวจสอบในลักษณะไฟล์โดยรองรับไฟล์อย่างน้อย คือ ไฟล์ .pdf,\n .xls, .doc โดยแสดงการอัพโหลดหลักฐาน สามารถนําเข้าชุดข้อมูลอีเมลของ\nเจ้าของข้อมูลส่วนบุคคลที่เกี่ยวข้องกับเหตุข้อมูลรั่วไหลในลักษณะไฟล์ Excel หรือ CSV ได้\nเพื่อแจ้งเหตุข้อมูลรั่วไหลให้แก่เจ้าของข้อมูลส่วนบุคคลได้"
              : "อัพโหลดไฟล์หลักฐานประกอบการตรวจสอบ\nในลักษณะไฟล์โดยรองรับไฟล์อย่างน้อย\nคือ ไฟล์ .pdf,  .xls, .doc โดยแสดงการ\nอัพโหลดหลักฐาน สามารถนําเข้าชุดข้อมูล\nอีเมลของเจ้าของข้อมูลส่วนบุคคลที่\nเกี่ยวข้องกับเหตุข้อมูลรั่วไหลในลักษณะไฟล์\nExcel หรือ CSV ได้ เพื่อแจ้งเหตุข้อมูล\nรั่วไหลให้แก่เจ้าของข้อมูลส่วนบุคคลได้",
    ];
    List<String> checkpolicy = [
      Responsive.isDesktop(context)
          ? "ศูนย์กลางการจัดการสื่อสารนโยบายและประกาศความเป็นส่วนตัว โดยจัดทำออกมาเป็น Policy และนำไปประกาศใช้งานได้ที่เว็บไซต์ที่องค์กรต้องการได้"
          : Responsive.isTablet(context)
              ? "ศูนย์กลางการจัดการสื่อสารนโยบายและประกาศความเป็นส่วนตัว โดยจัดทำออกมาเป็น Policy\nและนำไปประกาศใช้งานได้ที่เว็บไซต์ที่องค์กรต้องการได้"
              : "ศูนย์กลางการจัดการสื่อสารนโยบายและ\nประกาศความเป็นส่วนตัว โดยจัดทำออกมา\nเป็น Policy และนำไปประกาศใช้งานได้ที่\nเว็บไซต์ที่องค์กรต้องการได้",
      Responsive.isDesktop(context)
          ? "แสดงรายการนโยบาย พร้อมทั้งยังสามารถค้นหานโยบาย กรองข้อมูล จัดเรียงข้อมูลได้ตามที่ต้องการ"
          : Responsive.isTablet(context)
              ? "แสดงรายการนโยบาย พร้อมทั้งยังสามารถค้นหานโยบาย กรองข้อมูล จัดเรียงข้อมูลได้\nตามที่ต้องการ"
              : "แสดงรายการนโยบาย พร้อมทั้งยังสามารถ\nค้นหานโยบาย กรองข้อมูล จัดเรียงข้อมูลได้\nตามที่ต้องการ",
      Responsive.isDesktop(context)
          ? "เชื่อมต่อผ่าน API เพื่อนำเข้าและส่งออกข้อมูล และนำข้อมูลออกในรูปแบบ Excel"
          : Responsive.isTablet(context)
              ? "เชื่อมต่อผ่าน API เพื่อนำเข้าและส่งออกข้อมูล และนำข้อมูลออกในรูปแบบ Excel"
              : "เชื่อมต่อผ่าน API เพื่อนำเข้าและส่งออก\nข้อมูล และนำข้อมูลออกในรูปแบบ Excel",
    ];
    List<String> checkdiscorver = [
      Responsive.isDesktop(context)
          ? "วิเคราะห์ข้อมูล และสำรวจข้อมูลส่วนบุคคลที่องค์กรจัดเก็บรวบรวม ประมวลผล เผยแพร่ พร้อมจัดหมวดหมู่ และกำหนดสิทธิ์การใช้งานของผู้ที่เกี่ยวข้อง"
          : Responsive.isTablet(context)
              ? "วิเคราะห์ข้อมูล และสำรวจข้อมูลส่วนบุคคลที่องค์กรจัดเก็บรวบรวม ประมวลผล เผยแพร่\nพร้อมจัดหมวดหมู่ และกำหนดสิทธิ์การใช้งานของผู้ที่เกี่ยวข้อง"
              : "วิเคราะห์ข้อมูล และสำรวจข้อมูลส่วนบุคคลที่\nองค์กรจัดเก็บรวบรวม ประมวลผล เผยแพร่\nพร้อมจัดหมวดหมู่ และกำหนดสิทธิ์การใช้\nงานของผู้ที่เกี่ยวข้อง",
      Responsive.isDesktop(context)
          ? "ค้นหาข้อมูลส่วนบุคคลโดยใช้ Keyword และ AI"
          : Responsive.isTablet(context)
              ? "ค้นหาข้อมูลส่วนบุคคลโดยใช้ Keyword และ AI"
              : "ค้นหาข้อมูลส่วนบุคคลโดยใช้ Keyword และ\nAI",
      Responsive.isDesktop(context)
          ? "ทำการค้นหาข้อมูลโดยการสุ่ม โดยกำหนดสัดส่วนที่ต้องการสุ่มจากปริมาณข้อมูลทั้งหมดได้"
          : Responsive.isTablet(context)
              ? "ทำการค้นหาข้อมูลโดยการสุ่ม โดยกำหนดสัดส่วนที่ต้องการสุ่มจากปริมาณข้อมูลทั้งหมดได้"
              : "ทำการค้นหาข้อมูลโดยการสุ่ม โดยกำหนด\nสัดส่วนที่ต้องการสุ่มจากปริมาณข้อมูล\nทั้งหมดได้",
      Responsive.isDesktop(context)
          ? "ช่วยค้นหาข้อมูลส่วนบุคคลที่ถูกจัดเก็บไว้ในไฟล์เอกสาร รูปภาพ ฐานข้อมูล อีเมล และในระบบ File System ไม่ว่าจะเป็น ชื่อ นามสกุล ที่อยู่ เบอร์โทรศัพท์ หรือข้อมูลส่วนบุคคลอื่นๆ\nพร้อมจัดเก็บและจำแนกประเภทของข้อมูลเพื่อให้เป็นไปตามนโยบายการคุ้มครองข้อมูลส่วนบุคคลขององค์กร"
          : Responsive.isTablet(context)
              ? "ช่วยค้นหาข้อมูลส่วนบุคคลที่ถูกจัดเก็บไว้ในไฟล์เอกสาร รูปภาพ ฐานข้อมูล อีเมล และในระบบ File\nSystem ไม่ว่าจะเป็น ชื่อ นามสกุล ที่อยู่ เบอร์โทรศัพท์ หรือข้อมูลส่วนบุคคลอื่นๆ พร้อมจัดเก็บ\nและจำแนกประเภทของข้อมูลเพื่อให้เป็นไปตามนโยบายการคุ้มครองข้อมูลส่วนบุคคลขององค์กร"
              : "ช่วยค้นหาข้อมูลส่วนบุคคลที่ถูกจัดเก็บไว้ใน\nไฟล์เอกสาร รูปภาพ ฐานข้อมูล อีเมล และใน\nระบบ File System ไม่ว่าจะเป็น ชื่อ นามสกุล\nที่อยู่ เบอร์โทรศัพท์ หรือข้อมูลส่วนบุคคลอื่นๆ\nพร้อมจัดเก็บและจำแนกประเภทของข้อมูล\nเพื่อให้เป็นไปตามนโยบายการคุ้มครองข้อมูล\nส่วนบุคคลขององค์กร",
      Responsive.isDesktop(context)
          ? "ตั้งค่าปกปิดหรือแทนที่ข้อมูลส่วนบุคคลนั้นๆ ในไฟล์บางประเภทเพื่อไม่ให้อ่านหรือเห็นได้ตามปกติ"
          : Responsive.isTablet(context)
              ? "ตั้งค่าปกปิดหรือแทนที่ข้อมูลส่วนบุคคลนั้นๆ ในไฟล์บางประเภทเพื่อไม่ให้อ่านหรือเห็นได้ตามปกติ"
              : "ตั้งค่าปกปิดหรือแทนที่ข้อมูลส่วนบุคคลนั้นๆ\nในไฟล์บางประเภทเพื่อไม่ให้อ่านหรือเห็นได้\nตามปกติ",
      Responsive.isDesktop(context)
          ? "แสดงรายการการวิเคราะห์ข้อมูล พร้อมทั้งแสดงโอกาสพบข้อมูลส่วนบุคคลเป็นเปอร์เซ็น (%) และยังสามารถ ค้นหา กรองข้อมูล เรียงข้อมูลตามได้ที่ต้องการ"
          : Responsive.isTablet(context)
              ? "แสดงรายการการวิเคราะห์ข้อมูล พร้อมทั้งแสดงโอกาสพบข้อมูลส่วนบุคคลเป็นเปอร์เซ็น (%) และ\nยังสามารถ ค้นหา กรองข้อมูล เรียงข้อมูลตามได้ที่ต้องการ"
              : "แสดงรายการการวิเคราะห์ข้อมูล พร้อมทั้ง\nแสดงโอกาสพบข้อมูลส่วนบุคคลเป็น\nเปอร์เซ็น (%) และยังสามารถ ค้นหา\nกรองข้อมูล เรียงข้อมูลตามได้ที่ต้องการ",
      Responsive.isDesktop(context)
          ? "ช่วยในการสืบค้นกรณีเกิดเหตุข้อมูลที่รั่วไหล และจัดทำรายการเจ้าของข้อมูลส่วนบุคคลเพื่อนำแจ้งได้อย่างครบถ้วน"
          : Responsive.isTablet(context)
              ? "ช่วยในการสืบค้นกรณีเกิดเหตุข้อมูลที่รั่วไหล และจัดทำรายการเจ้าของข้อมูลส่วนบุคคลเพื่อนำแจ้ง\nได้อย่างครบถ้วน"
              : "ช่วยในการสืบค้นกรณีเกิดเหตุข้อมูลที่รั่วไหล\nและจัดทำรายการเจ้าของข้อมูลส่วนบุคคลเพื่อ\nนำแจ้งได้อย่างครบถ้วน",
    ];
    List<String> checkexecutive = [
      Responsive.isDesktop(context)
          ? "กําหนดโครงการและงาน ลําดับความสําคัญของงาน และกำหนดผู้รับผิดชอบงานให้เหมาะสม"
          : Responsive.isTablet(context)
              ? "กําหนดโครงการและงาน ลําดับความสําคัญของงาน และกำหนดผู้รับผิดชอบงานให้เหมาะสม"
              : "กําหนดโครงการและงาน ลําดับความสําคัญ\nของงาน และกำหนดผู้รับผิดชอบงานให้\nเหมาะสม",
      Responsive.isDesktop(context)
          ? "กำหนดงานที่ต้องทำล่วงหน้า (Routine Task) เพื่อวางแผน และจัดการให้ตรงตามเวลาที่ต้องการ"
          : Responsive.isTablet(context)
              ? "กำหนดงานที่ต้องทำล่วงหน้า (Routine Task) เพื่อวางแผน และจัดการให้ตรงตามเวลาที่ต้องการ"
              : "กำหนดงานที่ต้องทำล่วงหน้า (Routine\nTask) เพื่อวางแผน และจัดการให้ตรงตาม\nเวลาที่ต้องการ",
      Responsive.isDesktop(context)
          ? "ติดตามความคืบหน้าของงาน เพื่อสนับสนุนการสั่งงานและติดตามงานของผู้บริหารได้"
          : Responsive.isTablet(context)
              ? "ติดตามความคืบหน้าของงาน เพื่อสนับสนุนการสั่งงานและติดตามงานของผู้บริหารได้"
              : "ติดตามความคืบหน้าของงาน เพื่อสนับสนุน\nการสั่งงานและติดตามงานของผู้บริหารได้",
      Responsive.isDesktop(context)
          ? "รองรับการเชื่อมต่อข้อมูลภายในระบบ และดึงข้อมูลจากระบบภายนอกเพื่อสร้างรายงาน"
          : Responsive.isTablet(context)
              ? "รองรับการเชื่อมต่อข้อมูลภายในระบบ และดึงข้อมูลจากระบบภายนอกเพื่อสร้างรายงาน"
              : "รองรับการเชื่อมต่อข้อมูลภายในระบบ\nและดึงข้อมูลจากระบบภายนอกเพื่อสร้าง\nรายงาน",
      Responsive.isDesktop(context)
          ? "รายงานสรุปการสั่งงาน และข้อมูลงานในระบบทั้งหมด และแสดงความคืบหน้าของงานที่มอบหมาย แบบ Dashboard รายงายสถานะความคืบหน้าแบบเป็นเปอร์เซ็นต์\nโดยแสดงให้เห็นรายละเอียดของงาน วันที่เริ่ม วันที่ครบกําหนดส่งงาน และความสําคัญของงาน (สูง-กลาง-ตํ่า)"
          : Responsive.isTablet(context)
              ? "รายงานสรุปการสั่งงาน และข้อมูลงานในระบบทั้งหมด และแสดงความคืบหน้าของงานที่มอบหมาย\nแบบ Dashboard รายงายสถานะความคืบหน้าแบบเป็นเปอร์เซ็นต์ โดยแสดงให้เห็นรายละเอียด\nของงาน วันที่เริ่ม วันที่ครบกําหนดส่งงาน และความสําคัญของงาน (สูง-กลาง-ตํ่า)"
              : "รายงานสรุปการสั่งงาน และข้อมูลงานใน\nระบบทั้งหมด และแสดงความคืบหน้าของ\nงานที่มอบหมาย แบบ Dashboard\nรายงายสถานะความคืบหน้าแบบเป็น\nเปอร์เซ็นต์ โดยแสดงให้เห็นรายละเอียด\nของงาน วันที่เริ่ม วันที่ครบกําหนดส่งงาน\nและความสําคัญของงาน (สูง-กลาง-ตํ่า)",
      Responsive.isDesktop(context)
          ? "ระบบสามารถเชื่อมต่อภายในแต่ละ Modules เมื่อมีการสั่งงาน"
          : Responsive.isTablet(context)
              ? "ระบบสามารถเชื่อมต่อภายในแต่ละ Modules เมื่อมีการสั่งงาน"
              : "ระบบสามารถเชื่อมต่อภายในแต่ละ\nModules เมื่อมีการสั่งงาน",
      Responsive.isDesktop(context)
          ? "บริหารงานได้ละเอียดระดับ Task โดยจัดการงานแบบ Agile ผ่าน Kanban Board"
          : Responsive.isTablet(context)
              ? "บริหารงานได้ละเอียดระดับ Task โดยจัดการงานแบบ Agile ผ่าน Kanban Board"
              : "บริหารงานได้ละเอียดระดับ Task โดย\nจัดการงานแบบ Agile ผ่าน Kanban Board",
    ];
    List<String> checklegi = [
      Responsive.isDesktop(context)
          ? "ประเมินความเหมาะสมการใช้ฐานกฎหมายไปใช้เพื่อประโยชน์โดยชอบด้วยกฎหมาย เพื่อปฏิบัติตามมาตรา 24 (5) โดยอ้างอิงกรณีใช้ข้อมูลแบบ LIA"
          : Responsive.isTablet(context)
              ? "ประเมินความเหมาะสมการใช้ฐานกฎหมายไปใช้เพื่อประโยชน์โดยชอบด้วยกฎหมาย เพื่อปฏิบัติ\nตามมาตรา 24 (5) โดยอ้างอิงกรณีใช้ข้อมูลแบบ LIA"
              : "ประเมินความเหมาะสมการใช้ฐานกฎหมาย\nไปใช้เพื่อประโยชน์โดยชอบด้วยกฎหมาย\nเพื่อปฏิบัติตามมาตรา 24 (5)\nโดยอ้างอิงกรณีใช้ข้อมูลแบบ LIA",
      Responsive.isDesktop(context)
          ? "แสดงรายงานสรุปแบบประเมินประโยชน์โดยชอบด้วยกฎหมายออกมาเป็นแผนภาพ (Dashboard)"
          : Responsive.isTablet(context)
              ? "แสดงรายงานสรุปแบบประเมินประโยชน์โดยชอบด้วยกฎหมายออกมาเป็นแผนภาพ\n(Dashboard)"
              : "แสดงรายงานสรุปแบบประเมินประโยชน์\nโดยชอบด้วยกฎหมายออกมาเป็นแผนภาพ\n(Dashboard)",
      Responsive.isDesktop(context)
          ? "เชื่อมต่อผ่าน API เพื่อนำเข้าและส่งออกข้อมูล และนำข้อมูลออกในรูปแบบ Excel"
          : Responsive.isTablet(context)
              ? "เชื่อมต่อผ่าน API เพื่อนำเข้าและส่งออกข้อมูล และนำข้อมูลออกในรูปแบบ Excel"
              : "เชื่อมต่อผ่าน API เพื่อนำเข้าและส่งออก\nข้อมูล และนำข้อมูลออกในรูปแบบ Excel",
    ];
    List<String> checksystem = [
      Responsive.isDesktop(context)
          ? "กำหนดให้ผู้ดูแลระบบสามารสร้างบัญชีผู้ใช้งาน แก้ไขบัญชีผู้ใช้งาน หรือ ยกเลิกผู้ใช้งานได้"
          : Responsive.isTablet(context)
              ? "กำหนดให้ผู้ดูแลระบบสามารสร้างบัญชีผู้ใช้งาน แก้ไขบัญชีผู้ใช้งาน หรือ ยกเลิกผู้ใช้งานได้"
              : "กำหนดให้ผู้ดูแลระบบสามารสร้างบัญชีผู้ใช้\nงาน แก้ไขบัญชีผู้ใช้งาน หรือ\nยกเลิกผู้ใช้งานได้",
      Responsive.isDesktop(context)
          ? "รองรับการกำหนดสิทธิ์การอนุญาต (Approved) ในระบบ และให้สิทธิ์นั้นแก่ผู้ใช้งานที่ต้องการ โดยสามารถสร้างเป็นกลุ่มสิทธิ์ผู้ใช้งานได้"
          : Responsive.isTablet(context)
              ? "รองรับการกำหนดสิทธิ์การอนุญาต (Approved) ในระบบ และให้สิทธิ์นั้นแก่ผู้ใช้งานที่ต้องการ\nโดยสามารถสร้างเป็นกลุ่มสิทธิ์ผู้ใช้งานได้"
              : "รองรับการกำหนดสิทธิ์การอนุญาต\n(Approved) ในระบบ และให้สิทธิ์นั้นแก่\nผู้ใช้งานที่ต้องการ โดยสามารถสร้างเป็น\nกลุ่มสิทธิ์ผู้ใช้งานได้",
      Responsive.isDesktop(context)
          ? "ระบบรองรับการยืนยันตัวบุคคลของผู้ใช้งานบัญชีผ่านช่องทางบัญชีผู้ใช้งาน และรหัสผ่าน"
          : Responsive.isTablet(context)
              ? "ระบบรองรับการยืนยันตัวบุคคลของผู้ใช้งานบัญชีผ่านช่องทางบัญชีผู้ใช้งาน และรหัสผ่าน"
              : "ระบบรองรับการยืนยันตัวบุคคลของผู้ใช้\nงานบัญชีผ่านช่องทางบัญชีผู้ใช้งาน และ\nรหัสผ่าน",
      Responsive.isDesktop(context)
          ? "รองรับการปรับปรุง แก้ไข สิทธิ์การใช้งานในแต่ละฟังก์ชั่น ทั้งการเพิ่ม แก้ไข และลบข้อมูลในระบบ"
          : Responsive.isTablet(context)
              ? "รองรับการปรับปรุง แก้ไข สิทธิ์การใช้งานในแต่ละฟังก์ชั่น ทั้งการเพิ่ม แก้ไข และลบข้อมูลในระบบ"
              : "รองรับการปรับปรุง แก้ไข สิทธิ์การใช้งาน\nในแต่ละฟังก์ชั่น ทั้งการเพิ่ม แก้ไข และลบ\nข้อมูลในระบบ",
      Responsive.isDesktop(context)
          ? "รองรับการเชื่อมต่อระบบกับ Authentication ด้วย AD ภายในหน่วยงานของผู้ใช้งานได้"
          : Responsive.isTablet(context)
              ? "รองรับการเชื่อมต่อระบบกับ Authentication ด้วย AD ภายในหน่วยงานของผู้ใช้งานได้"
              : "รองรับการเชื่อมต่อระบบกับ\nAuthentication ด้วย AD ภายในหน่วยงาน\nของผู้ใช้งานได้",
    ];

    return Center(
      child: Container(
        width: 1440,
        color: Color.fromARGB(255, 5, 45, 97),
        child: Center(
          child: Container(
            width: Responsive.isDesktop(context)
                ? 1440
                : Responsive.isTablet(context)
                    ? 768
                    : 375,
            color: Color.fromARGB(255, 5, 45, 97),
            child: Padding(
              padding: Responsive.isDesktop(context)
                  ? const EdgeInsets.only(top: 86, left: 128, bottom: 88)
                  : Responsive.isTablet(context)
                      ? const EdgeInsets.only(
                          top: 54,
                          left: 31,
                        )
                      : const EdgeInsets.only(
                          top: 54,
                          left: 21,
                        ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.title == "PD Management"
                          ? checkPD.length
                          : widget.title == "DPIA & Risk Management"
                              ? checkDpia.length
                              : widget.title == "Cookie Consent"
                                  ? checkCookie.length
                                  : widget.title == "Consent Management"
                                      ? checkCookie.length
                                      : widget.title ==
                                              "Data Subject Right Management"
                                          ? checkData.length
                                          : widget.title ==
                                                  "Data Breach Management"
                                              ? checkBreach.length
                                              : widget.title ==
                                                      "Audit&Gap Management"
                                                  ? checkaudit.length
                                                  : widget.title ==
                                                          "Policy&Notices Management"
                                                      ? checkpolicy.length
                                                      : widget.title ==
                                                              "Data Discover"
                                                          ? checkdiscorver
                                                              .length
                                                          : widget.title ==
                                                                  "Executive Support System"
                                                              ? checkexecutive
                                                                  .length
                                                              : widget.title ==
                                                                      "Legitimate Interest Assessment"
                                                                  ? checklegi
                                                                      .length
                                                                  : checksystem
                                                                      .length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: new Material(
                            child: new InkWell(
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  if (value) {
                                    hoveredIndex = index;
                                  } else {
                                    hoveredIndex = null;
                                  }
                                });
                              },
                              child: Center(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // height: 28,
                                        color: hoveredIndex == index
                                            ? Color.fromARGB(255, 5, 45, 97)
                                            : Color.fromARGB(255, 5, 45, 97),
                                        child: ListTile(
                                          minLeadingWidth: 0,
                                          minVerticalPadding: 0,
                                          dense: true,
                                          visualDensity: VisualDensity(
                                              vertical: -4, horizontal: -4),
                                          leading: Transform.translate(
                                            offset: Offset(0, 0),
                                            child: SizedBox(
                                                width: 19,
                                                height: 13,
                                                child: Image(
                                                    image: AssetImage(hoveredIndex ==
                                                            index
                                                        ? "assets/features/blue-check.png"
                                                        : "assets/features/white-check.png"))),
                                          ),
                                          title: Transform.translate(
                                            offset: Offset(0, 0),
                                            child: Responsive.isDesktop(context)
                                                ? Text(
                                                    widget.title ==
                                                            "PD Management"
                                                        ? checkPD[index]
                                                        : widget.title ==
                                                                "DPIA & Risk Management"
                                                            ? checkDpia[index]
                                                            : widget.title ==
                                                                    "Cookie Consent"
                                                                ? checkCookie[
                                                                    index]
                                                                : widget.title ==
                                                                        "Consent Management"
                                                                    ? checkCookie[
                                                                        index]
                                                                    : widget.title ==
                                                                            "Data Subject Right Management"
                                                                        ? checkData[
                                                                            index]
                                                                        : widget.title ==
                                                                                "Data Breach Management"
                                                                            ? checkBreach[index]
                                                                            : widget.title == "Audit&Gap\nManagement"
                                                                                ? checkaudit[index]
                                                                                : widget.title == "Policy&Notices Management"
                                                                                    ? checkpolicy[index]
                                                                                    : widget.title == "Data Discover"
                                                                                        ? checkdiscorver[index]
                                                                                        : widget.title == "Executive Support System"
                                                                                            ? checkexecutive[index]
                                                                                            : widget.title == "Legitimate Interest Assessment"
                                                                                                ? checklegi[index]
                                                                                                : checksystem[index],
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            color: hoveredIndex ==
                                                                    index
                                                                ? Color
                                                                    .fromARGB(
                                                                        255,
                                                                        75,
                                                                        195,
                                                                        211)
                                                                : Colors.white,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                  )
                                                : Responsive.isTablet(context)
                                                    ? Text(
                                                        widget.title ==
                                                                "PD Management"
                                                            ? checkPD[index]
                                                            : widget.title ==
                                                                    "DPIA & Risk Management"
                                                                ? checkDpia[
                                                                    index]
                                                                : widget.title ==
                                                                        "Cookie Consent"
                                                                    ? checkCookie[
                                                                        index]
                                                                    : widget.title ==
                                                                            "Consent Management"
                                                                        ? checkCookie[
                                                                            index]
                                                                        : widget.title ==
                                                                                "Data Subject Right Management"
                                                                            ? checkData[index]
                                                                            : widget.title == "Data Breach Management"
                                                                                ? checkBreach[index]
                                                                                : widget.title == "Audit&Gap\nManagement"
                                                                                    ? checkaudit[index]
                                                                                    : widget.title == "Policy&Notices Management"
                                                                                        ? checkpolicy[index]
                                                                                        : widget.title == "Data Discover"
                                                                                            ? checkdiscorver[index]
                                                                                            : widget.title == "Executive Support System"
                                                                                                ? checkexecutive[index]
                                                                                                : widget.title == "Legitimate Interest Assessment"
                                                                                                    ? checklegi[index]
                                                                                                    : checksystem[index],
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                color: hoveredIndex ==
                                                                        index
                                                                    ? Color
                                                                        .fromARGB(
                                                                            255,
                                                                            75,
                                                                            195,
                                                                            211)
                                                                    : Colors
                                                                        .white,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      )
                                                    : Text(
                                                        widget.title ==
                                                                "PD Management"
                                                            ? checkPD[index]
                                                            : widget.title ==
                                                                    "DPIA & Risk Management"
                                                                ? checkDpia[
                                                                    index]
                                                                : widget.title ==
                                                                        "Cookie Consent"
                                                                    ? checkCookie[
                                                                        index]
                                                                    : widget.title ==
                                                                            "Consent Management"
                                                                        ? checkCookie[
                                                                            index]
                                                                        : widget.title ==
                                                                                "Data Subject Right Management"
                                                                            ? checkData[index]
                                                                            : widget.title == "Data Breach Management"
                                                                                ? checkBreach[index]
                                                                                : widget.title == "Audit&Gap\nManagement"
                                                                                    ? checkaudit[index]
                                                                                    : widget.title == "Policy&Notices Management"
                                                                                        ? checkpolicy[index]
                                                                                        : widget.title == "Data Discover"
                                                                                            ? checkdiscorver[index]
                                                                                            : widget.title == "Executive Support System"
                                                                                                ? checkexecutive[index]
                                                                                                : widget.title == "Legitimate Interest Assessment"
                                                                                                    ? checklegi[index]
                                                                                                    : checksystem[index],
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                color: hoveredIndex ==
                                                                        index
                                                                    ? Color
                                                                        .fromARGB(
                                                                            255,
                                                                            75,
                                                                            195,
                                                                            211)
                                                                    : Colors
                                                                        .white,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        color: hoveredIndex == index
                                            ? Color.fromARGB(255, 5, 45, 97)
                                            : Color.fromARGB(255, 5, 45, 97),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
