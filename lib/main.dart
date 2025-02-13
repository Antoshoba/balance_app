import 'package:flutter/material.dart';
// import 'hrt_steps/BalancePlusPage.Dart'; // Ensure BalanceAppScreen.dart is correctly implemented
import 'pages/screens/BalanceAppScreen.dart';
import 'package:balance_app/widgets/HelpButtonDemo.Dart'; // Corrected import BalanceAppScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sticky Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppWithStickyButton(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppWithStickyButton extends StatefulWidget {
  const AppWithStickyButton({super.key});

  @override
  _AppWithStickyButtonState createState() => _AppWithStickyButtonState();
}

class _AppWithStickyButtonState extends State<AppWithStickyButton> {
  final int _currentIndex = 0;

  final List<Widget> _pages = [
    const BalanceAppScreen(), // Main page content
    // BalancePlusPage(),
    const Center(child: Text('Search Page')),
    const Center(child: Text('Profile Page')),
  ];

  bool isExpanded = false;

  void toggleButton() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main Page Content
          _pages[_currentIndex],

          // Sticky Button
          Positioned(
            right: -50,
            bottom: 200,
            child: HelpButtonDemo(
              isExpanded: isExpanded,
              onToggle: toggleButton,
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //   ],
      // ),
    );
  }
}
