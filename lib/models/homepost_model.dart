import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkdinapp/models/post_model.dart';

void showHalfScreenModal(BuildContext context, PostModel post) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 200,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit Post'),
              onTap: () {
                // Handle edit action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Delete Post'),
              onTap: () {
                // Handle delete action
                Navigator.pop(context);
              },
            ),
            // Add more options as needed
          ],
        ),
      );
    },
  );
}