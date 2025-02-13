import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/reviews/TreatmentReview.Dart';
import 'package:balance_app/pages/screens/reviews/ReviewTreatment.Dart';

class CurrentTreatment extends StatefulWidget {
  @override
  _CurrentTreatmentState createState() => _CurrentTreatmentState();
}

class _CurrentTreatmentState extends State<CurrentTreatment> {
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
              MaterialPageRoute(builder: (context) => ReviewTreatment()),
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
              'How long hav you been taking your current treatment?',
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
                  'Less than 3 months',
                  style: TextStyle(fontSize: 18, color: Color(0xFF0b5369),),
                ),
                value: 'less than 3 months',
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
                  '3-12 months',
                  style: TextStyle(fontSize: 18, color: Color(0xFF0b5369),),
                ),
                value: '3-12 months',
                groupValue: _selectedOption,
                onChanged: (value) {
                  _onOptionSelected(value!);
                },
              ),
            ),
             SizedBox(height: 10),
             Container(
              decoration: BoxDecoration(
                color: Color(0xFFE6E6FF), // Green background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: RadioListTile<String>(
                title: Text(
                  '1-2 years',
                  style: TextStyle(fontSize: 18, color: Color(0xFF0b5369),),
                ),
                value: '1-2 years',
                groupValue: _selectedOption,
                onChanged: (value) {
                  _onOptionSelected(value!);
                },
              ),
            ),
              SizedBox(height: 10),
             Container(
              decoration: BoxDecoration(
                color: Color(0xFFE6E6FF), // Green background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: RadioListTile<String>(
                title: Text(
                  '2-5 years',
                  style: TextStyle(fontSize: 18, color: Color(0xFF0b5369),),
                ),
                value: '2-5 years',
                groupValue: _selectedOption,
                onChanged: (value) {
                  _onOptionSelected(value!);
                },
              ),
            ),
              SizedBox(height: 10),
             Container(
              decoration: BoxDecoration(
                color: Color(0xFFE6E6FF), // Green background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: RadioListTile<String>(
                title: Text(
                  'Over 5 years',
                  style: TextStyle(fontSize: 18, color: Color(0xFF0b5369),),
                ),
                value: 'Over 5 years',
                groupValue: _selectedOption,
                onChanged: (value) {
                  _onOptionSelected(value!);
                },
              ),
            ),
            SizedBox(height: 150),
            ElevatedButton(
              onPressed: _selectedOption != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TreatmentReview()),
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
