import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/features/home/data/models/home_models.dart';
import 'package:docdoc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:docdoc_app/features/home/ui/widgets/speciality_list/categories_doctor_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesDoctorListView extends StatefulWidget {
  const CategoriesDoctorListView({
    super.key,
    required this.homeModels,
  });
  final HomeModels homeModels;
  @override
  State<CategoriesDoctorListView> createState() =>
      _CategoriesDoctorListViewState();
}

class _CategoriesDoctorListViewState extends State<CategoriesDoctorListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedSpecializationIndex = index;
                });
                context
                    .read<HomeCubit>()
                    .getListDoctors(id: widget.homeModels.data[index].id!);
              },
              child: CategoriesDoctorItems(
                specialization: widget.homeModels.data[index],
                selectedIndex: selectedSpecializationIndex,
                itemIndex: index,
              ),
            ),
        separatorBuilder: (context, index) => horizantialSpacing(24),
        itemCount: widget.homeModels.data.length);
  }
}
