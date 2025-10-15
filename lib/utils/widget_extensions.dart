import 'dart:math' as math;

import 'package:flutter/material.dart';

extension CustomBoxBorder on LinearGradient {
  static const LinearGradient customContainerGradient = LinearGradient(
    colors: [Colors.green, Colors.white, Colors.green],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    transform: GradientRotation(math.pi * 2.2),
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
