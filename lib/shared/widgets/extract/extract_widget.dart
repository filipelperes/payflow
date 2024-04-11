import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';
import '../boleto_list/boleto_list_controller.dart';
import '../boleto_list/boleto_list_widget.dart';

class ExtractWidget extends StatefulWidget {
  final String title;
  const ExtractWidget({super.key, required this.title});

  @override
  State<ExtractWidget> createState() => _ExtractWidgetState();
}

class _ExtractWidgetState extends State<ExtractWidget> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Row(
            children: [
              Text(
                widget.title,
                style: TextStyles.titleBoldHeading,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 24,
          ),
          child: Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BoletoListWidget(
            controller: controller,
          ),
        ),
      ],
    );
  }
}
