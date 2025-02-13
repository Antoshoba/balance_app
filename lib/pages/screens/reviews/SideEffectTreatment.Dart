import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/reviews/ExperienceTreatment.Dart';
import 'SummariseTreatment.Dart';

class SideEffectTreatment extends StatefulWidget {
  @override
  _SideEffectTreatmentState createState() => _SideEffectTreatmentState();
}

class _SideEffectTreatmentState extends State<SideEffectTreatment> {
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
              MaterialPageRoute(builder: (context) => SummariseTreatment()),
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
              'Have you experienced any side effects?',
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
                  'Yes',
                  style: TextStyle(fontSize: 18, color: Color(0xFF0b5369),),
                ),
                value: 'yes',
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
                  'No',
                  style: TextStyle(fontSize: 18, color: Color(0xFF0b5369),),
                ),
                value: 'no',
                groupValue: _selectedOption,
                onChanged: (value) {
                  _onOptionSelected(value!);
                },
              ),
            ),
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: _selectedOption != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExperienceTreatment()),
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
