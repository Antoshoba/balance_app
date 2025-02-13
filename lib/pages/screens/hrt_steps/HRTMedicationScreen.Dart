import 'package:flutter/material.dart';


class HRTMedicationScreen extends StatefulWidget {
  @override
  _HRTMedicationScreenState createState() => _HRTMedicationScreenState();
}

class _HRTMedicationScreenState extends State<HRTMedicationScreen> {
  final Map<String, bool> _expandedSections = {
    'Bioidentical/compounded HRT': false,
    'Combination patches': false,
    'Combination tablets': false,
    'Estrogen gel': false,
    'Estrogen patches': false,
  };

  final Map<String, List<String>> _sectionContent = {
    'Bioidentical/compounded HRT': [
      'DHEA tablet',
      'Estrogen cream',
      'Estrogen lozenge',
      'Estrogen patch',
    ],
    'Combination patches': [
      'Patch A',
      'Patch B',
      'Patch C',
      'Patch D',
    ],
    'Combination tablets': [
      'Tablet A',
      'Tablet B',
      'Tablet C',
      'Tablet D',
    ],
    'Estrogen gel': [
      'Gel A',
      'Gel B',
      'Gel C',
      'Gel D',
    ],
    'Estrogen patches': [
      'Patch X',
      'Patch Y',
      'Patch Z',
      'Patch W',
    ],
  };

  final List<String> _selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Please select any HRT\n(if any) that you're\ncurrently on",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF0b5369),
              ),
            ),
            const SizedBox(height: 16),

Center(
  child: Container(
    height: 150,
    //  padding: const EdgeInsets.all(8),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.grey[200], // Light gray background
      borderRadius: BorderRadius.circular(8),
    ),
    child: _selectedItems.isEmpty
        ? const Text('Nothing selected')
        : SingleChildScrollView(
            child: Wrap(
              spacing: 18, // Horizontal spacing between chips
              runSpacing: 8, // Vertical spacing between chips
              children: _selectedItems
                  .map(
                    (item) => Chip(
  label: Text(item,  style: TextStyle(
                color: const Color(0xFF0b5369),
              ),),
  deleteIcon: const Icon(Icons.close),
  onDeleted: () {
    setState(() {
      _selectedItems.remove(item);
    });
  },
  backgroundColor: Colors.grey[100], // Background color of the chip
  shape: RoundedRectangleBorder(
    side: BorderSide(
      color: const Color(0xFF0b5369), // Border color
      width: 1.5,        // Border width
    ),
    borderRadius: BorderRadius.circular(30), // Rounded corners
  ),
),

                  )
                  .toList(),
            ),
          ),
  ),
),

            const SizedBox(height: 24),
            Expanded(
              child: ListView(
                children: _expandedSections.keys.map((section) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
  color: const Color(0xFFF8E7F0), // Light pink background color
                     child: ListTile(
                        title: Text(
                          section,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF0b5369),
                            backgroundColor: Color(0xFFF8E7F0),
                          ),
                        ),
                        trailing: Icon(
                          _expandedSections[section]!
                              ? Icons.expand_less
                              : Icons.expand_more,
                        ),
                        onTap: () {
                          setState(() {
                            _expandedSections[section] =
                                !_expandedSections[section]!;
                          });
                        },
                      ),
                  ),
                  const SizedBox(height: 10),
                      if (_expandedSections[section]!)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Wrap(
                            spacing: 12,
                            runSpacing: 12,
                            children: _sectionContent[section]!
                                .map(
                                  (item) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (_selectedItems.contains(item)) {
                                          _selectedItems.remove(item);
                                        } else {
                                          _selectedItems.add(item);
                                        }
                                      });
                                    },
                                    child: Container(
                                      width: 160,
                                      // (MediaQuery.of(context).size.width /
                                      //         2) -
                                      //     32,
                                      padding: const EdgeInsets.all(8),
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: _selectedItems.contains(item)
                                            ? Color(0xFF3739C0)
                                            : Color(0xFFDCDCF6),
                                        borderRadius: BorderRadius.circular(8),
                                      ), 
                                      child: Text(
                                          item,
                                        style: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: _selectedItems.contains(item)
      ? Colors.white // If the item is selected, set the color to white
      : const Color(0xFF0b5369), // If not selected, set the color to #0b5369
),

                                        ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
