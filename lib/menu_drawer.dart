import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

// import 'auth_dialog.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  bool _showStory = false;
  bool _showRewards = false;
  bool _showCustomers = false;

  bool _showPDPA = false;
  bool _showGovernance = false;
  bool _showRequest = false;

  bool _isAboutExpanded = false;
  bool _isServiceExpanded = false;

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          ListTile(
            title: Text('Home',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () => context.go('/home'),
          ),
          ListTile(
            title: Text('About Us',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: _isAboutExpanded
                        ? Color.fromARGB(255, 52, 145, 206)
                        : Color.fromARGB(255, 35, 34, 51))),
            trailing: Icon(Ionicons.caret_down),
            onTap: () {
              // toggle the boolean value for this item
              setState(() {
                _showStory = false;
                _showRewards = false;
                _showCustomers = !_showCustomers;
                _isAboutExpanded = !_isAboutExpanded;
              });
            },
          ),
          if (_showCustomers)
            Column(
              children: <Widget>[
                ListTile(
                  title: Text('Our Story',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () => context.go('/story'),
                ),
                ListTile(
                  title: Text('Our Rewards',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () => context.go('/story'),
                ),
                ListTile(
                  title: Text('Our Customers',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () => context.go('/customers'),
                ),
              ],
            ),
          ListTile(
            title: Text('Our Services',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: _isServiceExpanded
                        ? Color.fromARGB(255, 52, 145, 206)
                        : Color.fromARGB(255, 35, 34, 51))),
            trailing: Icon(Ionicons.caret_down),
            onTap: () {
              // toggle the boolean value for this item
              setState(() {
                _showPDPA = false;
                _showGovernance = false;
                _showRequest = !_showRequest;
                _isServiceExpanded = !_isServiceExpanded;
              });
            },
          ),
          if (_showRequest)
            Column(
              children: <Widget>[
                ListTile(
                  title: Text('PDPA Management Platform',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () => context.go('/services'),
                ),
                ListTile(
                  title: Text('Governance Assurance Suit',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () => context.go('/gams'),
                ),
                ListTile(
                  title: Text('Request Demo',
                      style: GoogleFonts.ibmPlexSansThai(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 87, 87, 87))),
                  onTap: () => context.go('/demo'),
                ),
              ],
            ),
          ListTile(
            title: Text('Blogs',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () {
              // handle tap on tile
            },
          ),
          ListTile(
            title: Text('Contact Us',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () => context.go('/contact'),
          ),
        ],
      ),
    );
  }
}
