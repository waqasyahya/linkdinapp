// app_routes.dart
// import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../screens/Home.dart';
import '../screens/Jobs.dart';
import '../screens/Network.dart';
import '../screens/Notification.dart';
import '../screens/PostCreate.dart';
import '../screens/splash.dart';




class AppRoutes {
  static const HOME = '/home';
  static const JOB = '/job';
  static const notify = '/notify';
  static const splash = '/SplashScreen';
  static const NETWORK = '/NETWORK';
  static const POST = '/POST';



  static List<GetPage> routes = <GetPage>[
    GetPage(name: HOME, page: () => home()),
    GetPage(name: JOB, page: () => jobs()),
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: notify, page: () => notification()),
    GetPage(name: NETWORK, page: () => network()),
    // GetPage(name: POST, page: () => post()),



  ];
}
