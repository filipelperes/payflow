import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import '../divider_vertical/divider_vertical_widget.dart';
import '../label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String labelPrimary;
  final VoidCallback onTapPrimary;
  final String labelSecondary;
  final VoidCallback onTapSecondary;
  final bool enablePrimaryColor;
  const SetLabelButtons({
    super.key,
    required this.labelPrimary,
    required this.onTapPrimary,
    required this.labelSecondary,
    required this.onTapSecondary,
    this.enablePrimaryColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 56,
      child: Row(
        children: [
          if (enablePrimaryColor) ...[
            LabelButton.primary(
              label: labelPrimary,
              onPressed: onTapPrimary,
            )
          ] else ...[
            LabelButton.heading(
              label: labelPrimary,
              onPressed: onTapPrimary,
            )
          ],
          const DividerVerticalWidget(
            height: 56,
          ),
          LabelButton.heading(
            label: labelSecondary,
            onPressed: onTapSecondary,
          ),
        ],
      ),
    );
  }
}
