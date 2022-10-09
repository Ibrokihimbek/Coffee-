import 'package:cofee/screens/sign_in.dart';
import 'package:cofee/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImages.image_background),
                fit: BoxFit.cover),
          ),
          width: double.infinity.w,
          height: double.infinity.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(MyImages.image_top_background),
              SizedBox(
                height: 67.h,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 37).r,
                    child: Text(
                      'Coffee\nMade\nEasy',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 66,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.brown,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 37).r,
                    child: Text(
                      'Coffee\nMade\nEasy',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 66,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37).r,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => SignIn_Page()),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42),
                        border: Border.all(color: Colors.brown, width: 1.w),
                        color: Colors.white),
                    width: 322.w,
                    height: 53.h,
                    child: Center(
                      child: Text(
                        'Start here',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.brown),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
