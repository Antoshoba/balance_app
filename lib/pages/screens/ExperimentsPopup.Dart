import 'package:flutter/material.dart';
import 'package:balance_app/pages/forms/PostCreateForm.Dart';
import 'package:balance_app/pages/screens/OnboardingPage.Dart';

class ExperimentsPopup extends StatelessWidget {
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
        title: const Text(
          'Experiments',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Card(
              color: Colors.white, // Light pink background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What are experiments?",
                      style: TextStyle(
                        fontSize: 20,
                        height: 1.5,
                        color: Color(0xFF0b5369),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "These are tasks we've created for you to try based on things other people have found to help their wellbeing.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Color(0xFF0b5369),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "They wont necessarily work for everyone but they ve all based on improving general health so why not tyr a couple and see what works for you.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Color(0xFF0b5369),
                      ),
                    ),
                    const SizedBox(height: 16),
                       ElevatedButton(
              onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPage()),
            );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4C48B7),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Okay, got it',
                style: TextStyle(color: Colors.white),
              ),
            ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
