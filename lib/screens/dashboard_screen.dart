import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fl_chart/fl_chart.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              GoRouter.of(context).go("/");
            },
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(60),
            ),
          ),
          title: const Text("Dashboard"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple.shade100,
        ),
      ),
      body: Center(
        child: Column(
          children: [
          
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                height: 300, // Adjust the height as needed
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        color: Colors.purple.shade100,
                        value: 40,
                        title: 'Food',
                        
                      ),
                      PieChartSectionData(
                        color: Colors.purple.shade200,
                        value: 30,
                        title: 'Rent',
                      ),
                      PieChartSectionData(
                        color: Colors.purple.shade300,
                        value: 20,
                        title: 'Entertainment',
                      ),
                      PieChartSectionData(
                        color: Colors.purple.shade400,
                        value: 10,
                        title: 'Others',
                      ),
                    ],
                  ),
                ),
              ),
            ),
              SizedBox(height: 10,),
            ElevatedButton(
              child: const Text("Analyze"),
              onPressed: () {
                GoRouter.of(context).go("/analyze");
              },
            ),
             SizedBox(height: 10,),
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
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            GoRouter.of(context).go("/profile");
          }
        },
      ),
    );
  }
}