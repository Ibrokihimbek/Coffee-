import 'package:cofee/screens/complete.dart';
import 'package:cofee/screens/home_page.dart';
import 'package:cofee/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

import 'complete_thre.dart';

class Complete_Two_Page extends StatefulWidget {
  const Complete_Two_Page({super.key});

  @override
  State<Complete_Two_Page> createState() => _Complete_Two_PageState();
}

class _Complete_Two_PageState extends State<Complete_Two_Page> {
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
          left: 340,
          top: 55,
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Home_Page()),
                  ),
                );
              },
              child: Image.asset(MyImages.image_vector)),
          width: 28.w,
        ),
      ],
    );
  }

  Widget HelloAhlam() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12).r,
          child: Text(
            'Choose Payment  Method',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(width: 22.w),
            Image.asset(
              MyImages.image_payment,
              width: 30,
            ),
            SizedBox(width: 9.w),
            Text(
              'Total 250 USD',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xFFC4C4C4).withOpacity(0.70),
              ),
              width: 388.w,
              height: 161.h,
              child: Stack(
                children: [
                  const Positioned(
                    left: 75.5,
                    top: 23,
                    child: Icon(
                      Icons.circle_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const Positioned(
                    left: 85,
                    top: 31.8,
                    child: Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.brown,
                    ),
                  ),
                  Positioned(
                    top: 24,
                    left: 110,
                    child: Text(
                      'Card details',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.brown),
                    ),
                  ),
                  Positioned(
                    top: 66,
                    left: 67,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      width: 255.w,
                      height: 82.h,
                    ),
                  ),
                  Positioned(
                    top: 71,
                    left: 105,
                    child: Text(
                      'Ahlam Bush         Edit\nMastercard **** 2678',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.brown),
                    ),
                  ),
                  Positioned(
                    top: 123,
                    left: 75,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.brown, width: 2),
                      ),
                      width: 26.w,
                      height: 18.h,
                    ),
                  ),
                  const Positioned(
                    left: 65,
                    top: 90,
                    child: Icon(
                      Icons.minimize,
                      color: Colors.brown,
                      size: 47,
                    ),
                  ),
                  const Positioned(
                    left: 72,
                    top: 112,
                    child: Icon(
                      Icons.minimize,
                      color: Colors.brown,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 26.h),
        Card('Bank Transfer'),
        SizedBox(height: 30.h),
        Card('Mobile  Money'),
        SizedBox(height: 35.h),
        Card('Paypal'),
        SizedBox(height: 88.h),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => Complete_Three_Page()),
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
                'Confirm Order',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.brown),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget Card(String card) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color(0xFFC4C4C4).withOpacity(0.70),
      ),
      width: 388.w,
      height: 66.h,
      child: Row(
        children: [
          SizedBox(width: 12.w),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.brown),
              color: const Color(0xFFC4C4C4).withOpacity(0.6),
            ),
            width: 28.w,
            height: 28.h,
          ),
          SizedBox(width: 34.w),
          Text(
            card,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 18, color: Colors.brown),
          )
        ],
      ),
    );
  }
}
