import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/reviews/SummariseTreatment.Dart';
import 'TreatmentReview.Dart';



class SymptomTreatment extends StatefulWidget {
  const SymptomTreatment({Key? key}) : super(key: key);

  @override
  _SymptomTreatmentFormState createState() => _SymptomTreatmentFormState();
}

class _SymptomTreatmentFormState extends State<SymptomTreatment> {
  Map<String, bool> dropdownStates = {
    'Most commom symptoms': true,
          };

  void toggleDropdown(String title) {
    setState(() {
      dropdownStates[title] = !(dropdownStates[title] ?? false);
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
              MaterialPageRoute(builder: (context) => TreatmentReview()),
            );
          },
        ),
        title: Text(
          'Review a Treatment',
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
            SizedBox(height: 3),
            Text(
              'Which treatment symptoms do you take treatment for?',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE6E6FF),
                minimumSize: Size(double.infinity, 50),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Nothing selected',
                style: TextStyle(fontSize: 20, color: Color(0xFFB793E6)),
              ),
            ),
            SizedBox(height: 30),
            // Reusable dropdown section
            buildDropdownSection(
              'Most commom symptoms',
              ['Anxiety', 'Brain fog', 'Headaches', 'Hot flushes', 'Joint pain', 'Low libido', 'Low mood or depression', 'Memory problems'],
            ),

            SizedBox(height: 30),

             Text(
              'All symptoms',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 30),
            buildDropdownSection(
              '',
              ['Abdominal pain', 'Acne', 'Allergies', 'Altered sense of smell', 'Anxiety', 'Bloating', 'Brain fog', 'breast pain or tenderness', 'Brittle nails', ' Burning mouth', 'Cold sweats', 'Constipation', 'Cramps', 'Crying spells', 'Diarrhoea', 'Difficulty breathing', 'Difficulty concentrating', 'Difficulty sleeping', 'Dry eyes', 'Dry hair', 'Dry skin', 'Excitable', 'Facial hair', 'Feeling nervous', 'Feeling tense', 'Frequent urination', 'Hair loss or thinning',  'Heartbutn', 'Itching', 'Joint pain', 'Low libido', 'Memory problems', 'Muscle pain', 'Panic attacks', 'weight gain', 'wind', 'wrinkles'],
            ),
            

            SizedBox(height: 30),

    
            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SummariseTreatment()),
            );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4C48B7),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Next',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropdownSection(String title, List<String> buttonLabels) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 22, color: Color(0xFF0b5369)),
            ),
            IconButton(
              icon: Icon(
                dropdownStates[title] ?? false
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: Color(0xFF0b5369),
              ),
              onPressed: () => toggleDropdown(title),
            ),
          ],
        ),
        if (dropdownStates[title] ?? false)
          Wrap(
            spacing: 10, // Space between buttons
            runSpacing: 10, // Space between rows
            children: buttonLabels.map((label) {
              return SizedBox(
                width: 150,  // Fixed width for equal-sized buttons
                height: 50,  // Fixed height for equal-sized buttons
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE6E6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    label,
                    style: TextStyle(fontSize: 18, color: Color(0xFF0b5369)),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }).toList(),
          ),
      ],
    );
  }
}
