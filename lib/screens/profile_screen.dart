import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
  preferredSize: const Size.fromHeight(80.0),
  child: AppBar(
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        // Handle back button press
        GoRouter.of(context).go("/"); // You can replace "/" with the desired route
      },
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(60),
      ),
    ),
    title: const Text("Profile"),
    centerTitle: true,
    backgroundColor:  Colors.deepPurple.shade100// Set the background color to light orange
  ),
),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Avatar
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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'),
            ),
            const SizedBox(height: 20),
        
            // Meaningful Button
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go("/manage_profile");
              },
              child: const Text("Manage Profile"),
            ),
          ],
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
        currentIndex: 0, // Set the current index to 0 for the first tab
        onTap: (index) {
          // Handle tab selection if needed
          if (index == 1) {
            // Navigate to the dashboard tab
            GoRouter.of(context).go("/dashboard");
          }
        },
      ),
    );
  }
}
