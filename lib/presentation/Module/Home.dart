import 'package:flutter/material.dart';
import 'package:shopify/const.dart';
import 'package:shopify/presentation/Widgets/card_Brand.dart';
import 'package:shopify/presentation/Widgets/card_item.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({ Key? key }) : super(key: key);
List list_icon=[icon_men_shose,icon_women,icon_Devices,icon_Gadgets,icon_gaming];
List list_name=['Men','Women','Devices','Gadgets','Gaming'];
List list_Brand=[icon_BO,icon_Beats];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Search=======================
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 6.5.h,
              width: 70.w,
              decoration: BoxDecoration(
               color: Colors.grey[300], 
               borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search,size: 25.sp,),
                ],
              ),
            ),
          ),
          //=======================================//
          //Text Categories=====================
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 28),
            child: Text('Categories',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          //===================================//
          //ICons========================
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 19),
            child: Container(
              height: 18.h,
              width: 30.w,
              color: Colors.white,
              child: ListView.builder(
                itemCount: list_icon.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 16.h,
                    width: 23.w,
                    color: Colors.white,
                    child: Column(
                      children: [
                        CircleAvatar(
                        backgroundColor: Colors.white,
                          radius: 32.sp,
                          child:SvgPicture.asset(list_icon[index]) ,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(list_name[index],
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },),
            ),
          ),
          //========================================//
          //Text see all==========================
          Padding(
            padding: const EdgeInsets.only(top: 12,left: 8,right: 8),
            child: Container(
              height: 6.h,
              width: 92.w,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Selling',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  ),

                    Text('See all',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                ],
              ),
            ),
          ),
          //Product Best selling====================
          Container(
            height: 43.h,
            width: 100.w,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card_item( Tnx:'BeoPlay Speaker',
                Ttx: 'Bang and Olufsen',
                Tpx: '\$755',
                Ph: image1,
                ),
                Card_item(
                Tnx:'Leather Wristwatch',
                Ttx: 'Tag Heuer',
                Tpx: '\$755',
                Ph: image2,
                )
              ],
            ),
          ),
          //=====================================//
          //Text Brands===========================
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Featured Brands',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
             ),
             //====================================//
              // Item Brand==================
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 15.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: list_Brand.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card_Brand(ph: list_Brand[index]),
                  ),)
                  ),
                
              ),
              //==========================================//
              // Text  Recommended======
                       Padding(
            padding: const EdgeInsets.only(top: 12,left: 8,right: 8),
            child: Container(
              height: 6.h,
              width: 92.w,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  ),

                    Text('See all',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                ],
              ),
            ),
          ),
          //============================================//
          //Product Recommended====================
            Container(
            height: 43.h,
            width: 100.w,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card_item(
                   Tnx:'Wireless Remote',
                Ttx: 'Tesla Inc',
                Tpx: '\$755',
                Ph: image3,
                ),
                Card_item(
                   Tnx:'Airpods',
                Ttx: 'Tag Heuer',
                Tpx: '\$755',
                Ph: image4,
                )
              ],
            ),
          ),
        ],      
      ),
    );
  }
}