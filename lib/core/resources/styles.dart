import 'package:currency_app/core/helper/font_weight_helper.dart';
import 'package:currency_app/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextStyles {
  TextStyles._();

  static TextStyle style18Bold({Color? color}) {
    return TextStyle(
      fontSize: 18.sp,
      color: color ?? AppColors.text,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle style24Bold({Color? color}) {
    return TextStyle(
      fontSize: 24.sp,
      color: color ?? AppColors.text,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle style14Bold({Color? color}) {
    return TextStyle(
      fontSize: 14.sp,
      color: color ?? AppColors.text,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle style13Bold({Color? color}) {
    return TextStyle(
      fontSize: 13.sp,
      color: color ?? AppColors.text,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle style14SemiBold({Color? color}) {
    return TextStyle(
      fontSize: 14.sp,
      color: color ?? AppColors.text,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle style13SemiBold({Color? color}) {
    return TextStyle(
      fontSize: 13.sp,
      color: color ?? AppColors.text,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle style13Medium({Color? color}) {
    return TextStyle(
      fontSize: 13.sp,
      color: color ?? AppColors.text,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle style16SemiBold({Color? color}) {
    return TextStyle(
      fontSize: 16.sp,
      color: color ?? AppColors.text,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle style16Bold({Color? color}) {
    return TextStyle(
      fontSize: 16.sp,
      color: color ?? AppColors.text,
      fontWeight: FontWeightHelper.bold,
    );
  }
}
