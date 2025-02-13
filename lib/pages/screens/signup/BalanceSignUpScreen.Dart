import 'package:flutter/material.dart';



class BalanceSignUpScreen extends StatefulWidget {
  const BalanceSignUpScreen({Key? key}) : super(key: key);

  @override
  State<BalanceSignUpScreen> createState() => _BalanceSignUpScreenState();
}

class _BalanceSignUpScreenState extends State<BalanceSignUpScreen> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Balance App Sign Up'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Description
            const Text(
              'For the balance app to:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '• Provide you with health information and support\n'
              '• Enable you to log your health information within a journal\n'
              '• Allow you to participate in the balance community if you choose to do so\n\n'
              'We need to use the personal data you choose to share with us, including data relating to your health.\n\n'
              'We assure, in the process of transferring data, that the data will not be intercepted, modified, or corrupted.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),

            // Checkbox for Terms & Conditions
            Row(
              children: [
                Checkbox(
                  value: isTermsAccepted,
                  onChanged: (value) {
                    setState(() {
                      isTermsAccepted = value ?? false;
                    });
                  },
                ),
                const Expanded(
                  child: Text(
                    'I have read and agreed to the terms and conditions',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // View Terms and Conditions Link
            GestureDetector(
              onTap: () {
                // Handle View Terms and Conditions Click
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('View Terms and Conditions clicked!'),
                  ),
                );
              },
              child: const Text(
                'View our terms and conditions',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.teal,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isTermsAccepted
                    ? () {
                        // Handle Sign Up Button Click
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Sign Up button clicked!'),
                          ),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  disabledBackgroundColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

