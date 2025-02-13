import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/reviews/RateTreatment.Dart';
import 'package:balance_app/pages/screens/reviews/SideEffectTreatment.Dart';

class ExperienceTreatment extends StatefulWidget {
  @override
  _ExperienceTreatmentState createState() => _ExperienceTreatmentState();
}

class _ExperienceTreatmentState extends State<ExperienceTreatment> {
  final TextEditingController _feedbackController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _feedbackController.addListener(_checkInput);
  }

  void _checkInput() {
    setState(() {
      _isButtonEnabled = _feedbackController.text.trim().isNotEmpty;
    });
  }

  @override
  void dispose() {
    _feedbackController.removeListener(_checkInput);
    _feedbackController.dispose();
    super.dispose();
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
              MaterialPageRoute(builder: (context) => SideEffectTreatment()),
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
              'Summarise your experience with this treatment.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: _feedbackController,
              decoration: InputDecoration(
                hintText: "Tell us about it",
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 5),
            Row(
  mainAxisAlignment: MainAxisAlignment.end, // Align to the right
  children: [
    Text(
      '150 characters left',
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    ),
  ],
),
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: _isButtonEnabled
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RateTreatment()),
                      );
                    }
                  : null, // Disable button if no option is selected
              style: ElevatedButton.styleFrom(
                backgroundColor: _isButtonEnabled ? Color(0xFF4C48B7) : Colors.grey,
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
