import 'package:arvaaksesoris/models/category_model.dart';
import 'package:arvaaksesoris/providers/category_provider.dart';
import 'package:arvaaksesoris/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:arvaaksesoris/theme.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: secondaryColor,
              ),
              child: Text(
                category.name,
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                  color: primaryColor,
                  backgroundColor: secondaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
