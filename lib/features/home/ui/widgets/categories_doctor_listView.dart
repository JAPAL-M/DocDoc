import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/features/home/ui/widgets/categories_doctor_items.dart';
import 'package:flutter/material.dart';

class CategoriesDoctorListView extends StatelessWidget {
  const CategoriesDoctorListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CategoriesDoctorItems(),
        separatorBuilder: (context, index) => horizantialSpacing(24),
        itemCount: 10);
  }
}
