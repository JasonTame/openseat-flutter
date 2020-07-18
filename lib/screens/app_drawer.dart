import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.black87),
            child: Image.asset(
              'assets/images/logo_white.png',
              fit: BoxFit.contain,
            ),
          ),
          ListTile(
            title: Text('How To'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Sign up'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Log in'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
