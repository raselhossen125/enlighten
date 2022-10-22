import 'package:enlighten/views/spalash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'views/home_page.dart';
import 'views/login_page.dart';
import 'views/paymet_sucessfull_page.dart';
import 'views/peyment_page.dart';
import 'widgets/bottom_nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.deepOrange,
          ),
          initialRoute: SpalashPage.routeName,
          routes: {
            SpalashPage.routeName: (context) => SpalashPage(),
            LogInPage.routeName: (context) => LogInPage(),
            BottomNavBar.routeName: (context) => BottomNavBar(),
            HomePage.routeName: (context) => HomePage(),
            PaymentPage.routeName: (context) => PaymentPage(),
            PaymentSucessfullPage.routeName: (context) =>
                PaymentSucessfullPage(),
          },
        );
      },
    );
  }
}
