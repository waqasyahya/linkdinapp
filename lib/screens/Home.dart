import 'package:flutter/material.dart';
import 'drawer.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: ClipOval(
                child: Image.asset(
                  'assets/image/waqasimage.jpg', // Replace with your logo
                  width: 40, // Adjust the width as needed
                  height: 40, // Adjust the height as needed
                  fit: BoxFit.cover, // Ensures the image covers the area
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),

        title: Container(
          height: 35, // Adjust height if necessary
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10), // Adjust padding to align text and icon
              prefixIcon: Icon(Icons.search), // Add a search icon
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners for the search bar
              ),
              hintText: 'Search',
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10), // Adjust margin as needed

            child: ClipRRect(
              borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
              child: IconButton(
                icon: Icon(Icons.message_outlined),
                onPressed: () {
                  // Handle notification icon press
                },
              ),
            ),
          )

        ],
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
