import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
          ),
          SizedBox(height: 24),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Nama"),
            subtitle: Text("Oscar Angelo P"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("Tentang"),
            subtitle: const Text("Available"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text("Telepon"),
            subtitle: const Text("+62 888-5555-577"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}