import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  // final double opacity;

  NavBar();

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class FeatureModel {
  final String title;
  final String? routePath;
  bool isExpanded;
  FeatureModel(this.title, this.routePath, this.isExpanded);
}

class _NavigationBarState extends State<NavBar> {
  final List<String> listAbout = <String>[
    'About Us',
    'Our Story',
    'Our Rew',
    'Our Cus',
  ];

  // String? _selectedItem;
  bool _selected = false;
  bool isDropdownOpen = false;
  double buttonWidth = 50.0;

  final List<String> listServices = <String>[
    'Our Services',
    'PDPA ',
    'Governance ',
    'Request Demo',
  ];
  String? AboutValue;
  String? ServicesValue;

  List<FeatureModel> about = [
    FeatureModel("Our Story", "/story", false),
    FeatureModel("Our Rewards", "/story", false),
    FeatureModel("Our Customers", "/customers", false),
  ];

  // bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: 1440,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
              width: 120,
              child: InkWell(
                hoverColor: Color.fromARGB(255, 52, 144, 206),
                onTap: () => context.go('/homepage'),
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
            ),
            SizedBox(
              width: screenSize.width / 4,
            ),
            SizedBox(
              height: 18,
              width: 62,
              child: TextButton(
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onPressed: () => context.go('/'),
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                items: [
                  DropdownMenuItem(
                      value: 'our story',
                      onTap: () => context.go('/story'),
                      child: Text(
                        'Our Story',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                  DropdownMenuItem(
                      value: 'our rewards',
                      onTap: () => context.go('/story'),
                      child: Text(
                        'Our Rewards',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                  DropdownMenuItem(
                      value: 'customer',
                      onTap: () => context.go('/customers'),
                      child: Text(
                        'Our Customers',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                       DropdownMenuItem(
                      value: 'Our Products',
                      onTap: () => context.go('/package'),
                      child: Text(
                        'Our Products',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                ],
                value: AboutValue,
                onChanged: (value) {
                  setState(() {
                    // AboutValue = value as String;
                  });
                },
                buttonStyleData: ButtonStyleData(
                    height: 50,
                    width: 120,
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    elevation: 0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 52, 144, 206),
                    )),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.expand_more_outlined,
                  ),
                  iconSize: 20,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: Colors.white,
                ),
                dropdownStyleData: DropdownStyleData(
                    maxHeight: 190,
                    width: 150,
                    padding: null,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    elevation: 8,
                    offset: const Offset(-10, -10),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: MaterialStateProperty.all(6),
                      thumbVisibility: MaterialStateProperty.all(true),
                    )),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Text(
                  'Our Services',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                items: [
                  DropdownMenuItem(
                      value: 'pdpa',
                      onTap: () => context.go('/services'),
                      child: Text(
                        'PDPA Management Platform',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                  DropdownMenuItem(
                      value: 'governance',
                      onTap: () => context.go('/gams'),
                      child: Text(
                        'Governance Assurance Master Suit',
                        style: TextStyle(
                          fontSize: 16,
                          color: _selected
                              ? Colors.white
                              : Color.fromARGB(255, 52, 144, 206),
                        ),
                      )),
                  // DropdownMenuItem(
                  //     value: 'request',
                  //     onTap: () => context.go('/demo'),
                  //     child: Text(
                  //       'Request Demo',
                  //       style: TextStyle(
                  //         fontSize: 16,
                  //         color: _selected
                  //             ? Colors.white
                  //             : Color.fromARGB(255, 52, 144, 206),
                  //       ),
                  //     )),
                ],
                value: ServicesValue,
                onChanged: (value) {
                  setState(() {
                    // selectedValue = value as String;
                  });
                },
                buttonStyleData: ButtonStyleData(
                    height: 50,
                    width: 140,
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    elevation: 0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 52, 144, 206),
                    )),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.expand_more_outlined,
                  ),
                  iconSize: 20,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: Colors.white,
                ),
                dropdownStyleData: DropdownStyleData(
                    maxHeight: 250,
                    width: 250,
                    padding: null,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    elevation: 8,
                    offset: const Offset(-20, -10),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: MaterialStateProperty.all(6),
                      thumbVisibility: MaterialStateProperty.all(true),
                    )),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
            // TextButton(
            //   child: Text(
            //     "Blogs",
            //     style: TextStyle(
            //       fontSize: 16,
            //       color: Colors.white,
            //     ),
            //   ),
            //   onPressed: () => context.go('/blogs'),
            // ),
            TextButton(
              child: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: () => context.go('/contact'),
            ),
            // SizedBox(
            //   width: 42,
            // ),
            // SizedBox(
            //   width: 195,
            //   height: 50,
            //   child: ElevatedButton(
            //     onPressed: () => context.go('/demo'),
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Color.fromARGB(255, 232, 242, 254),
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
        ),
      ),
    );
  }
}
