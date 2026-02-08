import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/config/styles/styles.dart';
import 'package:docotor_appointment_app/config/styles/text.dart';
import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          Strings.aboutMe,
          style:Styles.largeTextSemiBold(AppColors.grey800),
        ),
         SizedBox(height: 8),
        RichText(
          text: TextSpan(
            
            children: [
               TextSpan(
                text:
                    Strings.biodata,style: Styles.fontNormal(AppColors.grey500)
              ),
              TextSpan(
                text: Strings.viewMore,
                style: Styles.fontNormal(AppColors.grey900).copyWith(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
