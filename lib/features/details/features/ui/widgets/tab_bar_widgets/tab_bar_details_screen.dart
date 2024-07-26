import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class TabBarDetailsScreen extends StatelessWidget {
  const TabBarDetailsScreen({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      labelColor: ColorsManager.mainBlue,
      labelStyle: TextStyles.font14BlueSemiBold,
      unselectedLabelColor: Colors.grey,
      indicatorColor: ColorsManager.mainBlue,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: const [
        Tab(text: 'About'),
        Tab(text: 'Location'),
        Tab(text: 'Reviews'),
      ],
    );
  }
}
