import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:wiseintern/navbar.dart';

import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/menu_drawer.dart';
import 'package:wiseintern/home/footer.dart';
import 'package:wiseintern/gams/gams.dart';
import 'package:wiseintern/gams/features.dart';
import 'package:wiseintern/gams/gamsfeatures.dart';

class GAMSPage extends StatefulWidget {
  @override
  _GAMSPageState createState() => _GAMSPageState();
}

class _GAMSPageState extends State<GAMSPage> {
  // int _currentIndex = 0;

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [GAMS(), FeaturesgamsPage(), GAMSfeaturesPage(), Footer()],
        ),
      ),
    );
  }
}
