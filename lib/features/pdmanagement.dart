

// class Pdmanagement extends StatefulWidget {
//   @override
//   _PdmanagementPageState createState() => _PdmanagementPageState();
// }

// class _PdmanagementPageState extends State<Pdmanagement> {
//   // int _currentIndex = 0;

//   // void onTabTapped(int index) {
//   //   setState(() {
//   //     _currentIndex = index;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           toolbarHeight: Responsive.isDesktop(context) ? 80 : 60,
//           automaticallyImplyLeading: !Responsive.isDesktop(context),
//           iconTheme: IconThemeData(color: Colors.white),
//           backgroundColor: Color.fromARGB(255, 52, 144, 206),
//           elevation: 0,
//           centerTitle: true,
//           title: !Responsive.isDesktop(context)
//               ? Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: 60,
//                         width: 100,
//                         child: GestureDetector(
//                           onTap: () => context.go('/'),
//                           child: Image.asset(
//                             'assets/logo.png',
//                           ),
//                         ),
//                       ),
//                     ],
//                   ))
//               : NavBar()),
//       drawer: MenuDrawer(),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [ Check(), Example(), FeaturesPage(), Footer()],
//         ),
//       ),
//     );
//   }
// }


// class Check extends StatefulWidget {
//   const Check({Key? key}) : super(key: key);

//   @override
//   _CheckState createState() => _CheckState();
// }

// class _CheckState extends State<Check> {
//   int? hoveredIndex;
  
//   @override
//   Widget build(BuildContext context) {
//     List<String> check = [
//     Responsive.isDesktop(context)?"บันทึกรายการข้อมูลส่วนบุคคล โดยจัดการรายละเอียดของรายการ และสามารถระบุรายละเอียดต่างๆ ได้อย่างครบถ้วนตาม พรบ.คุ้มครองข้อมูลส่วนบุคคล 2562 ตามมาตรา (39)":Responsive.isTablet(context)?"บันทึกรายการข้อมูลส่วนบุคคล โดยจัดการรายละเอียดของรายการ และสามารถระบุ\nรายละเอียดต่างๆ ได้อย่างครบถ้วนตาม พรบ.คุ้มครองข้อมูลส่วนบุคคล 2562 ตามมาตรา (39)":"บันทึกรายการข้อมูลส่วนบุคคล โดยจัดการ\nรายละเอียดของรายการ และสามารถระบุ\nรายละเอียดต่างๆ ได้อย่างครบถ้วนตาม\nพรบ.คุ้มครองข้อมูลส่วนบุคคล 2562\nตามมาตรา (39)",
    
//     Responsive.isDesktop(context)?"บันทึกรายการข้อมูลส่วนบุคคลและรายละเอียดที่เกี่ยวข้องกับบันทึก เช่น แหล่งที่มาของข้อมูลส่วนบุคคล วัตถุประสงค์ของการประมวลผล\nมาตรการรักษาความมั่นปลอดภัย สถานที่จัดเก็บ สัญญาการประมวลผล การอ้างอิงการขอความยินยอมจากเจ้าของข้อมูลส่วนบุคคล": Responsive.isTablet(context)?"บันทึกรายการข้อมูลส่วนบุคคลและรายละเอียดที่เกี่ยวข้องกับบันทึก เช่น แหล่งที่มาของข้อมูล\nส่วนบุคคล วัตถุประสงค์ของการประมวลผล มาตรการรักษาความมั่นปลอดภัย สถานที่จัดเก็บ\nสัญญาการประมวลผล การอ้างอิงการขอความยินยอมจากเจ้าของข้อมูลส่วนบุคคล": "บันทึกรายการข้อมูลส่วนบุคคลและ\nรายละเอียดที่เกี่ยวข้องกับบันทึก เช่น\nแหล่งที่มาของข้อมูลส่วนบุคคล วัตถุ\nประสงค์ของการประมวลผล\nมาตรการรักษาความมั่นปลอดภัย\nสถานที่จัดเก็บ สัญญาการประมวลผล\nการอ้างอิงการขอความยินยอมจาก\nเจ้าของข้อมูลส่วนบุคคล",
//     Responsive.isDesktop(context)?"ระบุหน่วยงานที่เกี่ยวข้อง (สามารถแยกแต่ละหน่วยงาน) ในการนําข้อมูลส่วนบุคคลไปใช้ โดยสามารถกําหนดได้ว่าเป็นการ เก็บรวบรวม นําไปใช้ หรือเปิดเผย":Responsive.isTablet(context)?"ระบุหน่วยงานที่เกี่ยวข้อง (สามารถแยกแต่ละหน่วยงาน) ในการนําข้อมูลส่วนบุคคลไปใช้\nโดยสามารถกําหนดได้ว่าเป็นการ เก็บรวบรวม นําไปใช้ หรือเปิดเผย":"ระบุหน่วยงานที่เกี่ยวข้อง (สามารถแยก\nแต่ละหน่วยงาน) ในการนําข้อมูลส่วนบุคคล\nไปใช้โดยสามารถกําหนดได้ว่าเป็นการเก็บ\nรวบรวม นําไปใช้ หรือเปิดเผย",
//     Responsive.isDesktop(context)?"กําหนดฐานกฎหมาย (Lawful Basis) ที่ใช้ประมวลผลข้อมูลส่วนบุคคล และเหตุปฏิเสธคําขอหรือการคัดค้านคําขอที่ใช้ ในแต่ละรายการข้อมูลส่วนบุคคล":Responsive.isTablet(context)?"กําหนดฐานกฎหมาย (Lawful Basis) ที่ใช้ประมวลผลข้อมูลส่วนบุคคล และเหตุปฏิเสธคําขอ\nหรือการคัดค้านคําขอที่ใช้ ในแต่ละรายการข้อมูลส่วนบุคคล":"กําหนดฐานกฎหมาย (Lawful Basis)\nที่ใช้ประมวลผลข้อมูลส่วนบุคคล และเหตุ\nปฏิเสธคําขอหรือการคัดค้านคําขอที่ใช้\nในแต่ละรายการข้อมูลส่วนบุคคล",
//      Responsive.isDesktop(context)?"กําหนดสัญญาการประมวลผลข้อมูลส่วนบุคคล สําหรับรายการข้อมูลส่วนบุคคลที่มีการส่งออกไปยังผู้ประมวลผลข้อมูล" :Responsive.isTablet(context)?"กําหนดสัญญาการประมวลผลข้อมูลส่วนบุคคล สําหรับรายการข้อมูลส่วนบุคคลที่มีการ\nส่งออกไปยังผู้ประมวลผลข้อมูล":"กําหนดสัญญาการประมวลผลข้อมูลส่วน\nบุคคล สําหรับรายการข้อมูลส่วนบุคคลที่มี\nการส่งออกไปยังผู้ประมวลผลข้อมูล",
//     Responsive.isDesktop(context)?"กําหนดผู้ควบคุมข้อมูลส่วนบุคคล เพื่อระบุ และเจาะจงผู้ดูแลข้อมูลในแต่ละบันทึกรายการได้":Responsive.isTablet(context)?"กําหนดผู้ควบคุมข้อมูลส่วนบุคคล เพื่อระบุ และเจาะจงผู้ดูแลข้อมูลในแต่ละบันทึกรายการได้":"กําหนดผู้ควบคุมข้อมูลส่วนบุคคล เพื่อระบุ\nและเจาะจงผู้ดูแลข้อมูลในแต่ละบันทึก\nรายการได้",
//     Responsive.isDesktop(context)?"สุ่มตรวจสอบข้อมูลส่วนบุคคลในฐานข้อมูล อาจเป็นข้อมูลส่วนบุคคล โดยกําหนดเป็นเปอร์เซ็นต์ที่ต้องการ และระบบสามารถคาดการณ์ออกมาเป็นเปอร์เซ็นต์ได้":Responsive.isTablet(context)?"สุ่มตรวจสอบข้อมูลส่วนบุคคลในฐานข้อมูล อาจเป็นข้อมูลส่วนบุคคล โดยกําหนดเป็นเปอร์เซ็นต์ที่ต้องการ\nและระบบสามารถคาดการณ์ออกมาเป็นเปอร์เซ็นต์ได้":"สุ่มตรวจสอบข้อมูลส่วนบุคคลในฐานข้อมูล\nอาจเป็นข้อมูลส่วนบุคคล โดยกําหนดเป็น\nเปอร์เซ็นต์ที่ต้องการ และระบบสามารถ\nคาดการณ์ออกมาเป็นเปอร์เซ็นต์ได้",
//     Responsive.isDesktop(context)?"รองรับการทำงานของ DPO ที่สามารถมองเห็นภาพรวมและสอบทานกลับได้เมื่อต้องการทราบข้อมูล":Responsive.isTablet(context)?"รองรับการทำงานของ DPO ที่สามารถมองเห็นภาพรวมและสอบทานกลับได้เมื่อต้องการทราบข้อมูล":"รองรับการทำงานของ DPO ที่สามารถ\nมองเห็นภาพรวมและสอบทานกลับได้",
//     Responsive.isDesktop(context)?"จัดทำผังการไหลของข้อมูลและแสดงผลความเชื่อมโยง (Data Flow) ถึงหน่วยงานที่ รับ-ส่งข้อมูลส่วนบุคคล เป็นลําดับ ก่อน-หลัง โดยระบบจะเชื่อมโยงข้อมูลที่มีอยู่ให้อย่างอัตโนมัติ":Responsive.isTablet(context)?"จัดทำผังการไหลของข้อมูลและแสดงผลความเชื่อมโยง (Data Flow) ถึงหน่วยงานที่ รับ-ส่ง\nข้อมูลส่วนบุคคล เป็นลําดับ ก่อน-หลัง โดยระบบจะเชื่อมโยงข้อมูลที่มีอยู่ให้อย่างอัตโนมัติ":"จัดทำผังการไหลของข้อมูลและแสดงผล\nความเชื่อมโยง (Data Flow) ถึงหน่วยงานที่\nรับ-ส่งข้อมูลส่วนบุคคล เป็นลําดับ ก่อน-หลัง\nโดยระบบจะเชื่อมโยงข้อมูลที่มีอยู่ให้อย่าง\nอัตโนมัติ",
//     Responsive.isDesktop(context)?"แสดงรายงานสรุปบันทึกรายการข้อมูลส่วนบุคคลเป็นแผนภาพ (Dashboard) โดยสามารถรองรับการจัดเรียง (Sort), ค้นหา (Search) และ กรอง (Filter) ได้":Responsive.isTablet(context)?"แสดงรายงานสรุปบันทึกรายการข้อมูลส่วนบุคคลเป็นแผนภาพ (Dashboard) โดยสามารถรองรับการจัดเรียง\n(Sort), ค้นหา (Search) และ กรอง (Filter) ได้":"แสดงรายงานสรุปบันทึกรายการข้อมูลส่วน\nบุคคลเป็นแผนภาพ (Dashboard)\nโดยสามารถรองรับ การจัดเรียง (Sort),\nค้นหา (Search) และ กรอง (Filter) ได้",
//     Responsive.isDesktop(context)?"เชื่อมต่อกับระบบอื่นๆ ได้ ผ่าน REST API และนําข้อมูลออกมาในรูปแบบ Excel file ":Responsive.isTablet(context)?"เชื่อมต่อกับระบบอื่นๆ ได้ ผ่าน REST API และนําข้อมูลออกมาในรูปแบบ Excel file ":"เชื่อมต่อกับระบบอื่นๆ ได้ ผ่าน REST API\nและนําข้อมูลออกมาในรูปแบบ Excel file ",
//     Responsive.isDesktop(context)?"รองรับการเชื่อมต่อกับ MS SQL หรือ MySQL เพื่อสุ่มตรวจสอบข้อมูลในฐานข้อมูลส่วนบุคคล โดยรองรับข้อมูลเริ่มต้นที่ 10-500 GB ตามขนาดของข้อมูล":Responsive.isTablet(context)?"รองรับการเชื่อมต่อกับ MS SQL หรือ MySQL เพื่อสุ่มตรวจสอบข้อมูลในฐานข้อมูลส่วนบุคคล\nโดยรองรับข้อมูลเริ่มต้นที่ 10-500 GB ตามขนาดของข้อมูล": "รองรับการเชื่อมต่อกับ MS SQL หรือ MySQL\nเพื่อสุ่มตรวจสอบข้อมูลในฐานข้อมูล\nส่วนบุคคล โดยรองรับข้อมูลเริ่มต้นที่ 10-\n500 GB ตามขนาดของข้อมูล"
//   ];
//     return Center(
//       child: Container(
//         width: 1440,
//         color: Color.fromARGB(255, 5, 45, 97),
//         child: Center(
//           child: Container(
//             width: Responsive.isDesktop(context)
//                 ? 1440
//                 : Responsive.isTablet(context)
//                     ? 768
//                     : 375,
//             color: Color.fromARGB(255, 5, 45, 97),
//             child: Padding(
//               padding: Responsive.isDesktop(context)
//                   ? const EdgeInsets.only(top: 86, left: 128, bottom: 88)
//                   : Responsive.isTablet(context)
//                       ? const EdgeInsets.only(
//                           top: 54,
//                           left: 31,
//                         )
//                       : const EdgeInsets.only(
//                           top: 54,
//                           left: 21,
//                         ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: check.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Container(
//                           child: new Material(
//                             child: new InkWell(
//                               onTap: () {},
//                               onHover: (value) {
//                                 setState(() {
//                                   if (value) {
//                                     hoveredIndex = index;
//                                   } else {
//                                     hoveredIndex = null;
//                                   }
//                                 });
//                               },
//                               child: Center(
//                                 child: Container(
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         // height: 28,
//                                         color: hoveredIndex == index
//                                             ? Color.fromARGB(255, 5, 45, 97)
//                                             : Color.fromARGB(255, 5, 45, 97),
//                                         child: ListTile(
//                                           minLeadingWidth: 0,
//                                           minVerticalPadding: 0,
//                                           dense: true,
//                                           visualDensity: VisualDensity(
//                                               vertical: -4, horizontal: -4),
//                                           leading: Transform.translate(
//                                             offset: Offset(0, 0),
//                                             child: SizedBox(
//                                                 width: 19,
//                                                 height: 13,
//                                                 child: Image(
//                                                     image: AssetImage(hoveredIndex ==
//                                                             index
//                                                         ? "assets/features/blue-check.png"
//                                                         : "assets/features/white-check.png"))),
//                                           ),
//                                           title: Transform.translate(
//                                             offset: Offset(0, 0),
//                                             child: Responsive.isDesktop(context)
//                                                 ? Text(
//                                                     check[index],
//                                                     style: GoogleFonts
//                                                         .ibmPlexSansThai(
//                                                             color: hoveredIndex ==
//                                                                     index
//                                                                 ? Color
//                                                                     .fromARGB(
//                                                                         255,
//                                                                         75,
//                                                                         195,
//                                                                         211)
//                                                                 : Colors.white,
//                                                             fontSize: 16,
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w400),
//                                                   )
//                                                 : Responsive.isTablet(context)
//                                                     ? Text(
//                                                         check[index],
//                                                         style: GoogleFonts
//                                                             .ibmPlexSansThai(
//                                                                 color: hoveredIndex ==
//                                                                         index
//                                                                     ? Color
//                                                                         .fromARGB(
//                                                                             255,
//                                                                             75,
//                                                                             195,
//                                                                             211)
//                                                                     : Colors
//                                                                         .white,
//                                                                 fontSize: 16,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w400),
//                                                       )
//                                                     : Text(
//                                                         check[index],
//                                                         style: GoogleFonts
//                                                             .ibmPlexSansThai(
//                                                                 color: hoveredIndex ==
//                                                                         index
//                                                                     ? Color
//                                                                         .fromARGB(
//                                                                             255,
//                                                                             75,
//                                                                             195,
//                                                                             211)
//                                                                     : Colors
//                                                                         .white,
//                                                                 fontSize: 16,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w400),
//                                                       ),
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 30,
//                                         color: hoveredIndex == index
//                                             ? Color.fromARGB(255, 5, 45, 97)
//                                             : Color.fromARGB(255, 5, 45, 97),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             color: Colors.transparent,
//                           ),
//                         );
//                       }),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Example extends StatefulWidget {
//   @override
//   _ExampleState createState() => _ExampleState();
// }

// class _ExampleState extends State<Example> {
//   CarouselController _controller = CarouselController();
//   int _current = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 1440,
//       color: Color.fromARGB(255, 232, 242, 252),
//       child: Center(
//         child: Stack(
//           children: [
//             Container(
//               width: Responsive.isDesktop(context)
//                   ? 1440
//                   : Responsive.isTablet(context)
//                       ? 768
//                       : 375,
//               // height: 937,
//               // color: Colors.purple,
//               color: Color.fromARGB(255, 232, 242, 252),
//               child: Column(
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: Responsive.isDesktop(context)
//                         ? const EdgeInsets.only(top: 96, bottom: 48)
//                         : Responsive.isTablet(context)
//                             ? const EdgeInsets.only(top: 75, bottom: 38)
//                             : const EdgeInsets.only(top: 38, bottom: 25),
//                     child: Container(
//                       // color: Colors.amber,
//                       child: CarouselSlider(
//                         carouselController: _controller,
//                         options: CarouselOptions(
//                           viewportFraction: 1.25,
//                           height: Responsive.isDesktop(context)
//                               ? 500
//                               : Responsive.isTablet(context)
//                                   ? 380
//                                   : 165,
//                           // enlargeCenterPage: true,
//                           autoPlay: true,
//                           onPageChanged: (index, reason) {
//                             setState(() {
//                               _current = index;
//                               // print('Current Page: $_current');
//                             });
//                           },
//                         ),
//                         items: [Image.asset("assets/features/ex1.png")],
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "ตัวอย่างแสดงฟังก์ชันการใช้งาน PD Management ",
//                     style: GoogleFonts.ibmPlexSansThai(
//                         fontSize: Responsive.isMobile(context) ? 10 : 20,
//                         fontWeight: FontWeight.w500,
//                         color: Color.fromARGB(255, 75, 195, 211)),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(
//                     height: Responsive.isDesktop(context)
//                         ? 93
//                         : Responsive.isTablet(context)
//                             ? 75
//                             : 38,
//                   )
//                 ],
//               ),
//             ),
//             new Positioned(
//               top: Responsive.isDesktop(context)
//                   ? 300
//                   : Responsive.isTablet(context)
//                       ? 215
//                       : 127,
//               left: Responsive.isDesktop(context)
//                   ? 76
//                   : Responsive.isTablet(context)
//                       ? 20
//                       : 23,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: Responsive.isMobile(context) ? 29 : 60,
//                     height: Responsive.isMobile(context) ? 29 : 60,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.transparent,
//                         border: Border.all(
//                             color: Color.fromARGB(255, 74, 195, 212))),
//                     child: IconButton(
//                       icon: Icon(Icons.keyboard_arrow_left,
//                           size: Responsive.isMobile(context) ? 9 : 20,
//                           color: Color.fromARGB(255, 77, 193, 216)),
//                       onPressed: () {
//                         _controller.previousPage(
//                           duration: Duration(milliseconds: 300),
//                           curve: Curves.ease,
//                         );
//                       },
//                     ),
//                   ),
//                   SizedBox(
//                     width: Responsive.isDesktop(context)
//                         ? 1164
//                         : Responsive.isTablet(context)
//                             ? 613
//                             : 274,
//                   ),
//                   Container(
//                     width: Responsive.isMobile(context) ? 29 : 60,
//                     height: Responsive.isMobile(context) ? 29 : 60,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.transparent,
//                         border: Border.all(
//                             color: Color.fromARGB(255, 74, 195, 212))),
//                     child: IconButton(
//                       icon: Icon(Icons.keyboard_arrow_right,
//                           size: Responsive.isMobile(context) ? 9 : 20,
//                           color: Color.fromARGB(255, 77, 193, 216)),
//                       onPressed: () {
//                         _controller.nextPage(
//                           duration: Duration(milliseconds: 300),
//                           curve: Curves.ease,
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
