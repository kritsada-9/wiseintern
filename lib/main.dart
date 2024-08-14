import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wiseintern/gams/gamspage.dart';
import 'package:wiseintern/policy/cookiespolicypage.dart';
import 'package:wiseintern/policy/privacypolicypage.dart';
import 'package:wiseintern/responsive.dart';

import 'package:wiseintern/home/homepage.dart';
import 'package:wiseintern/about/aboutpage.dart';
import 'package:wiseintern/customers/customerspage.dart';
import 'package:wiseintern/services/servicespage.dart';
import 'package:wiseintern/contact/contactpage.dart';
import 'package:wiseintern/faq/faqpage.dart';
import 'package:wiseintern/demo/demopage.dart';
import 'package:wiseintern/table/producttablepage.dart';

import 'package:wiseintern/features/templateFeatures.dart';
import 'package:wiseintern/products/producttemplate.dart';

import 'package:wiseintern/termsofservice/termsofservicepage.dart';

import 'demo/demodetail.dart';

// import 'package:wiseintern/home/features.dart';
// import 'package:wiseintern/home/packagepage.dart';
// import 'navbar.dart';
// import 'package:wiseintern/home/customers.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return HomePage();
          },
        ),
        GoRoute(
          path: 'story',
          builder: (BuildContext context, GoRouterState state) {
            return AboutPage();
          },
        ),
        GoRoute(
          path: 'customers',
          builder: (BuildContext context, GoRouterState state) {
            return CustomerPage();
          },
        ),
        GoRoute(
          path: 'services',
          builder: (BuildContext context, GoRouterState state) {
            return ServicesPage();
          },
        ),
        GoRoute(
          path: 'contact',
          builder: (BuildContext context, GoRouterState state) {
            return ContactPage();
          },
        ),
        GoRoute(
          path: 'faq',
          builder: (BuildContext context, GoRouterState state) {
            return FaqPage();
          },
        ),
        GoRoute(
          path: 'demo',
          builder: (BuildContext context, GoRouterState state) {
            return DemoPage();
          },
        ),
        GoRoute(
          path: 'package',
          builder: (BuildContext context, GoRouterState state) {
            return ProductTablePage();
          },
        ),
        GoRoute(
          path: 'features/1',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "PD Management",
              "จัดการบันทึกรายการข้อมูลส่วนบุคคลและการไหลของข้อมูล (Data Flow)",
              "features/pdcard.png",
              "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่ มาตรา 24 , มาตรา 26, มาตรา 30, มาตรา 31, มาตรา 32, มาตรา 36(1), มาตรา 39",
            );
          },
        ),
        GoRoute(
          path: 'features/2',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "DPIA & Risk Management",
              "การบริหารความเสี่ยงและผลกระทบจากข้อมูลส่วนบุคคล",
              "features/dpiacard.png",
              "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่ มาตรา 37, มาตรา 40",
            );
          },
        ),
        GoRoute(
          path: 'features/3',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "Cookie Consent",
              "ระบบบริหารจัดการการขอความยินยอม และการบริหารจัดการคุกกี้",
              "features/cookiecard.png",
              "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่ มาตรา 19, มาตรา 20, มาตรา 21, มาตรา 22, มาตรา 23, มาตรา 24, มาตรา 25, มาตรา 26, มาตรา 26(5), มาตรา 27",
            );
          },
        ),
        GoRoute(
          path: 'features/4',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "Consent Management",
              "ระบบบริหารจัดการการขอความยินยอม และการบริหารจัดการคุกกี้",
              "features/cookiecard.png",
              "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่ มาตรา 19, มาตรา 30, มาตรา 31, มาตรา 32, มาตรา 33, มาตรา 34, มาตรา 35, มาตรา 36, มาตรา 38, มาตรา 39, มาตรา 40",
            );
          },
        ),
        GoRoute(
          path: 'features/5',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "Data Subject Right\nManagement",
              "บริหารการขอใช้สิทธิ์จากเจ้าของข้อมูล",
              "features/datacard.png",
              "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่ มาตรา 19, มาตรา 30, มาตรา 31, มาตรา 32, มาตรา 33, มาตรา 34, มาตรา 35, มาตรา 36, มาตรา 38, มาตรา 39, มาตรา 40",
            );
          },
        ),
        GoRoute(
          path: 'features/6',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "Data Breach\nManagement",
              "บริหารกรณีเกิดข้อมูลรั่วไหล",
              "features/breachcard.png",
              "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่ มาตรา 37, มาตรา 40",
            );
          },
        ),
        GoRoute(
          path: 'features/7',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "Audit&Gap\nManagement",
              "บริหารงานตรจสอบ\nและการทำ GAP Analysis",
              "features/auditcard.png",
              "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่ มาตรา 19, มาตรา 20, มาตรา 23, มาตรา 24, มาตรา 26, มาตรา 39, มาตรา 40",
            );
          },
        ),
        GoRoute(
          path: 'features/8',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "Privacy&Notices Management",
              "บริหารการสื่อสารนโยบายและประกาศความเป็นส่วนตัว",
              "features/policycard.png",
              "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่ มาตรา 19 - มาตรา 40, มาตรา 95 และประกาศกระทรวงดิจิทัลเพื่อเศรษฐกิจและสังคม เรื่อง มาตรฐานการรักษาความมั่นคงปลอดภัยของ ข้อมูลส่วนบุคคล พ.ศ.2563 ข้อ (3), (4), (5), (6) ",
            );
          },
        ),
        GoRoute(
          path: 'features/9',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "Data Discover",
              "ค้นหาข้อมูลส่วนตัวในระบบสารสนเทศ",
              "features/discoverycard.png",
              "Module ที่พัฒนาร่วมกันกับคณะ วิศวกรรมศาสตร์ มหาวิทยาลัยเกษตรศาสตร์ ส่งเสริมประสิทธิภาพการทำงานด้านต่างๆ ให้สอดคล้องกับ พรบ.คุ้มครองข้อมูล ส่วนบุคคล อาทิ ด้านความเสี่ยง ด้านการ ตรวจสอบ และระบบขององค์กร เป็นต้น",
            );
          },
        ),
        GoRoute(
          path: 'features/10',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "Executive Support System",
              "บริหารงานและจัดการรายงาน สำหรับผู้บริหาร",
              "features/executivecard.png",
              "Module สนับสนุนงานผู้บริหาร รองรับการ ปฏิบัติตาม พรบ.คุ้มครองข้อมูลส่วนบุคคลตาม กฎหมายมาตรา 81",
            );
          },
        ),
        GoRoute(
          path: 'features/11',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "Legitimate Interest Assessment",
              "การประเมินการนำฐานกฏหมายมาใช้",
              "features/legicard.png",
              "รองรับการใช้สิทธิของเจ้าของข้อมูลส่วนบุคคลตามกฎหมายมาตรา ได้แก่  มาตรา 24(5)",
            );
          },
        ),
        GoRoute(
          path: 'features/12',
          builder: (BuildContext context, GoRouterState state) {
            return MyDetails(
              "System Setting Management",
              "ส่วนการตั้งค่าส่วนส่งเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบจัดการกับข้อมูลต่างๆ",
              "features/systemcard.png",
              "ส่วนเสริมที่ถูกพัฒนาขึ้นมาเพื่อให้ผู้ดูแลระบบใช้สำหรับจัดการกับข้อมูลต่างๆ ได้",
            );
          },
        ),
        GoRoute(
          path: 'package/1',
          builder: (BuildContext context, GoRouterState state) {
            return MyPackages(
                "Express",
                "SaaS",
                "pakages/could.png",
                !Responsive.isMobile(context)
                    ? "ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA\nเหมาะสำหรับองค์กรที่มี การเก็บรวบรวมข้อมูล\nส่วนบุคคล และข้อมูลส่วนอ่อนไหวจำนวนมาก\nฟังก์ชันการใช้งานตรงตามวัตถุประสงค์ PDPA\nตอบโจทย์ธุรกิจ ขนาดกลางและขนาดย่อม"
                    : "ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA\nเหมาะสำหรับองค์กรที่มี\nการเก็บรวบรวมข้อมูลส่วนบุคคล\nและข้อมูลส่วนอ่อนไหว จำนวนมาก\nฟังก์ชันการใช้งานตรงตาม\nวัตถุประสงค์ PDPA ตอบโจทย์ธุรกิจ\nขนาดกลางและขนาดย่อม");
          },
        ),
        GoRoute(
          path: 'package/2',
          builder: (BuildContext context, GoRouterState state) {
            return MyPackages(
                "Standard",
                "Subscription License",
                "pakages/clouds.png",
                !Responsive.isMobile(context)
                    ? "ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA\nเหมาะสำหรับองค์กรขนาดใหญ่ ธุรกิจเฉพาะ\nต้องการปรับเปลี่ยนให้เข้ากับรูปแบบการทำงาน\nขององค์กร ครอบคลุมทุกฟังก์ชันการใช้งาน\n11 Modules พร้อมรองรับการเชื่อมต่อ API"
                    : "ระบบบริหารจัดการข้อมูลส่วนบุคคล\nPDPA เหมาะสำหรับองค์กรขนาดใหญ่\nธุรกิจเฉพาะ ต้องการปรับเปลี่ยนให้เข้า\nกับรูปแบบการทำงานขององค์กร\nครอบคลุมทุกฟังก์ชันการใช้งาน\nพร้อมรองรับการเชื่อมต่อ REST API");
          },
        ),
        GoRoute(
          path: 'package/3',
          builder: (BuildContext context, GoRouterState state) {
            return MyPackages(
                "Enterprise",
                "Perpetual License",
                "pakages/rainbow_cloud.png",
                !Responsive.isMobile(context)
                    ? "ระบบบริหารจัดการข้อมูลส่วนบุคคล PDPA\nเหมาะสำหรับองค์กรขนาดใหญ่ มีบริษัทในเครือ\nควบคุมระบบทั้งหมดได้จากศูนย์กลาง\nครอบคลุมทุกฟังก์ชันการใช้งานเต็มรูปแบบ 11\nModules และไม่มีข้อจำกัดในการเชื่อมต่อกับระบบอื่น"
                    : "ระบบบริหารจัดการข้อมูลส่วนบุคคล\nPDPA เหมาะสำหรับองค์กรขนาดใหญ่\nมีบริษัทในเครือ ควบคุมระบบทั้งหมด\nได้จากศูนย์กลาง ครอบคลุมทุก\nฟังก์ชันการใช้งานเต็มรูปแบบ\n11 Modules และไม่มีข้อจำกัด\nในการเชื่อมต่อกับระบบอื่น");
          },
        ),
        GoRoute(
          path: 'termsofservice',
          builder: (BuildContext context, GoRouterState state) {
            return TermsOfServicePage();
          },
        ),
        GoRoute(
          path: 'demodetail',
          builder: (BuildContext context, GoRouterState state) {
            return DemoDetailPage();
          },
        ),
        GoRoute(
          path: 'privacypolicy',
          builder: (BuildContext context, GoRouterState state) {
            return PrivacyPolicyPage();
          },
        ),
        GoRoute(
          path: 'cookiespolicypage',
          builder: (BuildContext context, GoRouterState state) {
            return CookiesPolicyPage();
          },
        ),
        GoRoute(
          path: 'cookiespolicy',
          builder: (BuildContext context, GoRouterState state) {
            return CookiesPolicyPage();
          },
        ),
        GoRoute(
          path: 'gams',
          builder: (BuildContext context, GoRouterState state) {
            return GAMSPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // GoRouter _path = GoRouter(routes: [
  //   GoRoute(
  //       path: '/',
  //       builder: (BuildContext context, GoRouterState state) {
  //         return HomePage();
  //       })
  // ]);

  // Future<String> loadjsonData() async {
  //   return await rootBundle.loadString("assets/featuresData.json");
  // }

  // Future<void> parsejsonData() async {
  //   String json = await loadjsonData();
  //   List<dynamic> data = jsonDecode(json);
  //   // print(1);

  //   List<FeatureModel> features = [];
  //   for (dynamic item in data) {
  //     Map<String, dynamic> map = item;
  //     features.add(FeatureModel.fromJson(map));
  //   }
  //   print(features);
  //   setState(() {
  //     _path = GoRouter(routes: <RouteBase>[
  //       ...features.map(
  //         (Model) => GoRoute(
  //           path: Model.page,
  //           builder: (BuildContext context, GoRouterState state) {
  //             return buildRoutePage(Model);
  //           },
  //         ),
  //       )
  //     ]);
  //   });
  // }

  // Widget buildRoutePage(FeatureModel model) {
  //   switch (model.page) {
  //     case "home":
  //       return HomePage();
  //     case "story":
  //       return AboutPage();
  //     case "customers":
  //       return CustomerPage();
  //     case "services":
  //       return ServicesPage();
  //     case "product":
  //       return ProductPage();
  //     case "contact":
  //       return ContactPage();
  //     case "faq":
  //       return FaqPage();
  //     case "demo":
  //       return DemoPage();
  //     case "features/1":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/2":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/3":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/4":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/5":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/6":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/7":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/8":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/9":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/10":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/11":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );
  //     case "features/12":
  //       return MyDetails(
  //         model.title,
  //         model.description,
  //         model.imageUrl,
  //         model.features,
  //       );

  //     default:
  //       return HomePage();
  //   }
  // }

  // @override
  // void initState() async {
  //   super.initState();
  //   parsejsonData();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
