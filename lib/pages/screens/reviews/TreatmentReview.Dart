import 'package:flutter/material.dart';
import 'package:balance_app/pages/screens/reviews/CurrentTreatment.Dart';
import 'package:balance_app/pages/screens/reviews/SymptomTreatment.Dart';

class TreatmentReview extends StatefulWidget {
  const TreatmentReview({Key? key}) : super(key: key);

  @override
  _TreatmentReviewFormState createState() => _TreatmentReviewFormState();
}

class _TreatmentReviewFormState extends State<TreatmentReview> {
  Map<String, bool> dropdownStates = {};
  Map<String, List<String>> selectedValues = {};
  bool isNextEnabled = false;

  @override
  void initState() {
    super.initState();
    dropdownStates = {
      'Bioidentical/compounded HRT': false,
      'Combination patches': false,
      'Combination tablets': false,
      'Estrogen gel': false,
      'Estrogen patches': false,
      'Estrogen spray': false,
      'Estrogen tablets': false,
      'Intrauterine System (IUS)': false,
      'Local (vaginal) estrogen': false,
      'Progesterone tablets': false,
      'Testosterone': false
    };

    // Initialize selection tracking
    dropdownStates.keys.forEach((key) {
      selectedValues[key] = [];
    });
  }

  void toggleDropdown(String title) {
    setState(() {
      dropdownStates[title] = !(dropdownStates[title] ?? false);
    });
  }

  void selectValue(String category, String value) {
    setState(() {
      if (selectedValues[category]!.contains(value)) {
        selectedValues[category]!.remove(value);
      } else {
        selectedValues[category]!.add(value);
      }
      isNextEnabled = selectedValues.values.any((list) => list.isNotEmpty);
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
              MaterialPageRoute(builder: (context) => CurrentTreatment()),
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
              'Which treatment would you like to review?',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0b5369),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(35),
             alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFE6E6FF),
                borderRadius: BorderRadius.circular(15),
              ),
          
              child: Text(
                selectedValues.values.expand((list) => list).isEmpty
                    ? 'Nothing selected'
                    : selectedValues.values.expand((list) => list).join(', '),
                style: TextStyle(fontSize: 20, color: Color(0xFFB793E6)),
              ),
            ),
            SizedBox(height: 30),
            buildDropdownSection(
              'Bioidentical/compounded HRT',
              ['DHEA tablet', 'Estrogen cream', 'Estrogen lozenge', 'Estrogen patch', 'Prenenolone tablet', 'progesterone cream', 'Progesterone lozenge', 'Progestrone patch', 'Testosterone cream', 'Utrogestan'],
            ),

            SizedBox(height: 20),

            buildDropdownSection(
              'Combination patches',
              ['Combination patches - others', 'Evorel Conti', 'Evorel Sequi', 'FemSeven Conti', 'FemSeven Sequi'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Combination tablets',
              ['Bijuve', 'Combination tablets - others', 'Elleste Duet Conti', 'Femoston', 'Femoston Conti', 'Indivina', 'Kliofem', 'Kliovance', 'Novofem', 'Premique'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Estrogen gel',
              ['Estrogen gel -other', 'Oestrogel', 'Sandrena'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Estrogen patches',
              ['Elleste Solo MX', 'Estraderm', 'Estradot', 'Estrogen patches - others', 'Evorel', 'FemSevan Mono'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Estrogen spray',
              ['Estrogen spray - other', 'Lenzetto'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Estrogen tablets',
              ['Elleste Solo', 'Estrogen tablets - other', 'Premarin', 'Zumenon'],
            ),
             SizedBox(height: 20),

            buildDropdownSection(
              'Intrauterine System (IUS)',
              ['IUS - other', 'Mirena'],
            ),
            SizedBox(height: 20),

            buildDropdownSection(
              'Local (vaginal) estrogen',
              ['Blissel (pessary)', 'Estring (vaginalring)', 'Imvaggis (pessary)', 'Intraosa (pessary)', 'Local estrogen - other', 'Ovestin (cream)', 'Vagifem (pessary)'],
            ),
            SizedBox(height: 20),

            buildDropdownSection(
              'Progesterone tablets',
              ['Progesterone', 'Utrogestan'],
            ),
            SizedBox(height: 20),

            buildDropdownSection(
              'Testosteroce',
              ['Androfeme cream', 'Testogel gel', 'Meditation', 'Testosterone tablets - other', 'Tostran gel',],
            ),

       
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: isNextEnabled
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SymptomTreatment()),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isNextEnabled ? Color(0xFF4C48B7) : Colors.grey,
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
            spacing: 10,
            runSpacing: 10,
            children: buttonLabels.map((label) {
              bool isSelected = selectedValues[title]!.contains(label);
              return SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => selectValue(title, label),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isSelected ? Color(0xFF4C48B7) : Color(0xFFE6E6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    label,
                    style: TextStyle(
                        fontSize: 18,
                        color: isSelected ? Colors.white : Color(0xFF0b5369)),
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
