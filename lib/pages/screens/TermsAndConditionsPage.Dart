import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/BalanceTabScreen.dart';

class TermsAndConditionsPage extends StatelessWidget {
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
          'Terms And Conditions',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 70.0,
      ),
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Terms and conditions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'TERMS AND CONDITIONS OF USE FOR OUR WEBSITE AND THE BALANCE APP',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Balance, by Newson Health Limited',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Balance is an app that has been created with a single mission in mind: '
              'to provide evidence based and non-biased information about the perimenopause '
              'and the menopause for people across the world.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            const Text(
              'Below are our terms of use for our Website and the Balance App (defined below).',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Please note that neither the content of the Website nor the Balance App is intended '
              'in any way to be a substitute for professional medical advice, diagnosis, or treatment. '
              'Always seek the advice of your doctor or other qualified health provider with any questions '
              'you may have regarding a medical condition.',
              style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
