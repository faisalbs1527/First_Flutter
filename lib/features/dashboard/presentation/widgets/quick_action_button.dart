import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class QuickActionButton extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback? onTap;

  const QuickActionButton({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: AppColors.primaryLightColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                icon,
                width: 56,
                height: 50
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(title, style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.primaryColor,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
