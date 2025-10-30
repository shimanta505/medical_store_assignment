import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

extension CustomBoxBorder on LinearGradient {
  static const LinearGradient customContainerGradient = LinearGradient(
    colors: [Colors.green, Colors.white, Colors.green],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    transform: GradientRotation(math.pi * 2.2),
  );
  static const GradientBoxBorder gradientBorder = GradientBoxBorder(
    width: 3,
    gradient: customContainerGradient,
  );
}

String _selectedType = "";

extension UiExtention on String {
  set _setSelectedType(String value) {
    _selectedType = value;
  }

  Widget get prototypeWidget => InkWell(
    onTap: () {
      _setSelectedType = this;
    },
    child: _selectedType != this
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 5.r, horizontal: 5.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(color: Colors.black26, width: 1),
            ),
            child: Text(this, style: Get.context?.bodyMedium),
          )
        : Container(
            padding: EdgeInsets.symmetric(vertical: 5.r, horizontal: 5.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(color: Colors.green, width: 1),
            ),
            child: Text(this, style: Get.context?.bodyMedium),
          ),
  );
}

extension ContextExtension on BuildContext {
  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;
  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
}
