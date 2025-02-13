
   import 'package:flutter/material.dart';



class QuestionnaireScreen extends StatefulWidget {
  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
  }

  void _onOptionSelected(int index) {
    if (_currentTabIndex < 9) {
      setState(() {
        _currentTabIndex++;
        _tabController.animateTo(_currentTabIndex);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaire'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20), // Minimized height for tabs
          child: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicator: BoxDecoration(), // Remove default TabBar indicator
            tabs: List.generate(
              10,
              (index) => CustomTab(
                isSelected: index <= _currentTabIndex,
              ),
            ),
            labelPadding: EdgeInsets.symmetric(horizontal: 2), // Small horizontal padding // Minimize padding between tabs
  indicatorPadding: EdgeInsets.zero, // Remove padding for the indicator
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(
          10,
          (index) => QuestionTab(
            onOptionSelected: _onOptionSelected,
          ),
        ),
      ),
    );
  }
}
class CustomTab extends StatelessWidget {
  final bool isSelected;

  const CustomTab({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.symmetric(vertical: 1),
      // padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 2,
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          // SizedBox(width: 5),
          // Container(
          //   width: 10,
          //   height: 2,
          //   color: isSelected ? Colors.blue : Colors.grey,
          // ),
          // SizedBox(width: 5),
          // Container(
          //   width: 10,
          //   height: 2,
          //   color: isSelected ? Colors.blue : Colors.grey,
          // ),
        ],
      ),
    );
  }
}
class QuestionTab extends StatelessWidget {
  final void Function(int) onOptionSelected;

  const QuestionTab({required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Recently, how much have you been affected by:",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          "Heart beating quickly or strongly",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        ...[
          {"label": "Not at all", "color": Colors.yellow},
          {"label": "A little", "color": Colors.orange},
          {"label": "Quite a bit", "color": Colors.deepOrange},
          {"label": "Extremely", "color": Colors.red},
        ].asMap().entries.map(
          (entry) {
            final index = entry.key;
            final option = entry.value;

            return GestureDetector(
              onTap: () => onOptionSelected(index),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    // Small circle with the respective color
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        color: option["color"] as Color,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        option["label"] as String,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
