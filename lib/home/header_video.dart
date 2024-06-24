import 'package:flutter/material.dart';
import '../responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:go_router/go_router.dart';

class HeaderHome extends StatelessWidget implements PreferredSizeWidget {
  HeaderHome({Key? key}) : super(key: key);

  final GlobalKey _creatingSuccessKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              _buildBgHeader(context),
              _buildElevatingYourBusinessStandards(context),
              Positioned(
                bottom: 0,
                right: 0,
                child: Column(
                  children: [
                    // _buildRiseConsultingBox(context),
                    // _buildGetStarted(context),
                    
                  ],
                ),
              ),
            ],
          ),
          // CreatingSuccess(key: _creatingSuccessKey),
        ],
      ),
    );
  }
  Container _buildElevatingYourBusinessStandards(BuildContext context) {
    return Container(
      width: 1440,
      child: Padding(
        padding: const EdgeInsets.only(top: 130, left: 250),
        // padding: EdgeInsets.only(
        //   left: MediaQuery.of(context).size.width < 700
        //       ? 30
        //       : MediaQuery.of(context).size.width < 800
        //           ? 70
        //           : MediaQuery.of(context).size.width <= 1300
        //                       ? 70
        //                       :MediaQuery.of(context).size.width < 900
        //               ? 60
        //               : 250,
        //   top: MediaQuery.of(context).size.width <= 650
        //                       ? 60
        //                       :MediaQuery.of(context).size.width < 600 ? 90 : MediaQuery.of(context).size.width < 700 ? 100 :180,
        // ),
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          
          children: [
            Text(
              'The Power of \nCreativity Discover.',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 80,
                color: Color.fromARGB(255, 255, 255, 255)),                                
              // style: Theme.of(context).textTheme.displayLarge?.copyWith(
              //       color: Color.fromARGB(255, 255, 255, 255),
              //       // color: Theme.of(context).colorScheme.secondary,
              //       fontSize: MediaQuery.of(context).size.width <= 1050
              //                 ? 42
              //                 :MediaQuery.of(context).size.width <= 1350
              //                 ? 52
              //                 :MediaQuery.of(context).size.width <= 1450
              //                 ? 62
              //                 :MediaQuery.of(context).size.width < 700
              //           ? 34
              //           : MediaQuery.of(context).size.width < 800
              //               ? 36
              //               : 72,
              //     ),
            ),
          ],
        ),
      ),
    );
  }
  Container _buildBgHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width < 800 ? 400 : 500,
      child: ShaderMask(
        blendMode: BlendMode.dstIn,
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color.fromARGB(255, 99, 99, 99),
              Colors.transparent
            ],
            stops: [5, 5],
          ).createShader(bounds);
        },
        child: Image.asset(
          // 'assets/images/HD Home03 02.gif',
          'assets/images/Visualization.gif',
          fit: BoxFit.cover,
        ),
        
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
