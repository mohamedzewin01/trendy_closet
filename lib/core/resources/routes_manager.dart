import 'package:flutter/material.dart';
import 'package:trendy_closet/splash.dart';

import '../../features/home/presentation/pages/home_view.dart';


class RoutesManager {
  static const String splashScreen = '/';

  static const String homeScreen = '/home';
  static const String layout = '/layout';
  static const String categories = '/categories';
  static const String allBestDealsView = '/AllBestDeals';
  static const String bestDealsAdaptive = '/BestDealsAdaptive';
  static const String categoriesAdaptive = '/CategoriesAdaptive';
  static const String bestDealsView = '/BestDeals';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      // case RoutesManager.layout:
      //   return MaterialPageRoute(builder: (_) => const LayoutScreen());
      case RoutesManager.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());


      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder:
          (_) => Scaffold(
            appBar: AppBar(title: const Text("No Route Found")),
            body: const Center(child: Text("No Route Found")),
          ),
    );
  }
}
