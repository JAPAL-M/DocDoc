import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/features/home/ui/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Iconsax.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Iconsax.calendar), label: ''),
          BottomNavigationBarItem(icon: Icon(Iconsax.user), label: ''),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: ColorsManager.mainBlue,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorsManager.mainBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        child: const Icon(Iconsax.search_normal),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: const HomeViewBody(),
      )),
    );
  }
}
