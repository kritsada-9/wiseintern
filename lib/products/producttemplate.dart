import 'package:flutter/material.dart';
import 'package:wiseintern/navbar.dart';
import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wiseintern/home/footer.dart';
import 'package:wiseintern/products/productdetails.dart';

import 'package:wiseintern/home/features.dart';
import 'package:wiseintern/products/productwith.dart';
import 'package:wiseintern/services/compare.dart';

class MyPackages extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String detail;
  MyPackages(this.title, this.description, this.imageUrl, this.detail);

  @override
  Widget build(BuildContext context) {
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
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Column(
                        children: [
                          Container(
                            width: 1440,
                            color: Color.fromARGB(255, 232, 242, 254),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 53, left: 109, bottom: 40),
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 57, 128, 237),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 57, 128, 237),
                                            width: 5)),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    height: 25,
                                    child: Text(
                                      "Our Services",
                                      style: GoogleFonts.ibmPlexSansThai(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 57, 128, 237)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 62, left: 150),
                                    child: Container(
                                      width: 444,
                                      // color: Colors.amber,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 22),
                                            child: Text(
                                              "PDPA MANAGEMENT PLATFORM",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 0, 112, 240)),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          Text(
                                            "$title",
                                            style: GoogleFonts.poppins(
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 5, 45, 97)),
                                            textAlign: TextAlign.start,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 32),
                                            child: Text(
                                              "$description",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 32, right: 70),
                                            child: Text(
                                              "$detail",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromARGB(
                                                          255, 23, 24, 26)),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 32),
                                                child: SizedBox(
                                                  width: 193,
                                                  height: 48,
                                                  child: ElevatedButton(
                                                      onPressed: () => context
                                                          .go('/contact'),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                52, 145, 206),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        'รับใบเสนอราคา',
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      )),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 32, left: 16),
                                                child: SizedBox(
                                                  width: 193,
                                                  height: 48,
                                                  child: ElevatedButton(
                                                      onPressed: () =>
                                                          context.go('/demo'),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                75, 195, 211),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        'Request Demo',
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                color: Color.fromARGB(0, 255, 193, 7),
                                child: Image.asset(
                                  'assets/product/creative.png',
                                  width: 828,
                                  height: 628,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  : Responsive.isTablet(context)
                      ? Container(
                          width: 1440,
                          color: Colors.white,
                          child: Container(
                            width: 768,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 768,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 76, left: 40, bottom: 60),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
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
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            // color: Colors.amber,
                                            height: 25,
                                            child: Text(
                                              "Our Services",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      color: Color.fromARGB(
                                                          255, 57, 128, 237)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Container(
                                      width: 467,
                                      // color: Colors.amber,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "PDPA MANAGEMENT PLATFORM",
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 0, 112, 240)),
                                            textAlign: TextAlign.start,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 0),
                                            child: Text(
                                              "$title",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 50,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 5, 45, 97)),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 32),
                                            child: Text(
                                              "$description",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 32, right: 100),
                                            child: Text(
                                              "$detail",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromARGB(
                                                          255, 23, 24, 26)),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 32),
                                                child: SizedBox(
                                                  width: 193,
                                                  height: 48,
                                                  child: ElevatedButton(
                                                      onPressed: () => context
                                                          .go('/contact'),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                52, 145, 206),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        'รับใบเสนอราคา',
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      )),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 32, left: 16),
                                                child: SizedBox(
                                                  width: 193,
                                                  height: 48,
                                                  child: ElevatedButton(
                                                      onPressed: () =>
                                                          context.go('/demo'),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                75, 195, 211),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        'Request Demo',
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 70, left: 20),
                                    child: Container(
                                      color: Color.fromARGB(0, 255, 193, 7),
                                      child: Image.asset(
                                        'assets/product/creative.png',
                                        width: 828,
                                        height: 628,
                                      ),
                                    ),
                                  ),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 30,
                                  ),
                                  child: Text(
                                    "PDPA MANAGEMENT\nPLATFORM",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 0, 112, 240)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                  ),
                                  child: Text(
                                    "$title",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 5, 45, 97)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    "$description",
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 65, right: 65, bottom: 30),
                                  child: Text(
                                    "$detail",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ibmPlexSansThai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: SizedBox(
                                    width: 193,
                                    height: 48,
                                    child: ElevatedButton(
                                        onPressed: () => context.go('/contact'),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 52, 145, 206),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                        child: Text(
                                          'รับใบเสนอราคา',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: SizedBox(
                                    width: 193,
                                    height: 48,
                                    child: ElevatedButton(
                                        onPressed: () => context.go('/demo'),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 75, 195, 211),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                        child: Text(
                                          'Request Demo',
                                          style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 50, bottom: 30),
                                  child: Container(
                                    color: Color.fromARGB(0, 255, 193, 7),
                                    child: Image.asset(
                                      'assets/product/mobile_creative.png',
                                      width: 368,
                                      height: 265,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                        ),
              ProductDetails(
                title: title,
              ),
              FeaturesPage(),
              ProductWith(
                title: title,
              ),
              Compare(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
