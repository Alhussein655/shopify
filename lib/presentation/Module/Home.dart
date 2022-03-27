import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10.h,
          width: 80.w,
          color: Colors.grey[250],
        ),
      ],      
    );
  }
}