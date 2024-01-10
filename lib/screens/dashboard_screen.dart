import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Profile"),
          onPressed: () {
            GoRouter.of(context).go("/profile");
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
        ],
        currentIndex: 1, // Set the current index to 1 for the second tab
        onTap: (index) {
          // Handle tab selection if needed
          if (index == 0) {
            // Navigate to the profile tab
            GoRouter.of(context).go("/profile");
          }
        },
      ),
    );
  }
}
