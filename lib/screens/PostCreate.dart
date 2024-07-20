import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/PostModel.dart';



void post() {
  Get.bottomSheet(
    Container(
      height: Get.height, // Use the complete screen height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: kToolbarHeight,
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              automaticallyImplyLeading: false, // Remove the default back button
              leading: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: IconButton(
                  icon: Icon(Icons.close, size: 25, color: Colors.black),
                  onPressed: () {
                    Get.back(); // Close the bottom sheet
                  },
                ),
              ),
              title: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Anyone',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(width: 1), // Space between text and dropdown
                    IconButton(
                      icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                      onPressed: () {

                        showHalfScreenModal();
                      },
                    ),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    icon: Icon(Icons.more_vert, size: 28, color: Colors.black),
                    onPressed: () {
                      // Handle icon button press
                    },
                  ),
                ),
                SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                    onPressed: () {
                      // Handle the button press action here
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black54,  // Text color of the button
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      'Post',
                      style: TextStyle(fontSize: 16), // Text style
                    ),
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(1.0), // Line height
                child: Container(
                  height: 1.0, // Line thickness
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    isScrollControlled: true,
    backgroundColor: Colors.white, // Make the background transparent
    barrierColor: Colors.white.withOpacity(0.3), // Set the shadow color to white with opacity
  );
}
