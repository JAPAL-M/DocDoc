import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/features/details/features/ui/widgets/tab_bar_widgets/reviews_customer_details_screen.dart';
import 'package:flutter/material.dart';

class ReviewsTabBarViewBody extends StatelessWidget {
  const ReviewsTabBarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const ReviewsCustomerDetailsScreen(),
        separatorBuilder: (context, index) => verticalSpacing(16),
        itemCount: 10);
  }
}
