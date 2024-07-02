import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/products/productdetails.dart';
import 'package:wiseintern/responsive.dart';
import 'package:go_router/go_router.dart';

class Footer extends StatefulWidget {
  Footer();

  @override
  _FooterState createState() => _FooterState();  
}


class HoversocaiI {
  final Image img;
 
  HoversocaiI(this.img);
}

class Model {
  final String name;
  final String path;

  Model(this.name, this.path);
}

class Services {
  final String name;
  final String path;

  Services(this.name, this.path);
}

class _FooterState extends State<Footer> {
  int? onHovernav;
  int? onHoverser;



  @override
  Widget build(BuildContext context) {
    // List<String> listLo = [
    //   "/footer/location.png",
    //   "/footer/mail.png",
    //   "/footer/tel.png"
    // ];
    var listImg = Container(
        // color: Color.fromARGB(255, 195, 152, 22),
        height: Responsive.isDesktop(context)
            ? 150
            : Responsive.isTablet(context)
                ? 100
                : 50,
        width: Responsive.isDesktop(context) ? 50 : 20,
        child: Column(
          children: [
            Image.asset(
              "assets/footer/location.png",
            ),
            SizedBox(
              height: Responsive.isDesktop(context) ? 35 : 15,
            ),
            Image.asset(
              "assets/footer/mail.png",
            ),
            SizedBox(
              height: Responsive.isDesktop(context) ? 40 : 10,
            ),
            Image.asset(
              "assets/footer/tel.png",
            ),
          ],
        ));

    var list2 = Container(
        color: Color.fromARGB(0, 255, 193, 7),
        height: Responsive.isDesktop(context)
            ? 124
            : Responsive.isTablet(context)
                ? 213
                : 301,
        width: Responsive.isDesktop(context)
            ? 291
            : Responsive.isTablet(context)
                ? 97
                : 72,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "4, 4/5 Central Tower, 12th Floor, Room 1209, Rajdamri Road, Pathumwan, Pathumwan, Bangkok 10330",
              style: GoogleFonts.ibmPlexSansThai(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: Responsive.isDesktop(context) ? 10 : 5,
            ),
            Text(
              "info@thewiseworks.com",
              style: GoogleFonts.ibmPlexSansThai(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: Responsive.isDesktop(context) ? 10 : 5,
            ),
            Text(
              "02-000-0323",
              style: GoogleFonts.ibmPlexSansThai(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ));

    var QLink = Text(
      'Quick Links',
      style: GoogleFonts.ibmPlexSansThai(
          color: Colors.white,
          fontSize: Responsive.isDesktop(context)
              ? 18
              : Responsive.isTablet(context)
                  ? 20
                  : 25,
          fontWeight: FontWeight.w600),
    );

    List<Model> navbarButton = [
      Model("Home", "/"),
      Model("About Us", "/story"),
      Model("Our Rewards", "/story"),
      // Model("Blogs", "/"),
      Model("FAQ", "/faq")
    ];

    var navbarBut = Container(
        height: Responsive.isTablet(context) ? 190 : 160,
        // color: Colors.red,
        width: Responsive.isDesktop(context)
            ? 110
            : Responsive.isTablet(context)
                ? 110
                : 150,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: navbarButton.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Color.fromARGB(255, 52, 145, 206),
                child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          onHovernav = index;
                        } else {
                          onHovernav = null;
                        }
                      });
                    },
                    hoverColor: Color.fromARGB(255, 52, 145, 206),
                    child: Container(
                      color: Color.fromARGB(255, 52, 145, 206),
                      child: Column(
                        crossAxisAlignment: Responsive.isMobile(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () =>
                                  context.go('${navbarButton[index].path}'),
                              child: Text(
                                "${navbarButton[index].name}",
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: onHovernav == index
                                        ? Color.fromARGB(255, 75, 196, 213)
                                        : Colors.white),
                              )),
                          SizedBox(
                              height: Responsive.isTablet(context) ? 10 : 0)
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));

    var services = Container(
      width: 118.86,
      // height: 25,
      child: Text(
        "Our Services",
        style: GoogleFonts.ibmPlexSansThai(
          fontSize: Responsive.isDesktop(context) ? 18 : 14,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );

    List<Services> serviceButton = [
      Services("PDPA Management Platform", "/services"),
      Services("GAMS Master Suite", "/gams"),
      // Services("Get a Free Demo", "/demo"),
      // Services("Key Partners", "/"),
       Services("Join Our Amazing Team", "/")
    ];

    var serviceBut = Container(
        height: 160,
        // color: Colors.red,
        width: 230,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: serviceButton.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                // color: Color.fromARGB(255, 52, 145, 206),
                child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          onHoverser = index;
                        } else {
                          onHoverser = null;
                        }
                      });
                    },
                    hoverColor: Color.fromARGB(255, 52, 145, 206),
                    child: Container(
                      color: Color.fromARGB(255, 52, 145, 206),
                      child: Column(
                        crossAxisAlignment: Responsive.isMobile(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () =>
                                  context.go('${serviceButton[index].path}'),
                              child: Text(
                                "${serviceButton[index].name}",
                                style: GoogleFonts.ibmPlexSansThai(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: onHoverser == index
                                        ? Color.fromARGB(255, 75, 196, 213)
                                        : Colors.white),
                              )),
                          SizedBox(
                              height: Responsive.isTablet(context) ? 10 : 0)
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));

    var contact = Text(
      "Contact Us",
      style: GoogleFonts.ibmPlexSansThai(
        fontSize: Responsive.isDesktop(context) ? 18 : 20,
        fontWeight:
            Responsive.isDesktop(context) ? FontWeight.w700 : FontWeight.w600,
        color: Colors.white,
      ),
    );


    final _nameController = TextEditingController();
    final _EmailController = TextEditingController();

    var formtext = Container(
      width: Responsive.isDesktop(context)
          ? 407
          : Responsive.isTablet(context)
              ? 221
              : 341,
      height: Responsive.isDesktop(context)
          ? 48
          : Responsive.isTablet(context)
              ? 35
              : 50,
      child: TextFormField(
        // cursorWidth: 10.0,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Text Box',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          hintStyle: GoogleFonts.ibmPlexSansThai(
            color: Colors.blueGrey,
            fontSize: Responsive.isDesktop(context) ? 18 : 18,
          ),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: Responsive.isDesktop(context)
                ? BorderRadius.circular(32)
                : Responsive.isTablet(context)
                    ? BorderRadius.circular(10)
                    : BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: Responsive.isDesktop(context)
                ? BorderRadius.circular(32)
                : Responsive.isTablet(context)
                    ? BorderRadius.circular(10)
                    : BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 75, 195, 213), width: 5.0),
          ),
        ),
        // focusNode: _focusNode,
        onTap: () {},
        cursorColor: Color.fromARGB(255, 75, 195, 213),
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: Responsive.isDesktop(context) ? 18 : 18,
        ),
        // textAlign: TextAlign.end,
        controller: _nameController,
      ),
    );
    var formEmail = Container(
      width: Responsive.isDesktop(context)
          ? 198.17
          : Responsive.isTablet(context)
              ? 186.1
              : 287,
      height: Responsive.isDesktop(context)
          ? 45
          : Responsive.isTablet(context)
              ? 32.42
              : 50,
      child: TextFormField(
        // cursorWidth: 10.0,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Enter Your Email',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          hintStyle: GoogleFonts.ibmPlexSansThai(
            color: Colors.blueGrey,
            fontSize: Responsive.isDesktop(context) ? 18 : 18,
          ),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: Responsive.isDesktop(context)
                ? BorderRadius.circular(32)
                : Responsive.isTablet(context)
                    ? BorderRadius.circular(10)
                    : BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: Responsive.isDesktop(context)
                ? BorderRadius.circular(32)
                : Responsive.isTablet(context)
                    ? BorderRadius.circular(10)
                    : BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 75, 195, 213), width: 5.0),
          ),
        ),
        // focusNode: _focusNode,
        onTap: () {},
        cursorColor: Color.fromARGB(255, 75, 195, 213),
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: Responsive.isDesktop(context) ? 18 : 18,
        ),
        // textAlign: TextAlign.end,
        controller: _EmailController,
      ),
    );

    var button = SizedBox(
      width: 192.2,
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 75, 195, 211),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
        child: Text(
          'Send message',
          style: GoogleFonts.ibmPlexSansThai(
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
    var get = Container(
      width: Responsive.isDesktop(context) ? 356 : 200,
      height: 21,
      child: Text(
        "Get latest updates and offers. Try It Today.",
        style: GoogleFonts.ibmPlexSansThai(
            fontSize: Responsive.isDesktop(context) ? 16 : 12,
            fontWeight: FontWeight.w400,
            color: Colors.white),
      ),
    );

    var line = Container(
      width: 1316,
      height: 1,
      color: Colors.white,
    );

    return Center(
      child: Container(
        // color: Color.fromARGB(255, 52, 144, 206),
        width: double.infinity,
        // height: 447,
        // height: 700,
        // width: Responsive.isDesktop(context)
        //     ? 1440
        //     : Responsive.isTablet(context)
        //         ? 900
        //         : 500,
        child: Column(
          children: [
            // SizedBox(
            //   height: Responsive.isDesktop(context) ? 40 : 0,
            // ),
            if (Responsive.isDesktop(context))
              Container(
                color: Color.fromARGB(255, 52, 144, 206),
                width: 1440,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 380,
                              // height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/footer/logo.png"),
                                  Wrap(
                                    spacing: 10.0,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Column(
                                          children: [listImg],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [list2],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 400,
                              // height: 250,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          QLink,
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Wrap(
                                            spacing: 10.0,
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              navbarBut
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          services,
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Wrap(
                                            spacing: 10.0,
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              serviceBut
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: 25,
                                  // ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Wrap(
                                        spacing: 10.0,
                                        children: [
                                          Text(
                                            "Connect with Us",
                                            style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                                                           
                                        // Padding(
                                        //       padding: const EdgeInsets.only(top: 0),
                                        //       child: Row(
                                        //         children: [hoversocailImg],
                                        //       ),
                                        //     ),
                                          InkWell( 
                                            onTap: () {
                                                  GoRouter.of(context).go('https://www.facebook.com/thewiseworks');
                                                },
                                              // onTap: () => context.go('https://www.facebook.com/thewiseworks'),                                            
                                              child: Image.asset(
                                                  "assets/footer/fb.png")),
                                          InkWell(
                                            onTap: () {
                                                GoRouter.of(context).go('https://www.instagram.com/thewiseworks');
                                                },
                                              // onTap: () => context.go('https://www.instagram.com/thewiseworks'), 
                                              child: Image.asset(
                                                  "assets/footer/ig.png")),
                                          InkWell(
                                            onTap: () {
                                                GoRouter.of(context).go('https://www.youtube.com/@thewiseworks8166');
                                                },
                                              // onTap: () => context.go('https://www.youtube.com/@thewiseworks8166'),
                                              child: Image.asset(
                                                  "assets/footer/yt.png")),
                                          InkWell(
                                             onTap: () {
                                                GoRouter.of(context).go('https://www.tiktok.com/@thewiseworks');
                                                },
                                              // onTap: () => context.go('https://www.tiktok.com/@thewiseworks'),
                                              child: Image.asset(
                                                  "assets/footer/tiktok.png")),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 450,
                              // height: 230,
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          contact,
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      formtext,
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          formEmail,
                                          SizedBox(
                                            width: 15,
                                          ),
                                          button,
                                        ],
                                      ),
                                      SizedBox(
                                        height: 22,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 30),
                                            child: get,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          line,
                          Column(children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 1400,
                                      height: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 70),
                                            child: Container(
                                                // width: 400,
                                                child: Text(
                                              "© Copyright 2022 Thewiseworks | All Right Reserved.",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                              textAlign: TextAlign.start,
                                            )),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Wrap(
                                              spacing: 10,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 60),
                                                      child: TextButton(
                                                        onPressed: () => context
                                                            .go('/privacypolicy'),
                                                        child: Text(
                                                          "Privacy Policy",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  color: Colors
                                                                      .white,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 60,
                                                              right: 60),
                                                      child: TextButton(
                                                          onPressed: () =>
                                                              context.go(
                                                                  '/termsofservice'),
                                                          child: Text(
                                                            "Term of Services",
                                                            style: GoogleFonts.ibmPlexSansThai(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .white,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          )),
                                                    ),
                                                    TextButton(
                                                        onPressed: () => context
                                                            .go('/cookiespolicy'),
                                                        child: Text(
                                                          "Cookie",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .white,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ]),
                        ]),
                  ],
                ),
              )
            else
              Responsive.isTablet(context)
                  ? Center(
                      // width: 1440,
                      // color: Color.fromARGB(255, 232, 242, 254),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 1440,
                                height: 711,
                                // color: Colors.amber,
                              ),
                              Container(
                                width: 1440,
                                height: 171,
                                color: Color.fromARGB(255, 232, 242, 254),
                              ),
                              new Positioned(
                                top: 171,
                                child: Container(
                                  width: 1440,
                                  height: 540,
                                  color: Color.fromARGB(255, 52, 145, 206),
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 171),
                                      child: Container(
                                        width: 768,
                                        height: 540,
                                        color:
                                            Color.fromARGB(255, 52, 145, 206),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 108, left: 39),
                                                  child: Container(
                                                    width: 123.39,
                                                    height: 48,
                                                    child: Image.asset(
                                                        "assets/footer/logo.png"),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 145.61,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 100),
                                                  child: QLink,
                                                ),
                                                SizedBox(
                                                  width: 87,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 100),
                                                  child: contact,
                                                )
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 35, left: 40),
                                                    child: Container(
                                                      width: 213,
                                                      // height: 97,
                                                      child: Text(
                                                        "The Wise Work Co.,Ltd.\n4 Central Tower, 12th Floor, Room 1209, Rajdamri Road, Pathumwan, Bangkok ",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 38, left: 40),
                                                    child: Container(
                                                      width: 218,
                                                      height: 25,
                                                      child: Row(
                                                        children: [
                                                          InkWell(
                                                            onTap: () => context.go('https://www.facebook.com/thewiseworks'), 
                                                            child: Container(
                                                                width: 25,
                                                                height: 25,
                                                                child:
                                                                    Image.asset(
                                                                  "assets/footer/fb.png",
                                                                )),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 18),
                                                            child: Container(
                                                              width: 1,
                                                              height: 20,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 20),
                                                            child: InkWell(
                                                              onTap: () => context.go('https://www.instagram.com/thewiseworks'), 
                                                              child: Container(
                                                                  width: 25,
                                                                  height: 25,
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/footer/ig.png",
                                                                  )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 18),
                                                            child: Container(
                                                              width: 1,
                                                              height: 20,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 20),
                                                            child: InkWell(
                                                              onTap: () => context.go('https://www.youtube.com/@thewiseworks8166'),
                                                              child: Container(
                                                                  width: 25,
                                                                  height: 25,
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/footer/yt.png",
                                                                  )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 18),
                                                            child: Container(
                                                              width: 1,
                                                              height: 20,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 20),
                                                            child: InkWell(
                                                              onTap: () => context.go('https://www.tiktok.com/@thewiseworks'),
                                                              child: Container(
                                                                  width: 25,
                                                                  height: 25,
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/footer/tiktok.png",
                                                                  )),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10, left: 61),
                                                  child: navbarBut,
                                                ),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 13,
                                                              left: 87),
                                                      child: Container(
                                                        width: 213,
                                                        height: 48,
                                                        child: Text(
                                                          "Get latest updates and offers.\nTry It Today.",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 32,
                                                              left: 87),
                                                      child: formtext,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 6.58,
                                                                  left: 87),
                                                          child: formEmail,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 7.87,
                                                                  left: 3.76),
                                                          child: Container(
                                                            width: 31.34,
                                                            height: 29.83,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            3),
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        75,
                                                                        195,
                                                                        211)),
                                                            child: InkWell(
                                                              onTap: () {
                                                                // do something when the button is tapped
                                                              },
                                                              child: Image.asset(
                                                                  '/footer/send.png'),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 30,
                                              ),
                                              child: Center(
                                                child: Container(
                                                  width: 688,
                                                  height: 2,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20, left: 40),
                                              child: Container(
                                                width: 389,
                                                // height: 24,
                                                child: Text(
                                                  "©  Copyright 2022 Thewiseworks | All Right Reserved.",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Wrap(
                                                spacing: 10,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 40),
                                                        child: TextButton(
                                                            onPressed: () =>
                                                                context.go(
                                                                    '/privacypolicy'),
                                                            child: Text(
                                                              "Privacy Policy",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  color: Colors
                                                                      .white,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16),
                                                            )),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 60,
                                                                right: 60),
                                                        child: TextButton(
                                                            onPressed: () =>
                                                                context.go(
                                                                    '/termsofservice'),
                                                            child: Text(
                                                              "Term of Services",
                                                              style: GoogleFonts.ibmPlexSansThai(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .white,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            )),
                                                      ),
                                                      TextButton(
                                                          onPressed: () =>
                                                              context.go(
                                                                  '/cookiespolicy'),
                                                          child: Text(
                                                            "Cookie",
                                                            style: GoogleFonts.ibmPlexSansThai(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .white,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 86, left: 40, right: 40),
                                      child: Container(
                                        width: 688,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color.fromARGB(
                                              255, 248, 248, 255),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 45,
                                                  left: 30,
                                                  bottom: 45),
                                              child: Container(
                                                width: 60,
                                                height: 60,
                                                child: Image.asset(
                                                  "assets/footer/email-icon.png",
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 63,
                                                  left: 16,
                                                  bottom: 63),
                                              child: Text(
                                                "info@thewisework.com",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 35, 34, 51)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 22,
                                                  bottom: 22,
                                                  left: 55),
                                              child: Container(
                                                width: 1,
                                                height: 106,
                                                color: Color.fromARGB(
                                                    255, 108, 108, 114),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 45,
                                                  left: 60,
                                                  bottom: 45),
                                              child: Container(
                                                width: 60,
                                                height: 60,
                                                child: Image.asset(
                                                  "assets/footer/call-icon.png",
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 63,
                                                  left: 18,
                                                  bottom: 63),
                                              child: Container(
                                                width: 183,
                                                height: 24,
                                                child: Text(
                                                  "02-103-4379",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color.fromARGB(
                                                              255, 35, 34, 51)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 1440,
                              height: 1323,
                              color: Color.fromARGB(255, 52, 145, 206),
                            ),
                            Container(
                              width: 1440,
                              height: 223,
                              color: Color.fromARGB(255, 232, 242, 254),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 223),
                                child: Container(
                                  width: 375,
                                  height: 1100,
                                  color: Color.fromARGB(255, 52, 145, 206),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 209, left: 29),
                                        child: Text(
                                          "Contact Us",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 11,
                                          left: 29,
                                        ),
                                        child: Text(
                                          "Get latest updates and offers. Try It Today.",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 29, left: 19, right: 15),
                                        child: formtext,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 29, left: 19, right: 5.8),
                                            child: formEmail,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 29),
                                            child: Container(
                                              width: 48.34,
                                              height: 46,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                  color: Color.fromARGB(
                                                      255, 75, 195, 211)),
                                              child: InkWell(
                                                onTap: () {
                                                  // do something when the button is tapped
                                                },
                                                child: Image.asset(
                                                    'assets/footer/send.png'),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20,
                                            left: 32.76,
                                            right: 247.24),
                                        child: Container(
                                          width: 95,
                                          height: 35,
                                          child: Image.asset(
                                              "assets/footer/logo.png"),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25, left: 42.76, right: 31.24),
                                        child: Container(
                                          width: 301,
                                          height: 72,
                                          child: Text(
                                            "The Wise Work Co.,Ltd.\n4 Central Tower, 12th Floor, Room 1209, Rajdamri Road, Pathumwan, Bangkok",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 33, left: 31, right: 68.24),
                                        child: Container(
                                            width: 275.76,
                                            height: 25,
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 25,
                                                  height: 25,
                                                  child: InkWell(
                                                    onTap: () => context.go('https://www.facebook.com/thewiseworks'),
                                                    child: Image.asset(
                                                        'assets/footer/fb.png'),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 28,
                                                ),
                                                Container(
                                                  width: 2,
                                                  height: 20,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(width: 29),
                                                Container(
                                                  width: 25,
                                                  height: 25,
                                                  child: InkWell(
                                                    onTap: () => context.go('https://www.instagram.com/thewiseworks'),
                                                    child: Image.asset(
                                                        'assets/footer/ig.png'),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 28,
                                                ),
                                                Container(
                                                  width: 2,
                                                  height: 20,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: 29,
                                                ),
                                                Container(
                                                  width: 25,
                                                  height: 25,
                                                  child: InkWell(
                                                    onTap: () => context.go('https://www.youtube.com/@thewiseworks8166'),
                                                    child: Image.asset(
                                                        'assets/footer/yt.png'),
                                                  ),
                                                ),
                                                SizedBox(width: 28),
                                                Container(
                                                  width: 2,
                                                  height: 20,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(width: 26.8),
                                                Container(
                                                  width: 25,
                                                  height: 25,
                                                  child: InkWell(
                                                    onTap: () => context.go('https://www.tiktok.com/@thewiseworks'),
                                                    child: Image.asset(
                                                        'assets/footer/tiktok.png'),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 53,
                                        ),
                                        child: Center(
                                          child: Container(
                                            width: 300,
                                            // height: 262,
                                            color: Color.fromARGB(
                                                255, 52, 145, 206),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text('Quick Links',
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            color: Colors.white,
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                navbarBut
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25, left: 16, right: 16),
                                        child: Container(
                                          width: 343,
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 26,
                                        ),
                                        child: Container(
                                          width: 303,
                                          height: 20,
                                          child: Text(
                                            "©  Copyright 2022 Thewiseworks | All Right Reserved.",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Wrap(
                                          spacing: 10,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                TextButton(
                                                    onPressed: () => context
                                                        .go('/privacypolicy'),
                                                    child: Text(
                                                      "Privacy Policy",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 13,
                                                              color:
                                                                  Colors.white,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    )),
                                                TextButton(
                                                    onPressed: () => context
                                                        .go('/termsofservice'),
                                                    child: Text(
                                                      "Term of Services",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 13,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    )),
                                                TextButton(
                                                    onPressed: () => context
                                                        .go('/cookiespolicy'),
                                                    child: Text(
                                                      "Cookie",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 13,
                                                              color:
                                                                  Colors.white,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 74),
                                child: Container(
                                  width: 342,
                                  height: 310,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          child: Image.asset(
                                              "assets/footer/email-icon.png"),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          "info@thewiseworks.com",
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(
                                                  255, 35, 34, 51)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Container(
                                          width: 117,
                                          height: 3,
                                          color:
                                              Color.fromARGB(255, 35, 34, 51),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          child: Image.asset(
                                              "assets/footer/call-icon.png"),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Container(
                                          width: 228,
                                          height: 30,
                                          child: Text(
                                            "02-103-4379",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 35, 34, 51)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
    );
  }
}
