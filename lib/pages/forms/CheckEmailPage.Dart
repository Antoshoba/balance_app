import 'package:flutter/material.dart';
import 'package:balance_app/pages/forms/VerifyEmailPage.dart';

class CheckEmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Check your email',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Thanks for that!\n\nWe’ve sent thailaks@gmail.com an email with the next steps. Please check your spam if you can’t see it in your inbox.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle 'Go to my inbox' action
              },
              style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF0b5369), // Button background color
    padding: const EdgeInsets.symmetric(horizontal: 15), // Padding inside the button
  ),
              child: const Text(
                'Go to my inbox',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Handle 'I haven't received an email' action
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VerifyEmailPage()),
            );
              },
              child: const Text(
  "I haven't received an email",
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  ),
),
            ),
            TextButton(
              onPressed: () {
                // Handle 'Enter code manually' action
              },
              child: const Text('Enter code manually',style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  ),),
            ),
            TextButton(
              onPressed: () {
                // Handle 'Exit registration' action
              },
              child: const Text('Exit registration',style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  ),),
            ),
            const SizedBox(height: 40),
             Image.asset(
                  'assets/images/yoga.jpg', // Replace with your saved image path
                  height: 300,
                ),
            // Image.asset(
            //   'assets/images/yoga.jpg', // Add your image asset path here
            //   height: 150,
            // ),
          ],
        ),
      );
  }
}
