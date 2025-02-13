import 'package:flutter/material.dart';

class TabExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10, // 10 tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text("10 Tabs UI"),
          bottom: TabBar(
            isScrollable: true,
            tabs: List.generate(
              10,
              (index) => Tab(text: "Tab ${index + 1}"),
            ),
          ),
        ),
        body: TabBarView(
          children: List.generate(
            10,
            (index) => TabContent(tabIndex: index),
          ),
        ),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final int tabIndex;

  TabContent({required this.tabIndex});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: List.generate(
        4,
        (buttonIndex) => Card(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            title: Text("Button ${buttonIndex + 1}"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              final tabController = DefaultTabController.of(context);
              if (tabController != null) {
                int nextTab = (tabIndex + 1) % 10; // Move to next tab
                tabController.animateTo(nextTab);
              }
            },
          ),
        ),
      ),
    );
  }
}
