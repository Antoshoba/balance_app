import 'package:flutter/material.dart';

class PersonalDataInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
           Navigator.pop(context);
          },
        ),
        // title: const Text(
        //   '',
        //   style: TextStyle(color: Colors.white),
        // ),
        backgroundColor: const Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 70.0,
      ),
      
      body: Container(
        color: const Color(0xFFF8EAF4), // Light pink background color
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What personal data will you ask me for?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0b5369),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "We’ll need you to create a username, tell us your age and share some information about the frequency of your periods.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xFF0b5369),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Then there are other things like symptoms, health conditions, medication, procedures and your medical background that are all optional but the more you tell us about yourself, the more we can personalise the app around you.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xFF0b5369),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        // Handle "Okay, got it" action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4C47F7), // Blue button color
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'Okay, got it',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
