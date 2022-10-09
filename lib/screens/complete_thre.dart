import 'package:cofee/screens/complete.dart';
import 'package:cofee/screens/home_page.dart';
import 'package:cofee/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

import 'complete_four.dart';

class Complete_Three_Page extends StatefulWidget {
  const Complete_Three_Page({super.key});

  @override
  State<Complete_Three_Page> createState() => _Complete_Three_PageState();
}

class _Complete_Three_PageState extends State<Complete_Three_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(MyImages.image_background_two),
                  fit: BoxFit.cover),
            ),
            height: 820.h,
            child: Column(
              children: [
                ApBar(),
                HelloAhlam(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ApBar() {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.image_top_background),
              fit: BoxFit.cover,
            ),
          ),
          width: 390.w,
          height: 120.h,
        ),
        Positioned(
          left: 22,
          top: 40,
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(MyImages.image_back)),
          width: 55.w,
        ),
        Positioned(
            left: 180,
            top: 46,
            child: Text(
              'Cart',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            )),
      ],
    );
  }

  Widget HelloAhlam() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyImages.image_background_three),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity.w,
      height: 700.h,
      child: Column(
        children: [
          Product(MyImages.image_betts, 'Peet Coffee braw',
              "Since 1966, Peet's Coffee", 25, 2),
          SizedBox(height: 26.h),
          Product(MyImages.image_italia, 'Italia coffee', "Since 1966, Coffee ",
              20, 1),
          SizedBox(height: 38.h),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            width: 313.w,
            height: 59.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 1.w),
                Text(
                  'Promo Code',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.brown.withOpacity(0.5)),
                ),
                // SizedBox(width: 26.w),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF6A432D)),
                  width: 122.w,
                  height: 59.h,
                  child: Center(
                    child: Text(
                      'Apply ',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 67.h),
          Row(
            children: [
              SizedBox(width: 36.w),
              Text(
                'Subtotal',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(width: 160.w),
              Text(
                '40',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(width: 4.w),
              Text(
                'USD',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.5)),
              )
            ],
          ),
          SizedBox(height: 24.h),
          Row(
            children: [
              SizedBox(width: 36.w),
              Text(
                'Tax and Fees',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(width: 112.w),
              Text(
                '6.2',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(width: 4.w),
              Text(
                'USD',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.5)),
              )
            ],
          ),
          SizedBox(height: 24.h),
          Row(
            children: [
              SizedBox(width: 36.w),
              Text(
                'Delivery',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(width: 160.w),
              Text(
                '8.2',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(width: 4.w),
              Text(
                'USD',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.5)),
              )
            ],
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              SizedBox(width: 36.w),
              Text(
                'Total',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(width: 190.w),
              Text(
                '72',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(width: 4.w),
              Text(
                'USD',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.8)),
              )
            ],
          ),
          SizedBox(height: 30.h),
          InkWell(
            onTap: () {
              Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => Complete_Four_Page()),
          ),
        );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22), color: Colors.white),
              width: 296.w,
              height: 53.h,
              child: Center(
                child: Text(
                  'CHECKOUT',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.brown),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Product(
      String imgUrl, String title, String subtitle, int prise, int add) {
    return Container(
      width: 320.w,
      height: 88.h,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFFFFFFF).withOpacity(1),
                  const Color(0xFF333333).withOpacity(0),
                ],
              ),
            ),
            width: 88.w,
            height: 88.h,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10).r,
                  child: Image.asset(imgUrl, width: 60.w),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 5.w),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  title == 'Italia coffee'
                      ? SizedBox(
                          width: 68.w,
                        )
                      : SizedBox(width: 20.w),
                  const Icon(
                    Icons.highlight_remove,
                    color: Colors.white,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 5.w),
                  Text(
                    '$prise\$',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 112.w),
                  const Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    '$add',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  const Icon(
                    Icons.remove_circle_outline,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
