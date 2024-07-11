import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:flutter/material.dart';

class CategoriesDoctorItems extends StatelessWidget {
  final HomeData? specialization;
  final int itemIndex;
  final int selectedIndex;
  const CategoriesDoctorItems({
    super.key,
    this.specialization,
    required this.itemIndex,
    required this.selectedIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        itemIndex == selectedIndex
            ? Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsManager.darkBlue,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.semiLighterGray,
                    child: Image.asset('assets/images/doc_cat.png')),
              )
            : CircleAvatar(
                radius: 28,
                backgroundColor: ColorsManager.semiLighterGray,
                child: Image.asset('assets/images/doc_cat.png')),
        verticalSpacing(10),
        Text(
          specialization!.name.toString(),
          style: TextStyles.font12DarkBlueRegular,
        )
      ],
    );
  }
}
