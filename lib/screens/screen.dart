import 'package:cofee/screens/complete.dart';
import 'package:cofee/screens/home_page.dart';
import 'package:cofee/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen_Page extends StatefulWidget {
  const Screen_Page({super.key});

  @override
  State<Screen_Page> createState() => _Screen_PageState();
}

class _Screen_PageState extends State<Screen_Page> {
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
                Favourite(),
                SizedBox(
                  height: 16.h,
                ),
                Product(),
                SizedBox(
                  height: 16.h,
                ),
                Product_one(),
                SizedBox(
                  height: 20.h,
                ),
                BootomMethod(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget BootomMethod() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 34, right: 34).r,
          child: const Divider(
            thickness: 1.5,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 30.w,
            ),
            const Icon(
              Icons.favorite_outline_rounded,
              size: 36,
              color: Colors.white,
            ),
            SizedBox(
              width: 270.w,
            ),
            Image.asset(
              MyImages.image_user,
              width: 30,
            ),
          ],
        ),
      ],
    );
  }

  Widget Product() {
    return Container(
      height: 168,
      child: ListView(
        primary: false,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          ProductMethod('Capachino', MyImages.image_capachino, '\$8'),
          ProductMethod('Beets ', MyImages.image_betts, '\$5'),
          ProductMethod('Capachino', MyImages.image_capachino, '\$8'),
        ],
      ),
    );
  }

  Widget Product_one() {
    return Container(
      height: 168,
      child: ListView(
        primary: false,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          ProductMethod_one('Italia', MyImages.image_italia, '\$4'),
          ProductMethod_one('Donot', MyImages.image_donot, '\$7'),
          ProductMethod_one('Italia', MyImages.image_italia, '\$4'),
        ],
      ),
    );
  }

  Widget ProductMethod(
    String title,
    String imageUrl,
    String price,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 20).r,
      child: Container(
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
        width: 153.w,
        child: Column(
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.brown,
                ),
              ),
            ),
            Image.asset(
              imageUrl,
              height: 100.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 37.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Complete_Page()),
                      ),
                    );
                  },
                  child: Text(
                    'Buy',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget ProductMethod_one(
    String title,
    String imageUrl,
    String price,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 20).r,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFFFFFFFF).withOpacity(0.6),
              const Color(0xFF333333).withOpacity(0.4),
            ],
          ),
        ),
        width: 153.w,
        child: Column(
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.brown,
                ),
              ),
            ),
            Image.asset(
              imageUrl,
              height: 100.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 37.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Complete_Page()),
                      ),
                    );
                  },
                  child: Text(
                    'Buy',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
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
          height: 130.h,
        ),
        Positioned(
          left: 22,
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
          width: 30.w,
        ),
        Positioned(
          top: 40,
          left: 82,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color(0xFF834323).withOpacity(0.5),
            ),
            width: 236.w,
            height: 53.h,
            child: Row(
              children: [
                SizedBox(
                  width: 32.w,
                ),
                Text(
                  'Asokoro, Abuja ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                const Icon(
                  Icons.expand_more,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 356,
          top: 51,
          child: Image.asset(MyImages.image_user),
          width: 28.w,
        ),
      ],
    );
  }

  Widget HelloAhlam() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 181).r,
          child: Text(
            'Hello,  Ahlam',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 68).r,
          child: Text(
            'What are you drinking today?',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 16.w,
            ),
            Image.asset(
              MyImages.image_favourite,
              width: 67.w,
            ),
            SizedBox(
              width: 65.w,
            ),
            Image.asset(
              MyImages.image_component,
              width: 67.w,
            ),
            SizedBox(
              width: 64.w,
            ),
            Image.asset(
              MyImages.image_more,
              width: 67.w,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 52).r,
          child: const Divider(
            thickness: 1.5,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget Favourite() {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 24.w,
            ),
            Text(
              'Favourite',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 22.w,
            ),
            Text(
              'Promotions',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 38.w,
            ),
            Text(
              'More',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 52).r,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Todays Promotion   ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextSpan(
                  text: '  see all',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
