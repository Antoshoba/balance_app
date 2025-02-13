import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/BalanceAppScreen.Dart';
import 'package:balance_app/pages/screens/OnboardingPage.Dart';
import 'package:balance_app/pages/forms/ResetPasswordPage.Dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  bool _obscurePassword = true; // Track password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BalanceAppScreen()),
            );
          },
        ),
        title: Text(
          'Log In',
          style: TextStyle(color: Colors.white), // White color for the title text
        ),
        backgroundColor: Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 70.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Assign the form key
          child: ListView(
            // Wrap the body content in ListView to make it scrollable
            children: [
              SizedBox(height: 148),
              Text(
                'Your email',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1E5D6E),),
              ),
              SizedBox(height: 8),
              // TextFormField(
              //   decoration: InputDecoration(
              //     hintText: 'e.g. sandra@example.com',
              //     hintStyle: TextStyle(color: Color(0xFF1E5D6E)), // Hint text color
              //     border: OutlineInputBorder(),
              //   ),
              //   validator: (value) {
              //     if (value == null || value.isEmpty) {
              //       return 'Please enter your email';
              //     } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
              //         .hasMatch(value)) {
              //       return 'Please enter a valid email';
              //     }
              //     return null;
              //   },
              // ),
              TextFormField(
  decoration: InputDecoration(
    hintText: 'e.g. sandra@example.com',
     hintStyle: TextStyle(
      color: const Color(0xFF1E5D6E).withOpacity(0.5), // 50% opacity
    ), // Hint text color
    border: OutlineInputBorder(),

    // Default border
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Color.fromRGBO(30, 93, 110, 0.1), width: 2), // 50% opacity
    ),

  ),

  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  },
),

              SizedBox(height: 20),
              Text(
                'Your password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1E5D6E),),
              ),
              SizedBox(height: 8),
              TextFormField(
                obscureText: _obscurePassword, // Toggle password visibility
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: Color(0xFF3640BB),
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword; // Toggle visibility
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                   enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Color.fromRGBO(30, 93, 110, 0.1), width: 2), // 50% opacity
    ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
             TextButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResetPasswordPage()),
    );
  },
  style: TextButton.styleFrom(
    backgroundColor: Colors.transparent, // No background
    foregroundColor: Colors.black, // Text color
    overlayColor: Colors.transparent, // No hover effect
  ),
  child: const Text(
    'I forgot my password',
    style: TextStyle(fontWeight: FontWeight.bold, color:Color(0xFF3640BB)),
  ),
),

              SizedBox(height: 16), // Adds space before the button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, navigate to the next page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnboardingPage()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Color(0xFF353fbb),
                  backgroundColor: Color(0xFF3640BB).withOpacity(0.1),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Log in',
                  style: TextStyle(color: Color(0xFFE5ECF2)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
