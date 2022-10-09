import 'package:cofee/screens/complete_two.dart';
import 'package:cofee/screens/home_page.dart';
import 'package:cofee/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class Complete_Page extends StatefulWidget {
  const Complete_Page({super.key});

  @override
  State<Complete_Page> createState() => _Complete_PageState();
}

class _Complete_PageState extends State<Complete_Page> {
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
                Product(),
                SizedBox(height: 10.h),
                CoffePack(),
                Usd(),
                SizedBox(height: 12.h),
                Shop(MyImages.image_betts, 'Beet', '20'),
                SizedBox(height: 8.h),
                Shop(MyImages.image_donot, 'Donot', '10'),
                SizedBox(height: 8.h),
                Shop(MyImages.image_italia, 'Italia', '50'),
                SizedBox(height: 16.h),
                PlaceOrder(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget PlaceOrder() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => Complete_Two_Page()),
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
            'Place Order',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 18, color: Colors.brown),
          ),
        ),
      ),
    );
  }

  Widget Shop(
    String imgUrl,
    String productName,
    String price,
  ) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 10.w),
              Container(
                width: 77.w,
                height: 77.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFC4C4C4).withOpacity(0.48),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Image.asset(
                        imgUrl,
                        height: 50.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              Row(
                children: [
                  Text(
                    productName,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 120.w),
                  Text(
                    '${price}\$',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.circle_outlined,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget Product() {
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
          height: 255.h,
        ),
        Positioned(
          top: 40,
          left: 47,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color(0xFFFFFFFF).withOpacity(0.2),
            ),
            width: 294.w,
            height: 215.h,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 245).r,
                    child: Image.asset(
                      MyImages.image_back,
                      width: 50.w,
                    ),
                  ),
                ),
                Image.asset(
                  MyImages.image_capachino,
                  width: 160.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 235,
                  ).r,
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget CoffePack() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 118).r,
          child: Text(
            'Kisbi Coffee Pack',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(width: 20.w),
            const Icon(
              Icons.star_border,
              color: Colors.yellow,
              size: 20,
            ),
            SizedBox(width: 8.w),
            Text(
              '2.5',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget Usd() {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 60.w,
            ),
            Text(
              'USD 100',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 113.w,
            ),
            const Icon(
              Icons.add_circle_outline,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 7.w,
            ),
            Text(
              '03',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 7.w,
            ),
            const Icon(
              Icons.do_disturb_on_outlined,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Padding(
          padding: const EdgeInsets.only(left: 22).r,
          child: Text(
            'The beans you brew are actually the processed and roasted seeds from a fruit, which is coffee',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
