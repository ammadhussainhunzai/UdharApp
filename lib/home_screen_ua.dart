import 'package:flutter/material.dart';
import 'package:udhar_app/udhaar_entry.dart';
import 'all_udhaar_list.dart';


class HomeScreenUa extends StatefulWidget {
  const HomeScreenUa({super.key});

  @override
  State<HomeScreenUa> createState() => _HomeScreenUaState();
}

class _HomeScreenUaState extends State<HomeScreenUa> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    const HomeDashboard(),

    AllUdhaarScreen(),

    const Center(
      child: Text(
        "Settings Screen",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Top AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "My store",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),

          const CircleAvatar(
            radius: 16,
            child: Icon(
              Icons.person,
              size: 20,
            ),
          ),

          const SizedBox(width: 10),
        ],
      ),

      // Screen
      body: screens[selectedIndex],

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Udhaar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}


// =====================================================
// HOME DASHBOARD
// =====================================================

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Welcome Card
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xff2864dc),
                  Color(0xff0645bd),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome to UdhaarGo!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  "Start managing your business",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "₹0",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 2),

                Text(
                  "Total Outstanding",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // First Menu Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _menuButton(
                Icons.format_list_bulleted,
                "All Udhaar",
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewUdhaarScreen(),
                    ),
                  );
                },
                child: _menuButton(
                  Icons.add,
                  "New Udhaar",
                ),
              ),

              _menuButton(
                Icons.qr_code_scanner,
                "Scan Udhaar",
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Second Menu Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _menuButton(
                Icons.download,
                "Import List",
              ),

              _menuButton(
                Icons.history,
                "Payment History",
              ),

              _menuButton(
                Icons.notifications,
                "Reminders",
              ),
            ],
          ),

          const SizedBox(height: 25),

          // Recent Activity Heading
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Recent Activity",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "View All",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Recent Activity Card
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Color(0xfff1f3f5),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.currency_rupee,
                    color: Colors.grey.shade400,
                    size: 22,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "No transactions yet",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  "Your recent transactions will appear here",
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Notifications Heading
          const Text(
            "Notifications",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          // Notifications Card
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Color(0xfff1f3f5),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.grey.shade400,
                    size: 22,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "No notifications yet",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  "Important updates will appear here",
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Menu Button
  static Widget _menuButton(
      IconData icon,
      String title,
      ) {
    return Column(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.blue,
            size: 20,
          ),
        ),

        const SizedBox(height: 6),

        Text(
          title,
          style: const TextStyle(
            fontSize: 9,
          ),
        ),
      ],
    );
  }
}