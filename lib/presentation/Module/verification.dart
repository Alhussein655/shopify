import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:shopify/presentation/Widgets/button.dart';
import 'package:sizer/sizer.dart';

class VerificationScreen extends StatelessWidget {
  OtpFieldController? controller;
  VerificationScreen({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0,left: 25),
                child: Icon(Icons.arrow_back_ios),
              )),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 41.h,
              width: 92.w,
              color: Colors.grey[100],
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 25),
                    child: Text(
                      'Verification',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 25),
                    child: Text(
                      'A 6 - Digit PIN has been sent to your email \naddress, enter it below to continue',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 10.sp),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Center(
                    child: OTPTextField(
                      style: TextStyle(decoration: TextDecoration.none),
                        controller: controller,
                        width: 80.w,
                        length: 6,
                        fieldWidth: 40,
                        fieldStyle: FieldStyle.box,
                        otpFieldStyle: OtpFieldStyle(

                          backgroundColor: Colors.white
                                                ,borderColor: Colors.grey
                              ,enabledBorderColor: Colors.grey,


                        ),
                      ),

                  ),
                  SizedBox(height: 6.h,)
               ,   Btn(name: 'CONTINUE',)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
