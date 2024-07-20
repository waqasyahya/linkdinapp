import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:linkdinapp/screens/BottomBar.dart';
import 'package:linkdinapp/screens/splash.dart';

import 'Routes/routes.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize ThemeController before using it
    // Get.put(ThemeController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'linkdin',
      initialRoute: AppRoutes.splash,
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => BottomNavigationPageController());
      }),
      getPages: [
        GetPage(name: AppRoutes.splash, page: () => SplashScreen()),

        GetPage(name: AppRoutes.HOME, page: () => BottomNavigationPage()),
        // GetPage(name: '/theme', page: () => ThemeSelectionPage()),
      ],
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      // themeMode: Get.find<ThemeController>().themeMode,
    );
  }
}
