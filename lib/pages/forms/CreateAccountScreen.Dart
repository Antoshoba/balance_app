import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  final TabController tabController;

  CreateAccountScreen({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: 'Step 1'),
            Tab(text: 'Step 2'),
            Tab(text: 'Step 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(child: Text('Step 1 Content')),
          Center(child: Text('Step 2 Content')),
          Center(child: Text('Step 3 Content')),
        ],
      ),
    );
  }
}

class CreateAccountScreenWrapper extends StatefulWidget {
  @override
  _CreateAccountScreenWrapperState createState() =>
      _CreateAccountScreenWrapperState();
}

class _CreateAccountScreenWrapperState extends State<CreateAccountScreenWrapper>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CreateAccountScreen(tabController: _tabController);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Your Account'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Tab 1"),
            Tab(text: "Tab 2"),
            Tab(text: "Tab 3"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Tab1Screen(),
          Tab2Screen(),
          Tab3Screen(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: goToNextTab,
          child: const Text('Next'),
        ),
      ),
    );
  }
}

class Tab1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 1 Content'),
    );
  }
}

class Tab2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 2 Content'),
    );
  }
}

class Tab3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 3 Content'),
    );
  }
}
