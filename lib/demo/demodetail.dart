import 'package:flutter/material.dart';
import 'package:wiseintern/navbar.dart';
import 'package:wiseintern/responsive.dart';
import 'package:wiseintern/menu_drawer.dart';
import 'package:go_router/go_router.dart';

import 'package:wiseintern/home/footer.dart';
import 'package:wiseintern/demo/registerdetail.dart';

class DemoDetailPage extends StatefulWidget {
  @override
  _DemoDetailPageState createState() => _DemoDetailPageState();
}

class _DemoDetailPageState extends State<DemoDetailPage> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
                      // SizedBox(
                      //   width: 195,
                      //   height: 50,
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     style: ElevatedButton.styleFrom(
                      //       backgroundColor:
                      //           Color.fromARGB(255, 232, 242, 254),
                      //       side: BorderSide(width: 3, color: Colors.blue),
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(30.0)),
                      //     ),
                      //     child: Text(
                      //       'ทดลองใช้ฟรี',
                      //       style: GoogleFonts.ibmPlexSansThai(
                      //           color: Color.fromARGB(255, 57, 128, 237),
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.w600),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ))
              : NavBar()),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Register(), Footer()],
        ),
      ),
    );
  }
}
