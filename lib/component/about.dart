import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final String name;
  final String position;

  CustomContainer({required this.width, required this.height, required this.name, required this.position});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Color(0xFF0C0C0C),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF333333)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              
            ),
          ),
          const SizedBox(height: 15),
          Text(
            position,
            style: TextStyle(
              color: Color(0xFFCCCCCC),
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
