import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Baby Clothes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Notification'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Language'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Country'),
            onTap: () {},
          ),
          const Divider(),
          const ListTile(
            title: Text(
              'Support',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Terms & Condition'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Privacy Policy'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Contact us'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('About us'),
            onTap: () {},
          ),
          const Divider(),
        ],
      ),
    );
  }
}