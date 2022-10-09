import 'package:cofee/screens/sign_up.dart';
import 'package:cofee/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn_Page extends StatefulWidget {
  const SignIn_Page({super.key});

  @override
  State<SignIn_Page> createState() => _SignIn_PageState();
}

class _SignIn_PageState extends State<SignIn_Page> {
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
                      height: 183.h,
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
                SizedBox(
                  height: 41.h,
                ),
                SignInMethod(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget SignInMethod() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(42),
        color: const Color(0xFF6D4831),
      ),
      width: 353.w,
      height: 469.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 17).r,
            child: Text(
              'Hello!',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
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
              decoration: InputDecoration(
                  hintText: 'Phone Number or Email',
                  hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  border: InputBorder.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
            child: const Divider(
              thickness: 1,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
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
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  border: InputBorder.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
            child: const Divider(
              thickness: 1,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
            child: InkWell(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SignUp_Page()),
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
                    'Sign in',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.brown),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Center(
            child: Text(
              'or Sign in with',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
          Center(
            child: Image.asset(
              MyImages.image_logo,
              width: 126.w,
            ),
          ),
          Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Dont have an account? ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'Sign-Up',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
