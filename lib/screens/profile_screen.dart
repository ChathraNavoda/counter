import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Dashborad"),
          onPressed: (){
             GoRouter.of(context).go("/");
          },
        ),
      ),
    );
  }
}
