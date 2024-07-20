import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(

            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage('assets/image/waqasimage.jpg'), // Replace with your logo
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Waqas Yahya',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    'View profile',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: Text('45 profile viewers',style: TextStyle(color: Colors.black),),
                  onTap: () {
                    // Handle item 1 tap
                    Navigator.of(context).pop(); // Close the drawer
                  },
                ),
                ListTile(
                  title: Text('585 post impressions'),
                  onTap: () {
                    // Handle item 2 tap
                    Navigator.of(context).pop(); // Close the drawer
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('Saved posts',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500, ),),
                  onTap: () {
                    // Handle item 2 tap
                    Navigator.of(context).pop(); // Close the drawer
                  },
                ),
                ListTile(
                  title: Text('Groups',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500, ),),
                  onTap: () {
                    // Handle item 2 tap
                    Navigator.of(context).pop(); // Close the drawer
                  },
                ),
                ListTile(
                  title: Text('Games',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500, ),),
                  onTap: () {
                    // Handle item 2 tap
                    Navigator.of(context).pop(); // Close the drawer
                  },
                ),
              ],

            ),

          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Divider(),

                ListTile(
                  leading: Icon(Icons.rectangle),
                  title: Text('Try Premium for PKRO',style: TextStyle(fontWeight: FontWeight.w300),),
                  onTap: () {
                    // Handle logout tap
                    Navigator.of(context).pop(); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings',style: TextStyle(fontWeight: FontWeight.w300),),
                  onTap: () {
                    // Handle settings tap
                    Navigator.of(context).pop(); // Close the drawer
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
