import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class TextFiled extends StatelessWidget {

  String? name,hint;
  bool? secure;
  TextInputType? type;
  TextEditingController? controller;

   TextFiled({Key? key,this.name,this.secure,this.hint,this.controller,this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Align(
                alignment: Alignment.topLeft,
                child: Text(name!,  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 5.h,
                width: 85.w,
decoration: BoxDecoration(
border: Border.all(color: Colors.white)
),
              child: TextFormField(
                controller: controller,
                keyboardType: type,
                obscureText: secure!,
                decoration: InputDecoration(
                  hintText: hint,

                ),
              ),
          ),
            ),
   ] ),
      ),
    );
  }
}
