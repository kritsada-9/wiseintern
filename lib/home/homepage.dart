import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/navbar.dart';

import 'package:wiseintern/home/header_video.dart';
import 'package:wiseintern/home/pdpa.dart';
import 'package:wiseintern/home/features.dart';
import 'package:wiseintern/home/packages.dart';
import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/home/customers.dart';
import 'package:wiseintern/home/story.dart';
import 'package:wiseintern/menu_drawer.dart';
import 'package:wiseintern/home/footer.dart';
import 'package:wiseintern/home/faq.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _currentIndex = 0;

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }
  final List<String> listAbout = <String>[
    'About Us',
    'Our Story',
    'Our Rew',
    'Our Cus',
  ];

  String? _selectedItem;
  bool _selected = false;

  final List<String> listServices = <String>[
    'Our Services',
    'PDPA Management Platform ',
    'Governance Assurance Master Suite',
    'Request Demo',
  ];
  String? AboutValue;
  String? ServicesValue;

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
          // actions: [
          // Responsive.isDesktop(context)
          // ?NavBar()
          // :Padding(
          //         padding: const EdgeInsets.all(20),
          //         child: SizedBox(
          //           height: 60,
          //           width: 100,
          //           child: Image.asset(
          //             'logo.png',
          //           ),
          //         ),
          //       ),
          // ],
          title: !Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 157,
                        width: 157,
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
              :
              // Container()
              NavBar()),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderHome(),
            StoryPage(),
            Pdpa(),
            FeaturesPage(),
            Customer(),
            PackagesPage(),
            FAQ(),
            Footer()
          ],
        ),
      ),
    );
  }
}
