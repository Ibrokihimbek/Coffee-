import 'package:cofee/screens/sign_in.dart';
import 'package:cofee/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Complete_Four_Page extends StatefulWidget {
  const Complete_Four_Page({super.key});

  @override
  State<Complete_Four_Page> createState() => _Complete_Four_PageState();
}

class _Complete_Four_PageState extends State<Complete_Four_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImages.image_background_four),
                fit: BoxFit.cover),
          ),
          width: double.infinity.w,
          height: double.infinity.h,
          child: Column(
            children: [
              Image.asset(MyImages.image_top_background),
              SizedBox(height: 140.h),
              Stack(
                children: [
                  Center(
                    child: Positioned(
                      child: Image.asset(
                        MyImages.image_circle,
                        width: 160,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: 166,
                      child: Image.asset(
                        MyImages.image_tick,
                        width: 77,
                      )),
                ],
              ),
              SizedBox(height: 22.h),
              Text(
                'Order Completed!',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.white),
              ),
              Text(
                'Order number #347664784',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.7),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
