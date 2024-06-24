import 'package:flutter/material.dart';
import '../responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:go_router/go_router.dart';
import 'package:wiseintern/home/header_video.dart';

class StoryPage extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<StoryPage> {
  final String imagePath = 'assets/carousel/';

  // final CarouselController _controller = CarouselController();

  // List _isHovering = [false, false, false, false, false];
  // List _isSelected = [true, false, false, false, false];

  int _current = 0;

  List<Widget> med_images = [
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          // opacity: 80,
          image: AssetImage('assets/carousel/med_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/med_crs2.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/med_crs3.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/med_crs4.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/med_crs5.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];


  List<Widget> min_images = [
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carousel/min_crs.png'),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];


  
  final controller =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);

  final GlobalKey _creatingSuccessKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    List<String> storylist = [
      "ประสบการณ์การพัฒนาระบบ และตรวจรับรองบริษัทจดทะเบียนฯ",
      "เชี่ยวชาญงานตรวจสอบ และลงนามรับรองตามกฎระเบียบของหน่วยงานกำกับดูแล",
      "เชี่ยวชาญงานพัฒนาโปรแกรมระบบด้านความมั่นคงปลอดภัยสารสนเทศ",
      "เชี่ยวชาญงานพัฒนาโปรแกรมตามกฎหมาย กฎระเบียบ และมาตรฐานสากล",
    ];

    // var groupofpic = Container(
    //   height: 380,
    //   width: 720,
    //   // alignment: FractionalOffset.center,
    //   child: new Stack(
    //     //alignment:new Alignment(x, y)
    //     children: <Widget>[
    //       new SizedBox(
    //         height: 380,
    //         width: 720,
    //       ),
    //       new Positioned(
    //         height: 348,
    //         width: 530,
    //         child: new Image(image: AssetImage("assets/story/storybg.png")),
    //       ),
    //       new Positioned(
    //           height: 328,
    //           width: 720,
    //           child: new Image(image: AssetImage("assets/story/storypic.png"))),
    //     ],
    //   ),
    // );
    // Container _buildBgHeader(BuildContext context) {
    //     return Container(
    //       width: MediaQuery.of(context).size.width,
    //       height: MediaQuery.of(context).size.width < 800 ? 400 : 500,
    //       child: ShaderMask(
    //         blendMode: BlendMode.dstIn,
    //         shaderCallback: (Rect bounds) {
    //           return const LinearGradient(
    //             begin: Alignment.centerRight,
    //             end: Alignment.centerLeft,
    //             colors: [
    //               Color.fromARGB(255, 99, 99, 99),
    //               Colors.transparent
    //             ],
    //             stops: [5, 5],
    //           ).createShader(bounds);
    //         },
    //         child: Image.asset(
    //           'assets/images/HD-Home03.gif',
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     );
    //   }

    var title = Container(
      color: Color.fromARGB(0, 0, 187, 212),
      height: !Responsive.isMobile(context) ? 62 : 120,
      width: Responsive.isDesktop(context)
          ? 649
          : Responsive.isTablet(context)
              ? 496
              : 313,
      child: Text(
          !Responsive.isMobile(context) ? 'wisework Story' : 'wisework\nStory',
          style: GoogleFonts.ibmPlexSansThai(
              height: 1.25,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 255, 255, 255))),
    );
    var aboutus = Container(
      color: Color.fromARGB(0, 255, 153, 0),
      height: Responsive.isDesktop(context)
          ? 158
          : Responsive.isTablet(context)
              ? 85
              : 158,
      width: Responsive.isDesktop(context)
          ? 726
          : Responsive.isTablet(context)
              ? 656
              : 313,
      child: Text(
        Responsive.isDesktop(context)
            ? '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมาย\n และกฎระเบียบจากหน่วยงานกำกับดูแล โดยทีมนักพัฒนา\n และผู้เชี่ยวชาญมากประสบการณ์"'
            : Responsive.isTablet(context)
                ? '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับกฎหมายและกฎระเบียบจากหน่วยงานกำกับ\nดูแลโดยทีมนักพัฒนาและผู้เชี่ยวชาญมากประสบการณ์"'
                : '“เรา คือ ผู้ให้บริการและคำปรึกษาเกี่ยวกับ\nกฎหมาย และกฎระเบียบจากหน่วยงาน\nกำกับดูแล โดยทีมนักพัฒนาและผู้เชี่ยวชาญ\nมากประสบการณ์"',
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: Responsive.isDesktop(context) ? 24 : 18,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
    var aboutlist = Container(
      color: Color.fromARGB(0, 255, 255, 255),
      height: Responsive.isDesktop(context) ? 210 : 130,
      width: Responsive.isDesktop(context) ? 726 : 621,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: storylist.length,
        itemBuilder: (context, index) {
          return ListTile(
            minLeadingWidth: 0,
            minVerticalPadding: 0,
            dense: true,
            visualDensity: VisualDensity(vertical: -4, horizontal: -4),
            leading: Transform.translate(
              offset: Offset(0, 0),
              child: SizedBox(
                  width: Responsive.isDesktop(context) ? 8 : 5,
                  height: Responsive.isDesktop(context) ? 8 : 5,
                  child: Image(image: AssetImage("assets/story/record.png"))),
            ),
            title: Transform.translate(
              offset: Offset(0, 0),
              child: Text(
                storylist[index],
                style: GoogleFonts.ibmPlexSansThai(
                    color: Colors.white,
                    fontSize: Responsive.isDesktop(context) ? 20 : 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          );
        },
      ),
    );
    var advice = SizedBox(
      width: 193,
      height: 47,
      child: ElevatedButton(
          onPressed: () => context.go('/contact'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(75, 195, 211, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'รับคำปรึกษา',
            style: GoogleFonts.ibmPlexSansThai(
                fontSize: 20, fontWeight: FontWeight.w500),
          )),
    );

    return Center(
      child: Container(
        color: Color.fromARGB(255, 5, 45, 97),
        width: 1440,
        child: Column(
          children: [
            Container(
              width: 1440,
              color: Responsive.isDesktop(context)
                  ? Color.fromARGB(255, 232, 242, 254)
                  : Color.fromARGB(255, 5, 45, 97),
              child: Column(
                children: [                 
                    Stack(
                      // children: [
                      //   HeaderHome(),
                      // ],
                      // children: [
                      //   // _buildBgHeader(context),  
                      //   HeaderHome(),           
                      //   Positioned(
                      //     bottom: 0,
                      //     right: 0,
                      //     child: Column(
                      //       children: [                              
                      //       ],
                      //     ),
                      //   ),
                      // ],
                    ),
                    // CreatingSuccess(key: _creatingSuccessKey),
                  SizedBox(height: Responsive.isDesktop(context) ? 83 : 0),
                  // Stack(
                  //   children: [
                  //     Column(
                  //       children: [
                  //         CarouselSlider(
                  //           items: !Responsive.isMobile(context)
                  //               ? med_images
                  //               : min_images,
                  //           options: CarouselOptions(
                  //               scrollPhysics: PageScrollPhysics(),
                  //               //  NeverScrollableScrollPhysics(),
                  //               // enlargeCenterPage: true,
                  //               aspectRatio: Responsive.isDesktop(context)
                  //                   ? 1440 / 1039
                  //                   : Responsive.isTablet(context)
                  //                       ? 768 / 554
                  //                       : 375 / 538,
                  //               autoPlay: true,
                  //               viewportFraction: 1,
                  //               onPageChanged: (index, reason) {
                  //                 setState(() {
                  //                   _current = index;
                  //                 });
                  //               }),
                  //           // carouselController: _controller,
                  //         ),
                  //         SizedBox(
                  //             height: Responsive.isDesktop(context) ? 0 : 25),
                  //       ],
                  //     ),
                  //     Positioned(
                  //       bottom: Responsive.isDesktop(context) ? 201 : 0,
                  //       left: Responsive.isDesktop(context)
                  //           ? 598
                  //           : (MediaQuery.of(context).size.width - 222) / 2,
                  //       right: Responsive.isDesktop(context)
                  //           ? 598
                  //           : (MediaQuery.of(context).size.width - 222) / 2,
                  //       child: SizedBox(
                  //         width: Responsive.isDesktop(context) ? 243 : 222,
                  //         height: 50,
                  //         child: ElevatedButton(
                  //             onPressed: () => context.go('/demo'),
                  //             style: ElevatedButton.styleFrom(
                  //               backgroundColor:
                  //                   Color.fromRGBO(75, 195, 211, 1),
                  //               shape: RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(44.0),
                  //               ),
                  //             ),
                  //             child: Text(
                  //               "Get A free Demo",
                  //               style: GoogleFonts.ibmPlexSansThai(
                  //                   fontSize:
                  //                       Responsive.isDesktop(context) ? 24 : 20,
                  //                   fontWeight: FontWeight.w500),
                  //             )),
                  //       ),
                  //     ),
                  //     Positioned(
                  //       bottom: Responsive.isDesktop(context)
                  //           ? 61
                  //           : Responsive.isTablet(context)
                  //               ? 100
                  //               : 96,
                  //       left: Responsive.isDesktop(context)
                  //           ? 675
                  //           : (MediaQuery.of(context).size.width / 2) - 44,
                  //       right: Responsive.isDesktop(context)
                  //           ? 675
                  //           : (MediaQuery.of(context).size.width / 2) - 44,
                  //       child: Container(
                  //         child: AnimatedSmoothIndicator(
                  //           activeIndex: _current,
                  //           count: 5,
                  //           effect: CustomizableEffect(
                  //             activeDotDecoration: DotDecoration(
                  //               width: 16,
                  //               height: 6,
                  //               color:
                  //                   //  Responsive.isDesktop(context)
                  //                   //     ? Color.fromARGB(255, 0, 0, 0)
                  //                   //     :
                  //                   Colors.white,
                  //               borderRadius: BorderRadius.circular(50),
                  //             ),
                  //             dotDecoration: DotDecoration(
                  //               width: 10,
                  //               height: 4,
                  //               color:
                  //                   //  Responsive.isDesktop(context)
                  //                   //     ? Colors.grey
                  //                   //     :
                  //                   Color.fromARGB(40, 255, 255, 255),
                  //               borderRadius: BorderRadius.circular(50),
                  //               verticalOffset: 0,
                  //             ),
                  //             spacing: 6.0,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            Container(
              width: 1440,
              color: Color.fromARGB(0, 233, 255, 31),
              child: Column(
                children: [
                  SizedBox(
                    height: Responsive.isDesktop(context)
                        ? 112
                        : Responsive.isTablet(context)
                            ? 83
                            : 39,
                  ),
                  Responsive.isDesktop(context)
                      ? Row(
                          children: [
                            SizedBox(
                                width: Responsive.isDesktop(context) ? 36 : 80),
                            Stack(children: <Widget>[
                              new SizedBox(
                                height: 507,
                                width: 1404,
                              ),
                              new Positioned(
                                  child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    title,
                                    SizedBox(
                                      height: 12,
                                    ),
                                    aboutus,
                                    SizedBox(
                                      height: 12,
                                    ),
                                    aboutlist,
                                    Transform.translate(
                                        offset: Offset(250.0, -30.0),
                                        child: advice)
                                  ],
                                ),
                              )),
                              new Positioned(
                                top: 34,
                                left: 834,
                                height: 330,
                                width: 501,
                                child: new Image(
                                    image:
                                        AssetImage("assets/story/storybg.png")),
                              ),
                              new Positioned(
                                  top: 101,
                                  left: 716,
                                  height: 313,
                                  width: 687,
                                  child: new Image(
                                      image: AssetImage(
                                          "assets/story/storypic.png"))),
                            ]),
                          ],
                        )
                      : Container(
                          // padding: const EdgeInsets.only(left: 0),
                          color: Color.fromARGB(0, 204, 220, 57),
                          child: Column(
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      title,
                                      SizedBox(
                                        height: Responsive.isTablet(context)
                                            ? 12
                                            : 32,
                                      ),
                                      aboutus,
                                    ],
                                  ),
                                  Responsive.isTablet(context)
                                      ? aboutlist
                                      : SizedBox(
                                          height: 32,
                                        ),
                                  Column(
                                    crossAxisAlignment:
                                        Responsive.isTablet(context)
                                            ? CrossAxisAlignment.center
                                            : CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: Responsive.isTablet(context)
                                            ? 60
                                            : 1,
                                        width: Responsive.isTablet(context)
                                            ? 704
                                            : 313,
                                      ),
                                      advice,
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                  SizedBox(
                    height: Responsive.isDesktop(context)
                        ? 81
                        : Responsive.isTablet(context)
                            ? 71
                            : 64,
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
