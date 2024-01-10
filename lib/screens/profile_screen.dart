import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Dashboard"),
          onPressed: () {
            GoRouter.of(context).go("/");
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
        ],
        currentIndex: 0, // Set the current index to 0 for the first tab
        onTap: (index) {
          // Handle tab selection if needed
          if (index == 1) {
            // Navigate to the dashboard tab
            GoRouter.of(context).go("/");
          }
        },
      ),
    );
  }
}
