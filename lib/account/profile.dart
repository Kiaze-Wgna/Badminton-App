import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage ({super.key});

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
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Profile', style: GoogleFonts.poppins(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500)),
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
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://example.com/profile-image.jpg'),
              ),
              const SizedBox(height: 20),
              Text(
                'John Doe',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'johndoe@example.com',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 30),
              _buildProfileItem(Icons.sports_soccer, 'Practice Sessions: 42'),
              _buildProfileItem(Icons.emoji_events, 'Competitions Won: 7'),
              _buildProfileItem(Icons.trending_up, 'Current Streak: 5 days'),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC60613),
                  foregroundColor: Colors.white,
                ),
                child: const Text('Edit Profile'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF232222),
        selectedItemColor: const Color(0xFFFF0819),
        unselectedItemColor: Colors.white,
        currentIndex: 3,
        onTap: (index) => _onItemTapped(context, index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Practice'),
          BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: 'Compete'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }

  Widget _buildProfileItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFC60613)),
          const SizedBox(width: 10),
          Text(text, style: GoogleFonts.poppins(fontSize: 16)),
        ],
      ),
    );
  }
}