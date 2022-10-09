import 'package:cofee/screens/screen.dart';
import 'package:cofee/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp_Page extends StatefulWidget {
  const SignUp_Page({super.key});

  @override
  State<SignUp_Page> createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(MyImages.image_background),
                  fit: BoxFit.cover),
            ),
            height: 820.h,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(MyImages.image_top_background),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: 390.w,
                      height: 150.h,
                    ),
                    Positioned(
                      left: 47,
                      top: 55,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(MyImages.image_back),
                      ),
                      width: 60.w,
                    ),
                  ],
                ),
                Text(
                  'Sign-Up',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                SignUpMethod(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget SignUpMethod() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(42),
        color: const Color(0xFF6D4831),
      ),
      width: 353.w,
      height: 560.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 48.h,
          ),
          Method('Full Name'),
          SizedBox(
            height: 4.h,
          ),
          Method('Email Address'),
          SizedBox(
            height: 4.h,
          ),
          Method('Phone Number'),
          SizedBox(
            height: 4.h,
          ),
          Method('Create Password'),
          SizedBox(
            height: 4.h,
          ),
          Method('Comfirm Password'),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
            child: InkWell(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Screen_Page()),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white),
                width: 322.w,
                height: 53.h,
                child: Center(
                  child: Text(
                    'Submit',
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
    );
  }

  Widget Method(String word) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17).r,
          child: Text(
            word,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).r,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color(0xFFC59C7F),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4).r,
              child: TextField(
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
