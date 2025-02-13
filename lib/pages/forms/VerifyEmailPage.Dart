import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/WoopsPage.Dart';

class VerifyEmailPage extends StatefulWidget {
  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  final TextEditingController _codeController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Added form key

  // Validate the code to be a 6-digit number
  String? _validateCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Code is required';
    }
    if (!RegExp(r'^\d{6}$').hasMatch(value)) {
      return 'Please enter a valid 6-digit code';
    }
    return null;
  }

  void _verifyEmail() {
    final code = _codeController.text;
    // Add email verification logic here
    print('Verifying code: $code');
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
          key: _formKey, // Use form key
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Verify your email\naddress',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0b5369),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Please provide the 6-digit code you\nreceived by email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        height: 1.5,
                        color: Color(0xFF0b5369),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Code',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0b5369),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _codeController,
                      decoration: const InputDecoration(
                        hintText: 'Enter code here',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: _validateCode, // Add validation here
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Check if the form is valid
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
