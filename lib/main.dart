import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yt_safari/config/routes/routes_manage.dart';
import 'package:yt_safari/config/themes/theme_config.dart';

import 'config/routes/routes_name.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(2400, 1080),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeConfig.lightThemeConfig,
          initialRoute: RoutesName.homePage,
          onGenerateRoute: RoutesManage.onGenerateRoute,
        );
      },
    );
  }
}
