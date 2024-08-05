// this entire webview thing is scuffed and broken
// idk how to fix it
// also we need to add this page to the router and also probably just make it accessible through home
// website should be badmintoninsight

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart'; // Import the WebView package

const Color regularRed = Color(0xFFC60613);
const Color lightRed = Color(0xFFFF0819);

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

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
      case 4:
        context.go('/blog');
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
      body: WebView(
        initialUrl: 'https://badminton-insight.com/', // Replace with your URL
        javascriptMode: JavascriptMode.unrestricted, // Ensure this is enabled
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
          BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: 'Compete'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Blog'), // New menu item for BlogPage
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
