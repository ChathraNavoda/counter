import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/d2819e38-989f-4cc7-9b31-9ba1dc9b6a13/SOSBuDa65U.json',
              width: 200,
              height: 200,
              repeat: true,
              reverse: false,
              animate: true,
            ),
            const SizedBox(height: 20), // Adjust the spacing between Lottie and the button
            ElevatedButton(
              onPressed: () {
                 GoRouter.of(context).go("/profile");
                print('Get Started button pressed!');
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}