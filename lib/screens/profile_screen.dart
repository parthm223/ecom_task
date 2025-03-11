import 'package:ecom_task/screens/product.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        children: [
          const Divider(),
          ...settingsOptions.map((option) {
            final bool isHeader = option['title'] == 'Notification' ||
                option['title'] == 'Support';

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isHeader)
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 16, bottom: 8),
                    child: Text(
                      option['title'] == 'Notification'
                          ? 'Settings'
                          : 'Support',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ListTile(
                  title: Text(option['title']),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
                const Divider(),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
