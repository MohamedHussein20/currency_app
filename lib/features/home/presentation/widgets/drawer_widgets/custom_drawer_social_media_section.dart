import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawerSocialMediaSection extends StatelessWidget {
  const CustomDrawerSocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
                size: 24,
              ),
              FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.pinkAccent,
                size: 24.w,
              ),
              FaIcon(
                FontAwesomeIcons.whatsapp,
                color: Colors.green,
                size: 24.w,
              ),
              FaIcon(FontAwesomeIcons.tiktok, color: Colors.black, size: 24.w),
            ],
          ),
          SizedBox(height: 16.h), // space between the two rows
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(
                FontAwesomeIcons.telegram,
                color: Colors.blueAccent,
                size: 24.w,
              ),
              FaIcon(
                FontAwesomeIcons.xTwitter,
                color: Colors.black,
                size: 24.w,
              ),
              FaIcon(
                FontAwesomeIcons.snapchat,
                color: Colors.amber,
                size: 24.w,
              ),
              FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.red,
                size: 24.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
