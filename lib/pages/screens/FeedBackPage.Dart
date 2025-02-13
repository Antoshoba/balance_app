import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/OnboardingPage.Dart';

class FeedBackPage extends StatefulWidget {
  @override
  _FeedBackPageState createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
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
              MaterialPageRoute(builder: (context) => OnboardingPage()),
            );
          },
        ),
        title: Text(
          'Feedback',
          style: TextStyle(color: Colors.white),
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
              'Tell us what you think about the app',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _feedbackController,
              decoration: InputDecoration(
                hintText: "e.g. We'd love to know what you think of balance",
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            Text(
              'If you are reporting an issue, please provide the details below to help us solve the issue as quickly as possible.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '1) Your device model (e.g., iPhone 13 Pro, Samsung Galaxy S20)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 5),
            Text(
              '2) OS version (e.g., iOS 13, Android 11)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 5),
            Text(
              '3) Provide as much detail as possible about the steps you took to produce the issue to help our developers recreate it.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _isButtonEnabled
                  ? () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ReviewTreatment()),
                      // );
                    }
                  : null, // Disable the button when no text is entered
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4C48B7),
                minimumSize: Size(double.infinity, 50),
                disabledBackgroundColor: Colors.grey, // Button color when disabled
              ),
              child: Text(
                'Send',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
