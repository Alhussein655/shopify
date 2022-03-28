import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Card_item extends StatelessWidget {
  const Card_item({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.h,
      width: 47.w,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 28.h,
            width: 47.w,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Text('BeoPlay Speaker',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500
            ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text('Bang and Olufsen',
          style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Colors.grey[400]
          ),
          ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text('\$755',
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.green[400]
          ),
          ),
            ),
        ],

      ),
    );
  }
}