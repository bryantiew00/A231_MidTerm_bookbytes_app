import 'package:bookbyte/buyer/user.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  final String page;
  final User userdata;
  
  const MyDrawer({super.key, required this.page, required this.userdata});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,
            ),
            currentAccountPicture: const CircleAvatar(
                foregroundImage: AssetImage('assets/images/profile.png'),
                backgroundColor: Colors.white),
            accountName: Text(widget.userdata.userName.toString()),
            accountEmail: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.userdata.userEmail.toString()),
                  ]),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('My Account'),
            onTap: () {
              Navigator.pop(context);
              if (widget.page.toString() == "account") {
                Navigator.pop(context);
                return;
              }
              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}