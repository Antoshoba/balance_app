import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/OnboardingPage.Dart';
import 'package:balance_app/pages/screens/reviews/ExperienceTreatment.Dart';

class RateTreatment extends StatefulWidget {
  @override
  _RateTreatmentState createState() => _RateTreatmentState();
}

class _RateTreatmentState extends State<RateTreatment> {
  int _selectedStars = 0; // Variable to track the selected star rating

  void _onStarSelected(int rating) {
    setState(() {
      _selectedStars = rating;
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
              MaterialPageRoute(builder: (context) => ExperienceTreatment()),
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
              'Overall, how would you rate your treatment?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 20),
            _buildStarRating(), // Function to build the star rating
            SizedBox(height: 350),
            ElevatedButton(
              onPressed: _selectedStars >= 1
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnboardingPage()),
                      );
                    }
                  : null, // Disable button if rating is less than 3 stars
              style: ElevatedButton.styleFrom(
                backgroundColor: _selectedStars >= 1 ? Color(0xFF4C48B7) : Colors.grey,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Publish Review',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build star rating
  Widget _buildStarRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return IconButton(
          icon: Icon(
            index < _selectedStars ? Icons.star : Icons.star_border,
            color: Color(0xFF4C48B7),
            size: 40,
          ),
          onPressed: () {
            _onStarSelected(index + 1);
          },
        );
      }),
    );
  }
}
