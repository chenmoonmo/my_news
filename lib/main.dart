import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_news/pages/welcome/welcome.dart';
import 'package:my_news/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: true,
      child: MaterialApp(
        title: 'Material App',
        home: WelecomePage(),
        routes: staticRoutes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
