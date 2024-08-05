import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

const Color regularRed = Color(0xFFC60613);
const Color lightRed = Color(0xFFFF0819);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/practice');
        break;
      case 2:
        context.go('/compete');
        break;
      case 3:
        context.go('/account');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFC60613), Color(0xFF9D020E)],
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent, // Set to transparent to show gradient
            elevation: 0, // Remove shadow
            title: Text('FootworkTracker', style: GoogleFonts.poppins(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500)),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Elevate Your Practice',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w700, // Adjust boldness
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Immerse yourself in a learning experience designed to boost your skills.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: regularRed,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Start Practice'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Challenge a Friend'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: regularRed,
                      side: BorderSide(color: regularRed),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF232222), // Solid gray color
        selectedItemColor: lightRed,
        unselectedItemColor: Colors.white,
        onTap: (index) => _onItemTapped(context, index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Practice'),
          BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: 'Compete'), // Updated icon
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: regularRed,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Move to bottom-right corner
    );
  }
}
