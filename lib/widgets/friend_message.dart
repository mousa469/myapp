import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class FriendMessage extends StatelessWidget {
  const FriendMessage({
    super.key,
    this.maxWidth = 270, // Maximum width for the message
    required this.widget,
  });


  final double maxWidth;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right:10, top: 10), 
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth, 
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            padding: const EdgeInsets.all(14), 
            child: widget, 
          ),
        ),
      ),
    );
  }
}