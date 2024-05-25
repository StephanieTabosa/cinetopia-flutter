import 'package:cinetopia_flutter/modules/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../shared/constants/app_assets.dart';
import '../../../../shared/constants/app_colors.dart';
import '../../../../shared/utils/auto_detect_picture_extension.dart';
import '../../../movies_strings.dart';
import '../atoms/button_atom.dart';

class MoviesHomeTemplate extends StatelessWidget {
  const MoviesHomeTemplate({
    super.key,
    required this.onContinueButtonTap,
  });

  final VoidCallback onContinueButtonTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoDetectPictureExtension(
              picturePath: AppAssets.logo,
            ),
            const SizedBox(height: 32),
            AutoDetectPictureExtension(
              picturePath: AppAssets.children,
            ),
            const SizedBox(height: 32),
            Text(
              MoviesStrings.home.description,
              style: AppTextStyles.montserratMedium16
                  .copyWith(color: AppColors.white.withOpacity(0.87)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ButtonAtom(
          text: MoviesStrings.home.buttonText,
          onPressed: onContinueButtonTap,
        ),
      ),
    );
  }
}
