import 'package:flutter/material.dart';

import 'package:balance_app/pages/screens/hrt_steps/HRTMedicationScreen.Dart';

class PeriodScreen extends StatefulWidget {
  @override
  _PeriodScreenState createState() => _PeriodScreenState();
}

class _PeriodScreenState extends State<PeriodScreen> {
  String? selectedOption;
  String warningMessage =
      "Your currently selected answer will disable the Period Journal feature.";
  int selectedIndex = 0; // To keep track of the selected tab index

  // List of tab titles
  List<String> tabTitles = [
    'Periods', // Title for Periods tab
    'HRT Medication', // Title for HRT tab
    'Tab3',
    'Tab4',
    'Tab5',
    'Tab6',
    'Tab7',
    'Tab8',
    'Tab9',
    // Add more titles here for additional tabs if necessary
  ];

  // Handler for tab press
  void handleButtonPress(int index) {
    setState(() {
      selectedIndex = index;
    });
    print("Selected tab: $selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            // onPressed: () {
            onPressed: () => Navigator.pop(context),
            // },
          ),
          title: Text(
            tabTitles[selectedIndex], // Set title based on selected index
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF0b5369),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: [
          // Custom Row for Tabs with dashed lines and color change on tap
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Align to start for minimal space
              children: List.generate(9, (index) {
                return GestureDetector(
                  onTap: () {
                    handleButtonPress(index);
                  },
                  child: Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width *
                        0.09, // Reduced width to make tabs narrower
                    color: selectedIndex == index
                        ? Colors.teal
                        : Colors.grey, // Selected color
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    // No margin here to minimize space between tabs
                  ),
                );
              }),
            ),
          ),
          // TabBarView Content
          Expanded(
            child: IndexedStack(
              index: selectedIndex, // Show the content of the selected tab
              children: [
                // Periods Tab Content
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How would you\ndescribe your periods?",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0b5369),
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          // Option 1
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            decoration: BoxDecoration(
                              color: Color(0xFFDCDCF6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: RadioListTile<String>(
                              value: "They're regular",
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                              title: Text(
                                "They're regular",
                                style: TextStyle(
                                  color: Color(0xFF054D63),
                                ),
                              ),
                              tileColor: Colors.transparent,
                            ),
                          ),
                          // Option 2
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            decoration: BoxDecoration(
                              color: Color(0xFFDCDCF6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: RadioListTile<String>(
                              value: "They're erratic or irregular",
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                              title: Text(
                                "They're erratic or irregular",
                                style: TextStyle(
                                  color: Color(0xFF054D63),
                                ),
                              ),
                              tileColor: Colors.transparent,
                            ),
                          ),
                          // Option 3
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            decoration: BoxDecoration(
                              color: Color(0xFFDCDCF6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: RadioListTile<String>(
                              value: "I don't have periods",
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                              title: Text(
                                "I don't have periods",
                                style: TextStyle(
                                  color: Color(0xFF054D63),
                                ),
                              ),
                              tileColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                      if (selectedOption == "I don't have periods")
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Icon(Icons.warning_amber_rounded,
                                  color: Colors.purple),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  warningMessage,
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Spacer(),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Check if any option is selected
                            if (selectedOption == null) {
                              // Show a validation message or alert dialog if no option is selected
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      'Please select an option before proceeding.'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else {
                              // Proceed to the HRT tab if an option is selected
                              handleButtonPress(1); // Switch to HRT tab
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xFF4C48B7), // Purple color
                            padding: const EdgeInsets.symmetric(
                                horizontal: 180, vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            "Next: HRT",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            // Add "Save and continue later" functionality
                          },
                          child: Text(
                            "Save and continue later",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                // HRT Tab Content
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: HRTMedicationScreen(),
                  ),
                ),
                // Additional Tabs can be added here
                ...List.generate(9, (index) {
                  return Center(
                    child: Text("Content for tab ${index + 3}"),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
