import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/BalanceAppScreen.Dart';
import 'package:balance_app/pages/screens/OnboardingPage.Dart';
import 'package:balance_app/pages/forms/PostCreateForm.Dart';



class AddTags extends StatefulWidget {
  const AddTags({Key? key}) : super(key: key);

  @override
  _AddTagsFormState createState() => _AddTagsFormState();
}

class _AddTagsFormState extends State<AddTags> {
  Map<String, bool> dropdownStates = {
    'Healthcare professional visits': false,
    'Physical symptoms': false,
    'Mental health symptoms': false,
    'Treatment': false,
    'Food & drink': false,
    'Menopause phase': false,
    'Health': false,
    'Lifestyle': false
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
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Add Tags',
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
              'In my story I spoke about',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            Text(
              'Adding tags makes it easier for others to find your story',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 20),

            // Reusable dropdown section
            buildDropdownSection(
              'Healthcare professional visits',
              ['Blood tests', 'Checkups', 'Vaccinations', 'Emergency care'],
            ),

            SizedBox(height: 20),

            buildDropdownSection(
              'Physical symptoms',
              ['Abdominal pain', 'Acne', 'Headache', 'Fever', 'Cough'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Mental health symptoms',
              ['Anxiety', 'Brain fog', 'Crying spells', 'Excitable', 'Feeling nervous', 'Irritability', 'Low mood or depression', 'Low motivation', 'Mood swings', 'Panic attacks'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Treatment',
              ['Acupuncture', 'Alternative treatment', 'Antidepressants', 'Aromatherapy', 'CBT', 'Combination HRT'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Food & drink',
              ['Alcohol', 'Anti-inflammatory', 'Blood glucose balance', 'Breakfast', 'Dairy', 'Dinner'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Menopause phase',
              ['Perimenopause', 'Post-menopause', 'Pre-menopause', 'Teenage menopause',],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Health',
              ['ADHD', 'Asthma', 'Blood presure', 'Bone health', 'Brain health', 'Breast health', 'Cancer', 'Clots'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Lifestyle',
              ['App Support', 'Exercise', 'Meditation', 'News', 'Open water swimming', 'Pilates', 'Pleasure', 'Poems'],
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PostCreateForm()),
            );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4C48B7),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Done',
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
                    style: TextStyle(fontSize: 18, color: Color(0xFFB793E6)),
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
