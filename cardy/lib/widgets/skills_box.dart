import 'package:cardy/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SkillBox extends StatelessWidget {
  const SkillBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.appPrimary,
      ),
      child: Text(
        text,
        style: theme.textTheme.displayMedium,
      ),
    );
  }
}
