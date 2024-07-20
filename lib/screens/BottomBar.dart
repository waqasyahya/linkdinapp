import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../Routes/routes.dart';


import 'Home.dart';
import 'Jobs.dart';
import 'Network.dart';
import 'Notification.dart';
import 'PostCreate.dart';
import 'Threestar.dart';
class BottomNavigationPageController extends GetxController {
  static BottomNavigationPageController get to => Get.find();

  final currentIndex = 0.obs;

  void changePage(int _index) {
    if (_index == 2) {
      post();
    } else {
      currentIndex.value = _index;
      if (_index == 0) {
        Get.toNamed(AppRoutes.HOME);
      } else if (_index == 1) {
        Get.toNamed(AppRoutes.NETWORK);
      } else if (_index == 3) {
        Get.toNamed(AppRoutes.notify);
      } else if (_index == 4) {
        Get.toNamed(AppRoutes.JOB);
      }
    }
  }

// void post() {
//   Get.toNamed(AppRoutes.POST);
// }
}

class BottomNavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        body: IndexedStack(
          index: BottomNavigationPageController.to.currentIndex.value,
          children: [
            home(),
            network(),
            Container(),
            notification(),
            jobs(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 66,
          child: Stack(
            children: [

              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: BottomNavigationPageController.to.currentIndex.value,
                onTap: BottomNavigationPageController.to.changePage,
                selectedItemColor: Colors.black,
                // selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
                unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,

                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, size: 25),
                    label: 'HOME',
                     // Add this line to increase the font size
                  ),
                  BottomNavigationBarItem(
                    icon: ClipOval(
                      child: Icon(Icons.person, size: 25),
                    ),
                    label: 'My Network',
                  ),
                  BottomNavigationBarItem(
                    icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.translate(
                          offset: Offset(4, -4),
                          child: CustomPaint(
                            size: Size(22, 22),
                            painter: ThreeColorRectanglePainter(),
                          ),
                        ),
                      ],
                    ),
                    label: 'Post',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_sharp, size: 25),
                    label: 'Notification',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag, size: 25),
                    label: 'Jobs',
                  ),
                ],
              ),
              if (BottomNavigationPageController.to.currentIndex.value != 2)
                Positioned(
                  top: 0,
                  left: _getLeftPosition(context, BottomNavigationPageController.to.currentIndex.value),
                  child: Container(
                    height: 3,
                    width: 60,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  double _getLeftPosition(BuildContext context, int index) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = screenWidth / 5;
    return itemWidth * index + (itemWidth - 62) / 2;
  }
}
