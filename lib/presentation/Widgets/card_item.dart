import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class Card_item extends StatelessWidget {
   Card_item({ Key? key ,this.Tnx,this.Ttx,this.Tpx,this.Ph}) : super(key: key);
  String ?Tnx;
  String ?Ttx;
  String ?Tpx;
  String ?Ph;

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
            child: Image.asset(Ph!),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Text(Tnx!,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500
            ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(Ttx!,
          style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              color: Colors.grey[400]
          ),
          ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(Tpx!,
          style: TextStyle(
              fontSize: 14.sp,
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