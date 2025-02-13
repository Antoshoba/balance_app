import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/hrt_steps/BalanceTabScreen.dart';
import 'package:balance_app/pages/screens/hrt_steps/ResendEmailPage.dart';

class HealthOverviewPage extends StatefulWidget {
  @override
  _HealthOverviewPageState createState() => _HealthOverviewPageState();
}

class _HealthOverviewPageState extends State<HealthOverviewPage> {
  bool _showResentMessage = false;

  void _resendEmail() {
    // Logic to resend the email
    print("Resending email...");

    // Show the message for 2 seconds
    setState(() {
      _showResentMessage = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _showResentMessage = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BalanceTabScreen()),
            );
          },
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 70.0,
      ),
      body: Scrollbar(
        thumbVisibility: true, // Makes the scrollbar always visible
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Email not received',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'We\'ve sent an email to:',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'premila1990@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Please double-check for any typos. If there is a typo, you can re-enter it.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResendEmailPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Re-enter your email',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Check your spam; you may need to wait a couple of minutes for the email to appear.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 8),
               Center(
              child:GestureDetector(
                onTap: _resendEmail,
                child: const Text(
                  "Attempt to re-send the email",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
          ),
              
              const SizedBox(height: 16),
              const Text(
                'If you still haven’t received an email from us, you can contact us at the address below:',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Handle contact action (email link)
                  },
                  child: const Text(
                    'info@balance-app.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child:    // Stack to overlay content on top of the image
              Stack(
                alignment: Alignment.center,
                children: [
                  // Image at the background
                  Image.asset(
                    'assets/images/balance_mobile.jpg', // Replace with your saved image path
                    height: 300,
                  ),
                  // Positioned message on top of the image
                  if (_showResentMessage)
                    Positioned(
                      bottom: 200, // Adjust position from the bottom of the image
                      child: Container(
  padding: const EdgeInsets.all(12.0),
  decoration: BoxDecoration(
    color: Color(0xFF0DF4EB),
    borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
  ),
  child: Text(
    "Code re-sent via email",
    style: TextStyle(fontSize: 16, color: Colors.black),
  ),
)

                    ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
