import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/OnboardingPage.Dart';
import 'package:balance_app/pages/screens/reviews/CurrentTreatment.Dart';

class ReviewTreatment extends StatefulWidget {
  @override
  _ReviewTreatmentState createState() => _ReviewTreatmentState();
}

class _ReviewTreatmentState extends State<ReviewTreatment> {
  String? _selectedOption; // Variable to track the selected option

  void _onOptionSelected(String value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPage()),
            );
          },
        ),
        title: Text(
          'Review a Treatment',
          style: TextStyle(
            color: Colors.white, // White color for the title text
          ),
        ),
        backgroundColor: Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 100.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 15),
            Text(
              'What type of treatment do you want to review?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 30),
            // Radio button for "ON" with green background
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFE6E6FF), // Green background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: RadioListTile<String>(
                title: Text(
                  'HRT',
                  style: TextStyle(fontSize: 18, color: Color(0xFF0b5369),),
                ),
                value: 'HRT',
                groupValue: _selectedOption,
                onChanged: (value) {
                  _onOptionSelected(value!);
                },
              ),
            ),
            SizedBox(height: 10),
            // Radio button for "OFF" with green background
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFE6E6FF), // Green background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: RadioListTile<String>(
                title: Text(
                  'Alternatives to HRT',
                  style: TextStyle(fontSize: 18, color: Color(0xFF0b5369),),
                ),
                value: 'alternatives to hrt',
                groupValue: _selectedOption,
                onChanged: (value) {
                  _onOptionSelected(value!);
                },
              ),
            ),
            SizedBox(height: 300),
            ElevatedButton(
              onPressed: _selectedOption != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CurrentTreatment()),
                      );
                    }
                  : null, // Disable button if no option is selected
              style: ElevatedButton.styleFrom(
                backgroundColor: _selectedOption != null ? Color(0xFF4C48B7) : Colors.grey,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Next',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
