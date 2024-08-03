import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen(),));
}

//Homescreen Code
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 118)),
        useMaterial3: true,
      ),
      //main build thing
      home:Scaffold(
        //top bar
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("BadApp"),
        ),
        //main content
        body:Container(
          child:Text("Home",style:TextStyle(fontSize: 50)),
          alignment: Alignment.topCenter,
        ),
        //bottom bar
        bottomNavigationBar:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Button Home.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Button Practice.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const PracticeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Button Account.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const AccountScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            ]
        ),
        //menu select
        drawer: Drawer(
          backgroundColor: Colors.green,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:Text(""),
              margin: const EdgeInsets.all(11.0)
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Home.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Practice.png"),
                onTap: () {

                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Practice.png"),
                onTap: () {

                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Practice.png"),
                onTap: () {

                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Account.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const AccountScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            ]
        ),
        )
      ),
    );
  }
}

//PracticeScreen Code
class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 118)),
        useMaterial3: true,
      ),
      //main build thing
      home:Scaffold(
        //top bar
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("BadApp"),
        ),
        //main content
        body:Container(
          child:Text("Practice",style:TextStyle(fontSize: 50)),
          alignment: Alignment.topCenter,
        ),
        //bottom bar
        bottomNavigationBar:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Button Home.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Button Practice.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const PracticeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Button Account.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const AccountScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            ]
        ),
        //menu select
        drawer: Drawer(
          backgroundColor: Colors.green,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:Text(""),
              margin: const EdgeInsets.all(11.0)
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Home.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Practice.png"),
                onTap: () {

                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Practice.png"),
                onTap: () {

                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Practice.png"),
                onTap: () {

                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Account.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const AccountScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            ]
        ),
        )
      ),
    );
  }
}

//AccountScreen Code
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 118)),
        useMaterial3: true,
      ),
      //main build thing
      home:Scaffold(
        //top bar
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("BadApp"),
        ),
        //main content
        body:Container(
          child:Text("Account",style:TextStyle(fontSize: 50)),
          alignment: Alignment.topCenter,
        ),
        //bottom bar
        bottomNavigationBar:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Button Home.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Button Practice.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const PracticeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Button Account.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const AccountScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            ]
        ),
        //menu select
        drawer: Drawer(
          backgroundColor: Colors.green,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:Text(""),
              margin: const EdgeInsets.all(11.0)
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Home.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Practice.png"),
                onTap: () {
                  
                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Practice.png"),
                onTap: () {

                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Practice.png"),
                onTap: () {

                },
              ),
            ),
            Flexible(
              child:GestureDetector(
                child:Image.asset("Assets/Images/Menu Account.png"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => const AccountScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero
                    ),
                  (route) => false
                  ); 
                },
              ),
            ),
            ]
        ),
        )
      ),
    );
  }
}