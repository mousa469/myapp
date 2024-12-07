import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({
    super.key,
    this.maxWidth = 270, // Maximum width for the message
    required this.widget,
  });

  final double maxWidth;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left:10, top: 10), 
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth, 
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(0),
              ),
            ),
            padding: const EdgeInsets.all(14), // Add inner padding
            child: widget, // Content of the message
          ),
        ),
      ),
    );
  }
}

