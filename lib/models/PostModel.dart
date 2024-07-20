import 'package:flutter/material.dart';
import 'package:get/get.dart';
void showHalfScreenModalpost() {
  showModalBottomSheet(
    context: Get.context!,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: Get.height / 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            'Half Screen Modal',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      );
    },
  );
}