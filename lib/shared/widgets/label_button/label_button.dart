import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final TextStyle style;
  const LabelButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.style,
  });

  factory LabelButton.heading(
          {required String label, required VoidCallback onPressed}) =>
      LabelButton(
        label: label,
        onPressed: onPressed,
        style: TextStyles.buttonHeading,
      );

  factory LabelButton.primary(
          {required String label, required VoidCallback onPressed}) =>
      LabelButton(
        label: label,
        onPressed: onPressed,
        style: TextStyles.buttonPrimary,
      );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 56,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            label,
            style: style,
          ),
        ),
      ),
    );
  }
}
