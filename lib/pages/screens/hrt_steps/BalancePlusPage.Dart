import 'package:flutter/material.dart';

class BalancePlusPage extends StatefulWidget {
  @override
  _BalancePlusPageState createState() => _BalancePlusPageState();
}

class _BalancePlusPageState extends State<BalancePlusPage> {
  bool _isTermsAccepted = false; // Checkbox condition

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF5A57FF), Color(0xFF9C8EFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Main Content
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top bar with title and close button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upgrade to balance++',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.close, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                // 7 Days Free Card
                Card(
                  margin: EdgeInsets.all(16.0),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '7 days free',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5A57FF),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Try our premium features for free for 7 days then pay just \u00a34.99 a month.',
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Please note each user is entitled to one free trial.',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                // Scrollable Day List
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    children: [
                      _buildDayItem(
                        icon: Icons.lock_open,
                        day: 'Day 1',
                        title: 'Start trial today',
                        description: 'Instant access to our premium balance+ membership for 7 days.',
                      ),
                      _buildDayItem(
                        icon: Icons.cancel,
                        day: 'Day 1 - 7',
                        title: 'Cancel anytime',
                        description: 'You can cancel your free trial anytime before day 7.',
                      ),
                      _buildDayItem(
                        icon: Icons.star,
                        day: 'Day 8',
                        title: 'Pay \u00a34.99 a month',
                        description: 'After your 7-day free trial is over, you will be charged \u00a34.99 a month.',
                      ),
                    ],
                  ),
                ),
                // Bottom Slider Indicator
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSliderDot(isActive: true),
                      _buildSliderDot(isActive: false),
                      // _buildSliderDot(isActive: false),
                    ],
                  ),
                ),
                // Accept Terms and Conditions + Buttons
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _isTermsAccepted,
                            onChanged: (value) {
                              setState(() {
                                _isTermsAccepted = value ?? false;
                              });
                            },
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TermsAndConditionsScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'I accept the Terms & Conditions',
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF5A57FF),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: _isTermsAccepted
                            ? () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Free trial started!")),
                                );
                              }
                            : null, // Disable button if terms are not accepted
                        child: Text('Start my free trial today'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Skip - I want to use balance for free',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget to build individual day item
  Widget _buildDayItem({
    required IconData icon,
    required String day,
    required String title,
    required String description,
  }) {
    return Container(
    // padding: const EdgeInsets.all(16.0),
    // margin: const EdgeInsets.only(bottom: 16.0),
    decoration: BoxDecoration(
      color: Colors.grey[900], // Background color
      borderRadius: BorderRadius.circular(12), // Rounded corners
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3), // Subtle shadow
          blurRadius: 8,
          offset: Offset(0, 4), // Shadow position
        ),
      ],
    ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Circular Yellow Background for Icon
// Container(
//   width: 48,
//   height: 48,
//   decoration: BoxDecoration(
//     gradient: LinearGradient(
//       colors: [Colors.yellow[700]!, Colors.yellow[300]!],
//       begin: Alignment.topCenter,
//       end: Alignment.bottomCenter,
//     ),
//     // shape: BoxShape.circle, // To keep the container circular
//   ),
//   child: Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center, // Align icons vertically centered
//       children: [
//         Icon(icon, color: Colors.white, size: 16),  // Icon 1
//         // Icon(Icons.lock, color: Colors.white, size: 16),  // Icon 2
//         // Icon(Icons.check, color: Colors.white, size: 16),  // Icon 3
//       ],
//     ),
//   ),
// ),
 Icon(icon, color: Colors.white, size: 16),  // Ic

          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  day,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Slider Dot Builder
  Widget _buildSliderDot({required bool isActive}) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.white : Colors.grey[400],
      ),
    );
  }
}

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
        backgroundColor: Color(0xFF5A57FF),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text('Here are the terms and conditions...'),
      ),
    );
  }
}


