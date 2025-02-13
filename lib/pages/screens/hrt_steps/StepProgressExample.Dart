import 'package:flutter/material.dart';


class StepProgressExample extends StatefulWidget {
  @override
  _StepProgressExampleState createState() => _StepProgressExampleState();
}

class _StepProgressExampleState extends State<StepProgressExample> {
  int currentStep = 0; // Tracks the current step

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step Progress Example"),
      ),
      body: Column(
        children: [
          // Progress bar
          Container(
            margin: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(10, (index) {
                return Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 4.0,
                          color: index <= currentStep
                              ? Colors.blue
                              : Colors.grey.shade300,
                        ),
                      ),
                      if (index < 9) // Add spacing between steps
                        SizedBox(width: 8),
                    ],
                  ),
                );
              }),
            ),
          ),

          // Button Cards
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Text("Button ${index + 1}"),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      setState(() {
                        if (currentStep < 9) {
                          currentStep++; // Move to the next step
                        }
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

