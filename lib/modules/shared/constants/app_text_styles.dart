import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  // Montserrat

  static final montserratRegular16 = montserrat(size: 16, weight: FontWeight.w400);

  static final montserratMedium16 = montserrat(size: 16, weight: FontWeight.w500);

  static final montserratBold16 = montserrat(size: 16, weight: FontWeight.w700);

  static final montserratMedium14 = montserrat(size: 14, weight: FontWeight.w500);

  static final montserratMedium12 = montserrat(size: 12, weight: FontWeight.w500);

  static final montserratRegular12 = montserrat(size: 12, weight: FontWeight.w400);

  static TextStyle montserrat({required double size, required FontWeight weight}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: size,
        color: AppColors.white,
        fontWeight: weight,
      ),
    );
  }
}
