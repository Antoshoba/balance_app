import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/WoopsPage.Dart';

class ResendEmailPage extends StatefulWidget {
  @override
  _ResendEmailPageState createState() => _ResendEmailPageState();
}

class _ResendEmailPageState extends State<ResendEmailPage> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Validate the email address
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    // Basic email regex pattern
    if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  void _verifyEmail() {
    final email = _emailController.text;
    // Add email verification logic here
    print('Verifying email: $email');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 70.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
  "Let's Keep your account\n safe",
  style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Color(0xFF0b5369),
  ),
),

                 
                    const SizedBox(height: 20),
                    const Text(
                      'Your email',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0b5369),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: 'Enter email address',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail, // Email validation logic
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // The form is valid, so proceed with verification
                          _verifyEmail();

                          // Navigate to the WoopsPage
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WoopsPage(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF353fbb),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 40),
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
