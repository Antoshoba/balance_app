import 'package:flutter/material.dart';

class DropdownSection extends StatefulWidget {
  final String title;
  final String content;

  DropdownSection({required this.title, required this.content});

  @override
  _DropdownSectionState createState() => _DropdownSectionState();
}

class _DropdownSectionState extends State<DropdownSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 22, color: Color(0xFF0b5369)),
            ),
            IconButton(
              icon: Icon(
                _isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: Color(0xFF0b5369),
              ),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
          ],
        ),
        if (_isExpanded)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              widget.content,
              style: TextStyle(fontSize: 18, color: Color(0xFF0b5369)),
            ),
          ),
      ],
    );
  }
}
