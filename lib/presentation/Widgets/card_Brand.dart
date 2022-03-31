import 'package:flutter/material.dart';
import 'package:shopify/const.dart';
import 'package:sizer/sizer.dart';

class Card_Brand extends StatelessWidget {
   Card_Brand({ Key? key ,this.ph}) : super(key: key);
var ph;
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 14.h,
       width: 50.w,
       color: Colors.white,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           CircleAvatar(
             radius: 24.sp,
            backgroundImage: AssetImage(ph),
            backgroundColor: Colors.white,
           ),
           Container(
             height: 14.h,
             width:32.w,
             color: Colors.white,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
              Text('B&o',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold
            ),
            ),
            Text('5693 Products',
          style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              color: Colors.grey[400]
          ),
          ),

               ],
             ),
           ),
         ],
       ),
    );
  }
}