import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Routes/routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _blueBorderAnimation;
  late Animation<Color?> _pinkBorderAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2), // Animation duration
      vsync: this,
    );

    _blueBorderAnimation = ColorTween(
      begin: Colors.white,
      // end: Colors.pink.shade100,
      end: Colors.yellow.shade100,

    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // Smooth transition
    ));

    _pinkBorderAnimation = ColorTween(
      begin: Colors.white,
      end: Colors.pink.shade100,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // Smooth transition
    ));

    _controller.forward();

    _controller.addListener(() {
      if (_controller.isCompleted) {
        // Navigate to the next screen after the animation completes
        Future.delayed(Duration(seconds: 1)).then((_) {
          try {
            Get.offAllNamed(AppRoutes.HOME);
          } catch (e) {
            print('Error navigating to home page: $e');
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Stack(
                  children: <Widget>[
                    // Outer Container with animated blue border
                    Container(
                      width: 160, // Adjust the width as needed
                      height: 160, // Adjust the height as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: _blueBorderAnimation.value!, // Animated blue border color
                          width: 9, // Border width
                        ),
                      ),
                      child: Center(
                        // Inner Container with animated pink border
                        child: Container(
                          width: 150, // Adjust the width as needed
                          height: 150, // Adjust the height as needed
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: _pinkBorderAnimation.value!, // Animated pink border color
                              width: 22, // Border width
                            ),
                          ),
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.white, // Background color of the circle
                              radius: 70, // Slightly smaller radius to fit inside the border
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/image/linkdin.png'), // Path to your logo image
                                radius: 65, // Slightly smaller radius to fit inside the border
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
