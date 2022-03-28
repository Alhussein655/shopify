import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Btn extends StatelessWidget {
  String? name;
   Btn({Key? key,this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 6.h,
        width: 60.w,
        color: Colors.greenAccent[700],
        child: Center(child: Text(name!,style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w500),)),
      ),
    );
  }
}
