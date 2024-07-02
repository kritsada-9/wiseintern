import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/responsive.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class Address extends StatefulWidget {
  @override
  _Address createState() => _Address();
}

class _Address extends State<Address> {
  final List<String> optionsItem = [
    "ขอรายละเอียดเพิ่มเติม",
    "รับใบเสนอราคา",
    "อื่นๆ (โปรดระบุ)",
  ];

  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Responsive.isDesktop(context)
            ? Container(
                width: 1440,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 1440,
                        color: Color.fromARGB(255, 232, 242, 254),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 1440,
                                  height: 1181,
                                  color: Color.fromARGB(255, 232, 242, 254),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 57, left: 100),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
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
                                            "Contact Us",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 57, 128, 237)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                new Positioned(
                                  top: 78,
                                  left: 284,
                                  child: Container(
                                    width: 1097,
                                    height: 1000,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Colors.white),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 284, top: 78),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "Send Us a",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: 32,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Colors.black),
                                                  ),
                                                  Text(
                                                    "Message",
                                                    style: GoogleFonts
                                                        .ibmPlexSansThai(
                                                            fontSize: 32,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Colors.black),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 80, top: 20),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "สอบถามรายละเอียดเพิ่มเติม ส่งข้อความถึงเรา ที่นี่\nทีมงานของเราจะติดต่อกลับท่านโดยเร็วที่สุด",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 284, top: 88),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    width: 310,
                                                    child: Text(
                                                      "Name",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 310,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'wisework',
                                                        hintStyle: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        232,
                                                                        242,
                                                                        254)),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 20, 0, 0),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 32),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 310,
                                                      child: Text(
                                                        "Company / Business Name",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .black),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 310,
                                                      child: TextField(
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              'The wisework co.,Ltd.',
                                                          hintStyle: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .fromLTRB(0,
                                                                      20, 0, 0),
                                                          border:
                                                              UnderlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        52,
                                                                        145,
                                                                        206)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 284, top: 64),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    width: 310,
                                                    child: Text(
                                                      "Email address",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 310,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'hello@thewiseworks.com',
                                                        hintStyle: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        232,
                                                                        242,
                                                                        254)),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 20, 0, 0),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 32),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 310,
                                                      child: Text(
                                                        "Phone",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .black),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 310,
                                                      child: TextField(
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: <
                                                            TextInputFormatter>[
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              'xx-xxxx-xxxx',
                                                          hintStyle: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          232,
                                                                          242,
                                                                          254)),
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .fromLTRB(0,
                                                                      20, 0, 0),
                                                          border:
                                                              UnderlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        52,
                                                                        145,
                                                                        206)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 170,
                                            top: 77,
                                          ),
                                          child: Container(
                                            width: 698,
                                            // color: Colors.pinkAccent,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "How can we help you?",
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromARGB(
                                                        255, 51, 51, 51),
                                                  ),
                                                  textAlign: TextAlign.start,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16),
                                                  child: Container(
                                                    width: 698,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Color.fromARGB(
                                                            255,
                                                            232,
                                                            242,
                                                            254)),
                                                    child:
                                                        DropdownButtonHideUnderline(
                                                      child: DropdownButton2(
                                                        value: selectedOption,
                                                        hint: Text(
                                                          'Select an option',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          130,
                                                                          130,
                                                                          130)),
                                                        ),
                                                        buttonStyleData:
                                                            const ButtonStyleData(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            12)),

                                                        iconStyleData:
                                                            const IconStyleData(
                                                          icon: Icon(
                                                            Icons
                                                                .arrow_drop_down_outlined,
                                                          ),
                                                          iconSize: 20,
                                                          iconEnabledColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  79,
                                                                  79,
                                                                  79),
                                                          iconDisabledColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  79,
                                                                  79,
                                                                  79),
                                                        ),
                                                        isExpanded: true,
                                                        items: optionsItem
                                                            .map((option) {
                                                          return DropdownMenuItem<
                                                              String>(
                                                            value: option,
                                                            child: Text(
                                                              option,
                                                              style: GoogleFonts.montserrat(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          );
                                                        }).toList(),

                                                        dropdownStyleData:
                                                            DropdownStyleData(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        // itemHeight: 8,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            selectedOption =
                                                                value;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 43, left: 170),
                                          child: Container(
                                            width: 698,
                                            height: 133,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 232, 242, 254),
                                                    width: 2)),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  hintText:
                                                      "กรุณาระบุรายละเอียดเพื่อติดต่อกลับ...",
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 20,
                                                          horizontal: 10),
                                                  // contentPadding:EdgeInsets.fromLTRB(50, 50, 0, 0),
                                                  hintStyle:
                                                      GoogleFonts.montserrat(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color.fromARGB(
                                                              255,
                                                              130,
                                                              130,
                                                              130)),
                                                  border: InputBorder.none),
                                              onChanged: (value) {},
                                              maxLines: 5,
                                              // validator: (value) {
                                              //   if (value.isEmpty) {
                                              //     return 'Please enter your name';
                                              //   }
                                              //   return null;
                                              // },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 17),
                                          child: Center(
                                            child: SizedBox(
                                              width: 188,
                                              height: 47,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 75, 195, 211),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  'Send Message',
                                                  style: GoogleFonts
                                                      .ibmPlexSansThai(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                new Positioned(
                                  top: 218,
                                  left: 37,
                                  child: Container(
                                    width: 460,
                                    height: 659,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 2,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        color: Colors.white),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 61, top: 70),
                                          child: Text(
                                            "Contact",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 61,
                                          ),
                                          child: Text(
                                            "Directly",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 56, left: 61),
                                          child: Wrap(
                                            children: [
                                              SizedBox(
                                                  width: 25,
                                                  height: 25,
                                                  child: Image.asset(
                                                      "assets/contact/phone.png")),
                                              SizedBox(
                                                width: 16,
                                              ),
                                              Text(
                                                "(02) 000-0323",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 28),
                                                child: SizedBox(
                                                  width: 135,
                                                  height: 36,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              52, 145, 206),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    75,
                                                                    196,
                                                                    213)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                    ),
                                                    child: Text(
                                                      'โทรเลย',
                                                      style: GoogleFonts
                                                          .ibmPlexSans(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 48, left: 61),
                                          child: Wrap(
                                            children: [
                                              SizedBox(
                                                  width: 25,
                                                  height: 25,
                                                  child: Image.asset(
                                                      "assets/contact/mail.png")),
                                              SizedBox(
                                                width: 16,
                                              ),
                                              Text(
                                                "info@thewiseworks.com",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 76, left: 61),
                                          child: Text(
                                            "Contact",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 61),
                                          child: Text(
                                            "with Us",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 30, left: 61),
                                          child: Wrap(
                                            children: [
                                              InkWell(
                                                // onTap: () => context.go{("https://www.facebook.com/thewiseworks");},
                                                onTap: ()  {
                                                  ('https://www.facebook.com/thewiseworks');
                                                },
                                                child: SizedBox(
                                                  width: 45,
                                                  height: 45,
                                                  child: Image.asset(
                                                      "assets/contact/facebook.png"),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9),
                                                child: InkWell(
                                                  onTap: () {("https://www.instagram.com/thewiseworks");},
                                                  child: SizedBox(
                                                    width: 45,
                                                    height: 45,
                                                    child: Image.asset(
                                                        "assets/contact/instagram.png"),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 13),
                                                child: InkWell(
                                                  onTap: () {("https://www.youtube.com/@thewiseworks8166");},
                                                  child: SizedBox(
                                                    width: 45,
                                                    height: 45,
                                                    child: Image.asset(
                                                        "assets/contact/youtube.png"),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 13),
                                                child: InkWell(
                                                  onTap: () {("https://www.tiktok.com/@thewiseworks");},
                                                  child: SizedBox(
                                                    width: 45,
                                                    height: 45,
                                                    child: Image.asset(
                                                        "assets/contact/tiktok.png"),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
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
                      Container(
                        width: 1440,
                        height: 906,
                        child: Stack(
                          children: [
                            Container(
                              width: 1440,
                              height: 906,
                              color: Colors.white,
                            ),
                            Container(
                              width: 1440,
                              height: 906,
                              child: Image.asset("assets/contact/map.png"),
                            ),
                            new Positioned(
                              top: 80,
                              child: Container(
                                width: 440,
                                height: 146,
                                color: Color.fromARGB(255, 52, 145, 206),
                                child: Wrap(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 27, top: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "The wisework.co.,Ltd.",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                          Text(
                                            "4, 4/5 Central Tower, 12th Floor, Room 1209, Rajdamri Road, Pathumwan, Pathumwan, Bangkok 10330",
                                            style: GoogleFonts.ibmPlexSansThai(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 33),
                                      child: SizedBox(
                                        width: 62,
                                        height: 62,
                                        child: Image.asset(
                                            "assets/contact/route.png"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            new Positioned(
                              top: 239,
                              child: SizedBox(
                                width: 439,
                                height: 74,
                                child: ElevatedButton(
                                  onPressed: () {
                                    launch(
                                        "https://goo.gl/maps/6kDD9bQbLJnwY4UM6");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.zero,
                                            right: Radius.circular(20))),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Wrap(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 75),
                                            child: Container(
                                              // color: Colors.amber,
                                              width: 31.61,
                                              height: 28.33,
                                              child: Image.asset(
                                                  "assets/contact/plane.png"),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Get Direction",
                                              style:
                                                  GoogleFonts.ibmPlexSansThai(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            : Center(
                child: Stack(
                  children: [
                    Container(
                      width: 1440,
                      // width: Responsive.isTablet(context) ? 768 : 375,
                      height: Responsive.isTablet(context) ? 2372 : 1900,
                      color: Color.fromARGB(255, 232, 242, 254),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Responsive.isTablet(context)
                              ? Padding(
                                  padding:
                                      const EdgeInsets.only(top: 83, left: 70),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
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
                                            "Contact Us",
                                            style: GoogleFonts.ibmPlexSansThai(
                                                fontWeight: FontWeight.w600,
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
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height:
                                      Responsive.isTablet(context) ? 83 : 51,
                                ),
                                Container(
                                  width:
                                      Responsive.isTablet(context) ? 625 : 350,
                                  height: Responsive.isTablet(context)
                                      ? 1350
                                      : 1300,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Responsive.isTablet(context)
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 47, left: 83),
                                              child: Text(
                                                "Send us a",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize:
                                                            Responsive.isTablet(
                                                                    context)
                                                                ? 32
                                                                : 24,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromARGB(
                                                            255, 2, 2, 2)),
                                              ),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 65, left: 20),
                                              child: Text(
                                                "Send us a",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize:
                                                            Responsive.isTablet(
                                                                    context)
                                                                ? 32
                                                                : 24,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromARGB(
                                                            255, 2, 2, 2)),
                                              ),
                                            ),
                                      Responsive.isTablet(context)
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 83),
                                              child: Text(
                                                "Message",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize:
                                                            Responsive.isTablet(
                                                                    context)
                                                                ? 32
                                                                : 24,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 2, 2, 2)),
                                              ),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Text(
                                                "Message",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize:
                                                            Responsive.isTablet(
                                                                    context)
                                                                ? 32
                                                                : 24,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 2, 2, 2)),
                                              ),
                                            ),
                                      Responsive.isTablet(context)
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 40, left: 83),
                                              child: Text(
                                                "สอบถามรายละเอียดเพิ่มเติม ส่งข้อความถึงเรา ที่นี่\nทีมงานของเราจะติดต่อกลับท่านโดยเร็วที่สุด",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 52, 145, 206)),
                                              ),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 40, left: 20),
                                              child: Text(
                                                "สอบถามรายละเอียดเพิ่มเติม\nส่งข้อความถึงเรา ที่นี่ ทีมงานของเรา\nจะติดต่อกลับท่านโดยเร็วที่สุด",
                                                style:
                                                    GoogleFonts.ibmPlexSansThai(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 52, 145, 206)),
                                              ),
                                            ),
                                      Responsive.isTablet(context)
                                          ? Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 83, top: 40),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "Name",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 310,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'wisework',
                                                            hintStyle: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            232,
                                                                            242,
                                                                            254)),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        20,
                                                                        0,
                                                                        0),
                                                            border:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 83, top: 32),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "Company / Business Name",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 310,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'The wisework co.,Ltd.',
                                                            hintStyle: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            232,
                                                                            242,
                                                                            254)),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        20,
                                                                        0,
                                                                        0),
                                                            border:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20, top: 40),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "Name",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 310,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'wisework',
                                                            hintStyle: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            232,
                                                                            242,
                                                                            254)),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        20,
                                                                        0,
                                                                        0),
                                                            border:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20, top: 32),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "Company / Business Name",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 310,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'The wisework co.,Ltd.',
                                                            hintStyle: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            232,
                                                                            242,
                                                                            254)),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        20,
                                                                        0,
                                                                        0),
                                                            border:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                      Responsive.isTablet(context)
                                          ? Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 83, top: 40),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "Email address",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 310,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'hello@thewiseworks.com',
                                                            hintStyle: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            232,
                                                                            242,
                                                                            254)),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        20,
                                                                        0,
                                                                        0),
                                                            border:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 83, top: 32),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "Phone",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 310,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'xx-xxxx-xxxx',
                                                            hintStyle: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            232,
                                                                            242,
                                                                            254)),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        20,
                                                                        0,
                                                                        0),
                                                            border:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20, top: 40),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "Email address",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 310,
                                                        child: TextField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          inputFormatters: <
                                                              TextInputFormatter>[
                                                            FilteringTextInputFormatter
                                                                .digitsOnly
                                                          ],
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'hello@thewiseworks.com',
                                                            hintStyle: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            232,
                                                                            242,
                                                                            254)),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        20,
                                                                        0,
                                                                        0),
                                                            border:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20, top: 32),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // width: 310,
                                                        child: Text(
                                                          "Phone",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 310,
                                                        child: TextField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          inputFormatters: <
                                                              TextInputFormatter>[
                                                            FilteringTextInputFormatter
                                                                .digitsOnly
                                                          ],
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'xx-xxxx-xxxx',
                                                            hintStyle: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            232,
                                                                            242,
                                                                            254)),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        20,
                                                                        0,
                                                                        0),
                                                            border:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          52,
                                                                          145,
                                                                          206)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 36),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Responsive.isTablet(context)
                                                ? Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 56),
                                                    child: Container(
                                                      child: Text(
                                                        "How can we help you?",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        51,
                                                                        51,
                                                                        51)),
                                                      ),
                                                    ),
                                                  )
                                                : Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Container(
                                                      child: Text(
                                                        "How can we help you?",
                                                        style: GoogleFonts
                                                            .ibmPlexSansThai(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        51,
                                                                        51,
                                                                        51)),
                                                      ),
                                                    ),
                                                  ),
                                            Responsive.isTablet(context)
                                                ? Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15, left: 56),
                                                    child: Container(
                                                      width: 487,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Color.fromARGB(
                                                              255,
                                                              232,
                                                              242,
                                                              254)),
                                                      child:
                                                          DropdownButtonHideUnderline(
                                                        child: DropdownButton2(
                                                          value: selectedOption,
                                                          hint: Text(
                                                            'Select an option',
                                                            style: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            130,
                                                                            130,
                                                                            130)),
                                                          ),
                                                          buttonStyleData:
                                                              const ButtonStyleData(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          12)),

                                                          iconStyleData:
                                                              const IconStyleData(
                                                            icon: Icon(
                                                              Icons
                                                                  .arrow_drop_down_outlined,
                                                            ),
                                                            iconSize: 20,
                                                            iconEnabledColor:
                                                                Color.fromARGB(
                                                                    255,
                                                                    79,
                                                                    79,
                                                                    79),
                                                            iconDisabledColor:
                                                                Color.fromARGB(
                                                                    255,
                                                                    79,
                                                                    79,
                                                                    79),
                                                          ),
                                                          isExpanded: true,
                                                          items: optionsItem
                                                              .map((option) {
                                                            return DropdownMenuItem<
                                                                String>(
                                                              value: option,
                                                              child: Text(
                                                                option,
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            );
                                                          }).toList(),

                                                          dropdownStyleData:
                                                              DropdownStyleData(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          // itemHeight: 8,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              selectedOption =
                                                                  value;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                : Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15, left: 20),
                                                    child: Container(
                                                      width: 304,
                                                      height: 42,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Color.fromARGB(
                                                              255,
                                                              232,
                                                              242,
                                                              254)),
                                                      child:
                                                          DropdownButtonHideUnderline(
                                                        child: DropdownButton2(
                                                          value: selectedOption,
                                                          hint: Text(
                                                            'Select an option',
                                                            style: GoogleFonts
                                                                .ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            130,
                                                                            130,
                                                                            130)),
                                                          ),
                                                          buttonStyleData:
                                                              const ButtonStyleData(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          12)),

                                                          iconStyleData:
                                                              const IconStyleData(
                                                            icon: Icon(
                                                              Icons
                                                                  .arrow_drop_down_outlined,
                                                            ),
                                                            iconSize: 20,
                                                            iconEnabledColor:
                                                                Color.fromARGB(
                                                                    255,
                                                                    79,
                                                                    79,
                                                                    79),
                                                            iconDisabledColor:
                                                                Color.fromARGB(
                                                                    255,
                                                                    79,
                                                                    79,
                                                                    79),
                                                          ),
                                                          isExpanded: true,
                                                          items: optionsItem
                                                              .map((option) {
                                                            return DropdownMenuItem<
                                                                String>(
                                                              value: option,
                                                              child: Text(
                                                                option,
                                                                style: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            );
                                                          }).toList(),

                                                          dropdownStyleData:
                                                              DropdownStyleData(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          // itemHeight: 8,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              selectedOption =
                                                                  value;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                            Responsive.isTablet(context)
                                                ? Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 53, left: 56),
                                                    child: Container(
                                                      width: 487,
                                                      height: 260,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.white,
                                                          border: Border.all(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      232,
                                                                      242,
                                                                      254),
                                                              width: 2)),
                                                      child: TextFormField(
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    "Enter your message here...",
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            20,
                                                                        horizontal:
                                                                            10),
                                                                // contentPadding:EdgeInsets.fromLTRB(50, 50, 0, 0),
                                                                hintStyle: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            130,
                                                                            130,
                                                                            130)),
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                        onChanged: (value) {},
                                                        maxLines: 5,
                                                        // validator: (value) {
                                                        //   if (value.isEmpty) {
                                                        //     return 'Please enter your name';
                                                        //   }
                                                        //   return null;
                                                        // },
                                                      ),
                                                    ),
                                                  )
                                                : Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 53, left: 20),
                                                    child: Container(
                                                      width: 307,
                                                      height: 260,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.white,
                                                          border: Border.all(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      232,
                                                                      242,
                                                                      254),
                                                              width: 2)),
                                                      child: TextFormField(
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    "Enter your message here...",
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            20,
                                                                        horizontal:
                                                                            10),
                                                                // contentPadding:EdgeInsets.fromLTRB(50, 50, 0, 0),
                                                                hintStyle: GoogleFonts.ibmPlexSansThai(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            130,
                                                                            130,
                                                                            130)),
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                        onChanged: (value) {},
                                                        maxLines: 5,
                                                        // validator: (value) {
                                                        //   if (value.isEmpty) {
                                                        //     return 'Please enter your name';
                                                        //   }
                                                        //   return null;
                                                        // },
                                                      ),
                                                    ),
                                                  ),
                                            Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 50),
                                                child: SizedBox(
                                                  width: 195,
                                                  height: 46,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              75, 195, 211),
                                                      // side: BorderSide(
                                                      //     width: 3,
                                                      //     color: Colors.blue),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0)),
                                                    ),
                                                    child: Text(
                                                      'Send Message',
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isTablet(context) ? 78 : 60,
                                ),
                                Stack(
                                  children: [
                                    Responsive.isTablet(context)
                                        ? Container(
                                            width: 1440,
                                            height: 758,
                                            child: Image.asset(
                                              "assets/contact/map.png",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          )
                                        : Container(
                                            height: 423,
                                            child: Image.asset(
                                              "assets/contact/map.png",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                    Responsive.isTablet(context)
                                        ? new Positioned(
                                            top: 80,
                                            child: Container(
                                              width: 440,
                                              height: 146,
                                              color: Color.fromARGB(
                                                  255, 52, 145, 206),
                                              child: Wrap(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 27, top: 15),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "The wisework.co.,Ltd.",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                                  fontSize: 32,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .white),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                        Text(
                                                          "7 Soi Lat Pla Khao 19, Chorakhe Bua\nSubdistrict, Lat Phrao District, Bangkok ",
                                                          style: GoogleFonts
                                                              .ibmPlexSansThai(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.white,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 33),
                                                    child: SizedBox(
                                                      width: 62,
                                                      height: 62,
                                                      child: Image.asset(
                                                          "assets/contact/route.png"),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        : new Positioned(
                                            top: 20,
                                            child: Container(
                                              width: 253,
                                              height: 55,
                                              color: Color.fromARGB(
                                                  255, 52, 145, 206),
                                              child: Wrap(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 27, top: 15),
                                                    child: Text(
                                                      "The wisework.co.,Ltd.",
                                                      style: GoogleFonts
                                                          .ibmPlexSansThai(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5, left: 5),
                                                    child: SizedBox(
                                                      width: 40,
                                                      height: 40,
                                                      child: Image.asset(
                                                          "assets/contact/route.png"),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                    Responsive.isTablet(context)
                                        ? new Positioned(
                                            top: 247,
                                            child: SizedBox(
                                              width: 439,
                                              height: 74,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  launch(
                                                      "https://goo.gl/maps/6kDD9bQbLJnwY4UM6");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .horizontal(
                                                              left: Radius.zero,
                                                              right: Radius
                                                                  .circular(
                                                                      20))),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Wrap(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 75),
                                                          child: Container(
                                                            // color: Colors.amber,
                                                            width: 31.61,
                                                            height: 28.33,
                                                            child: Image.asset(
                                                                "assets/contact/plane.png"),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 30),
                                                          child: Text(
                                                            "Get Direction",
                                                            style: GoogleFonts
                                                                .ibmPlexSansThai(
                                                              fontSize: 24,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        : new Positioned(
                                            top: 80,
                                            child: SizedBox(
                                              width: 206,
                                              height: 42,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  launch(
                                                      "https://goo.gl/maps/6kDD9bQbLJnwY4UM6");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .horizontal(
                                                              left: Radius.zero,
                                                              right: Radius
                                                                  .circular(
                                                                      20))),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Wrap(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 5),
                                                          child: Container(
                                                            // color: Colors.amber,
                                                            width: 31.61,
                                                            height: 28.33,
                                                            child: Image.asset(
                                                                "assets/contact/plane.png"),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 20),
                                                          child: Text(
                                                            "Get Direction",
                                                            style: GoogleFonts
                                                                .ibmPlexSansThai(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ));
  }
}
