import 'package:flutter/material.dart';
import 'package:yt_safari/config/routes/routes_name.dart';
import 'package:yt_safari/features/common/widgets/error_page.dart';
import 'package:yt_safari/features/home/presentation/page/home_page.dart';

class RoutesManage {
  RoutesManage._();

  static Map<String, WidgetBuilder> _routes(Object? args) => {
        RoutesName.homePage: (context) => const HomePage(),
      };

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final builder = _routes(routeSettings.arguments)[routeSettings.name];

    if (builder != null) {
      return MaterialPageRoute(builder: (context) => builder(context));
    } else {
      return MaterialPageRoute(
        builder: (context) => ErrorPage(
          errorText: "${routeSettings.name} page is not found",
        ),
      );
    }
  }
}
