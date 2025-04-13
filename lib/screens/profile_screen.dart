import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Header
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://via.placeholder.com/150'), // Placeholder image
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Jane Doe',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    'jane.doe@example.com',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
        ),
        

            Divider(),

            // Settings Section
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              onTap: () {},
            ),

            Divider(),

            // Logout Button
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                icon: Icon(Icons.logout),
                label: Text('Logout'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ),
    );
  }
}